using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPPortal.Data.Models;
using HPPortal.Web.Models;
using System.Data.Entity;
using System.Web.UI.DataVisualization.Charting;

namespace HPPortal.Web
{
    public partial class _Default : Page
    {
        protected HPSiteDBContext _db = new HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.lblQuarter.Text = Utility.QuarterHelper.GetCurrentQuarter(DateTime.Now).QuarterYear + " Performance";
                BindChart("zone","0");
 
                BindActivityLog();
            }
           
        }

        public void BindActivityLog()
        {
            var userId = SessionData.Current.UserId;
            var userData = _db.Users.Include(u => u.Cities.Select(c => c.Partners)).First(u => u.UserId == userId);
            var partnerCategoriesId = userData.PartnerCategorys.Select(p => p.PartnerCategoryId).ToList();

            var partners = userData.Cities.SelectMany(c => c.Partners).Where(p => partnerCategoriesId.Contains(p.PartnerCategoryId)).ToList();
            var partnerIds = partners.Select(p=>p.PartnerId);
            var list = _db.ActivityLogs.Where(a => partnerIds.Contains(a.PartnerId)).OrderByDescending(a => a.LogId).Take(200);
            var activityList = list.GroupBy(a => a.PartnerId).Select(a => a.FirstOrDefault()).Distinct().ToList();

            listActivityLog.Items.Clear();
            listActivityLog.DataSource = activityList.OrderByDescending(a=>a.LogId);
            listActivityLog.DataBind();

        }

        public IEnumerable<PerformanceViewModel> GetCityData(int zoneid)
        {
            var currentQtr = Utility.QuarterHelper.GetCurrentQuarter(DateTime.Now);
            
            var userId = SessionData.Current.UserId;

            if (userId == 0)
                Response.Redirect("/Logon");
            
            var userData = _db.Users
                .Where(u => u.UserId == userId)
                .Include(u => u.Cities)                    
                .FirstOrDefault();

            PerformanceViewModel perfVM;
            var perfVMList = new List<PerformanceViewModel>();
            var partnerCategoriesId = userData.PartnerCategorys.Select(p=>p.PartnerCategoryId).ToList();
            foreach (var city in userData.Cities)
            {
                if (city.ZoneId == zoneid || zoneid == 0)
                {
                    var partnerData = _db.Partners
                        .Include(p => p.Targets.Select(t => t.Product))
                        .Include(p => p.Sales.Select(t => t.Product))
                        .Where(p => p.CityId == city.CityId && partnerCategoriesId.Contains(p.PartnerCategoryId)
                           && (p.Targets.Any(t => t.QuarterYear == currentQtr.QuarterYear)
                                    || p.Sales.Any(t => t.QuarterYear == currentQtr.QuarterYear)));

                    if (partnerData != null && partnerData.Any())
                    {
                        perfVM = new PerformanceViewModel
                        {
                            CityDescription = city.Description,
                            CityId = city.CityId,
                            Category = "City"
                        };

                        Category = perfVM.Category;

                        var targetAmount = partnerData.SelectMany(p => p.Targets.Where(s => s.Product.Type == UtilityBL.ProductType.Amount.ToString())).ToList();
                        if (targetAmount.Any())
                            perfVM.TargetAmount = targetAmount.Sum(s => s.M1 + s.M2 + s.M3);

                        var saleAmount = partnerData.SelectMany(p => p.Sales.Where(s => s.Product.Type == UtilityBL.ProductType.Amount.ToString()));
                        if (saleAmount.Any())
                            perfVM.SalesAmount = saleAmount.Sum(s => s.M1 + s.M2 + s.M3);

                        var saleUnit = partnerData.SelectMany(p => p.Sales.Where(s => s.Product.Type == UtilityBL.ProductType.Unit.ToString()));
                        if (saleUnit.Any())
                            perfVM.SalesUnit = saleUnit.Sum(s => s.M1 + s.M2 + s.M3);


                        var taregetUnit = partnerData.SelectMany(p => p.Targets.Where(s => s.Product.Type == UtilityBL.ProductType.Unit.ToString()));
                        if (taregetUnit.Any())
                            perfVM.TargetUnit = taregetUnit.Sum(s => s.M1 + s.M2 + s.M3);

                        perfVMList.Add(perfVM);
                    }
                }
            }

            return perfVMList;
        }

        public IEnumerable<PerformanceViewModel> GetZoneData()
        {
            var currentQtr = Utility.QuarterHelper.GetCurrentQuarter(DateTime.Now);

            var userId = SessionData.Current.UserId;

            if (userId == 0)
                Response.Redirect("/Logon");

            var userData = _db.Users
                .Where(u => u.UserId == userId)
                .Include(u => u.Cities)
                .FirstOrDefault();

            PerformanceViewModel perfVM;
            var perfVMList = new List<PerformanceViewModel>();
            var partnerCategoriesId = userData.PartnerCategorys.Select(p => p.PartnerCategoryId).ToList();
            var cityId = userData.Cities.Select(p => p.CityId).ToList();
            var zones = userData.Cities.Select(c => c.Zone).Distinct().ToList();

            foreach (var zone in zones)
            {
                
                var zoneCity = zone.Cities.Select(c=>c.CityId).Where(s=>cityId.Contains(s));

                         var partnerData = _db.Partners
                        .Include(p => p.Targets.Select(t => t.Product))
                        .Include(p => p.Sales.Select(t => t.Product))
                        .Where(p => zoneCity.Contains(p.CityId) && partnerCategoriesId.Contains(p.PartnerCategoryId)
                           && (p.Targets.Any(t => t.QuarterYear == currentQtr.QuarterYear)
                                    || p.Sales.Any(t => t.QuarterYear == currentQtr.QuarterYear)));

                    if (partnerData != null && partnerData.Any())
                    {
                        perfVM = new PerformanceViewModel
                        {
                            CityDescription = zone.Description,
                            CityId = zone.ZoneId,
                            Category = "Zone"
                        };

                        Category = perfVM.Category;
                        
                        var targetAmount = partnerData.SelectMany(p => p.Targets.Where(s => s.Product.Type == UtilityBL.ProductType.Amount.ToString())).ToList();
                        if (targetAmount.Any())
                            perfVM.TargetAmount = targetAmount.Sum(s => s.M1 + s.M2 + s.M3);

                        var saleAmount = partnerData.SelectMany(p => p.Sales.Where(s => s.Product.Type == UtilityBL.ProductType.Amount.ToString()));
                        if (saleAmount.Any())
                            perfVM.SalesAmount = saleAmount.Sum(s => s.M1 + s.M2 + s.M3);

                        var saleUnit = partnerData.SelectMany(p => p.Sales.Where(s => s.Product.Type == UtilityBL.ProductType.Unit.ToString()));
                        if (saleUnit.Any())
                            perfVM.SalesUnit = saleUnit.Sum(s => s.M1 + s.M2 + s.M3);


                        var taregetUnit = partnerData.SelectMany(p => p.Targets.Where(s => s.Product.Type == UtilityBL.ProductType.Unit.ToString()));
                        if (taregetUnit.Any())
                            perfVM.TargetUnit = taregetUnit.Sum(s => s.M1 + s.M2 + s.M3);

                        perfVMList.Add(perfVM);
                    }
            }
            
            return perfVMList;
        }

        public void BindChart(string type, string id)
        {
           var zid = Convert.ToInt32(id);
            IEnumerable<PerformanceViewModel> perfVMList;

            if (SessionData.Current.RoleId == 6)
                perfVMList = GetCityData(0);
            else if(type=="zone")
                perfVMList = GetZoneData();
            else
                perfVMList = GetCityData(zid);

           
            //this.perfChart.

            ListView1.DataSource = perfVMList;
           
            ListView1.DataBind();

            var lnk = (LinkButton)ListView1.FindControl("lnkCity");
            lnk.Text = Category;

            this.perfChart.Series.Clear();

            var tgtSeries = new Series();
            var salesSeries = new Series();

            tgtSeries.Label = "Target";
            salesSeries.Label = "Sales";

            foreach (var perfVM in perfVMList)
            {
                tgtSeries.Points.AddXY(perfVM.CityDescription, perfVM.TargetAmount);
                salesSeries.Points.AddXY(perfVM.CityDescription, perfVM.SalesAmount);

            }
            
            this.perfChart.Series.Add(tgtSeries);
            this.perfChart.Series.Add(salesSeries);

            this.perfChart.Series[0].ChartType = SeriesChartType.Column;
            this.perfChart.Series[1].ChartType = SeriesChartType.Column;
                  
                    
        }

        protected void btnNavigate_Click(object sender, EventArgs e)
        {
            if (Category != "City")
            {
                LinkButton btn = (LinkButton)sender;
                var path = btn.CommandArgument;
                BindChart("city", path);
            }
           
        }

        private string Category
        {
            get
            {
                return ViewState["Category"] == null ? "" : ViewState["Category"].ToString();
            }
            set
            {
                ViewState["Category"] = value;
            }
        }

    }
}