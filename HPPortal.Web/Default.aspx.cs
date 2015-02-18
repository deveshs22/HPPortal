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
                BindChart();
            }
        }

     
        public IEnumerable<PerformanceViewModel> GetData()
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

            foreach (var city in userData.Cities)
            {
                var partnerData = _db.Partners.Include(p => p.Targets.Select(t => t.Product))
                    .Include(p => p.Sales.Select(t => t.Product))
                    .Where(p => p.CityId == city.CityId && (p.Targets.Any(t => t.QuarterYear == currentQtr.QuarterYear)
                    || p.Sales.Any(t => t.QuarterYear == currentQtr.QuarterYear))) ;


                if (partnerData != null && partnerData.Any())
                {
                    perfVM = new PerformanceViewModel
                    {
                        CityDescription = city.Description
                    };

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

        public void BindChart()
        {
            var perfVMList = GetData();
            //this.perfChart.

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
        
    }
}