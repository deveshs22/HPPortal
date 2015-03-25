using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using HPPortal.Data.Models;
using HPPortal.Web.Models;

namespace HPPortal.Web.Reports
{
    public partial class JBPlanStatus : System.Web.UI.Page
    {
		protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (SessionData.Current.UserId == 0)
                    Response.Redirect("/Logon");

                ddlQuarter.SelectedIndex = 1;
                ListView1.Sort("PartnerName", SortDirection.Ascending);
                
            }
        }

        public IEnumerable<PartnerCategory> GetPartnerCategory()
        {
            var userId = SessionData.Current.UserId;
            var userData = _db.Users.Include(u => u.Cities.Select(c => c.Partners)).First(u => u.UserId == userId);
            var partnerCategories = userData.PartnerCategorys.OrderBy(z => z.Description).ToList();
            return partnerCategories.AsQueryable();
        }

        public IEnumerable<Zone> GetZone()
        {
            var userId = SessionData.Current.UserId;
            var userCities = _db.Users.Where(u => u.UserId == userId).SelectMany(u => u.Cities);
            var zones = userCities.Select(c => c.Zone).Distinct().OrderBy(z=>z.Description).ToList();
            return zones.AsQueryable();
        }

        public IEnumerable<Utility.Quarter> GetQuarter()
        {
            var currentqtr = Utility.QuarterHelper.GetCurrentQuarter(DateTime.Now);
            var qtr = Utility.QuarterHelper.GetNextnCurrentQuarter(DateTime.Now).ToList();
            qtr.Insert(0, Utility.QuarterHelper.GetPrevQuarter(currentqtr.QuarterYear));
            return qtr.AsQueryable();
        }
           

         // Model binding method to get List of Partner entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<PartnerPlanViewModel> GetData()
        {
            if (SessionData.Current.UserId == 0)
                Response.Redirect("/Logon.aspx");

            PartnerPlanViewModel partnerPlanVM;
            var partnerPlanVMList = new List<PartnerPlanViewModel>();

            var userId = SessionData.Current.UserId;
            var zone =  Convert.ToInt32(ddlZone.SelectedValue);
            var category = Convert.ToInt32(ddlPartner.SelectedValue);

            var userData = _db.Users.Include(u => u.Cities.Select(c => c.Partners)).First(u => u.UserId == userId);
            var partnerCategoriesId = userData.PartnerCategorys.Select(p => p.PartnerCategoryId).ToList();

            if (category > 0)
            {
                partnerCategoriesId.Clear();
                partnerCategoriesId.Add(category);
            }

            var partners = new List<Partner>();
            if (zone > 0)
            {
               var userPartners = userData.Cities.SelectMany(c => c.Partners).Where(p => partnerCategoriesId.Contains(p.PartnerCategoryId)).ToList();
               partners = userPartners.Where(p => p.City.ZoneId == zone).ToList();
            }
            else
            {
                partners = userData.Cities.SelectMany(c => c.Partners).Where(p => partnerCategoriesId.Contains(p.PartnerCategoryId)).ToList();
            }
            
            var partnersToReturn = _db.Partners.Include(m => m.City).Include(m => m.PartnerCategory);
            var partnerData = new List<Partner>();

            foreach (var par in partnersToReturn.OrderBy(p=>p.PartnerName))
            {
                if (partners.Any(p => p.PartnerId == par.PartnerId))
                {
                    partnerData.Add(par);
                }
            }
            
            var quarter = ddlQuarter.SelectedItem.Text;

            foreach (var item in partnerData)
            {
                partnerPlanVM = new PartnerPlanViewModel();
                partnerPlanVM.PartnerId = item.PartnerId;
                partnerPlanVM.PartnerName = item.PartnerName;
                partnerPlanVM.PartnerCategoryId = item.PartnerCategoryId;
                partnerPlanVM.PartnerCategory = item.PartnerCategory;
                partnerPlanVM.Address = item.Address;
                partnerPlanVM.AssociatedUserId = item.AssociatedUserId;
                partnerPlanVM.City = item.City;
                partnerPlanVM.CityId = item.CityId;
                partnerPlanVM.ContactPerson = item.ContactPerson;
                partnerPlanVM.Email = item.Email;
                partnerPlanVM.Mobile = item.Mobile;
                partnerPlanVM.Phone = item.Phone;
                partnerPlanVM.User = item.User;
                partnerPlanVM.Quarter = quarter;


                partnerPlanVM.ActionReqd = _db.ActionForTargetedGoals.Any(p => p.PartnerId == item.PartnerId && p.QuarterYear == quarter);
                partnerPlanVM.CompetitiveLandscape = _db.CompetitorLandscapes.Any(p => p.PartnerId == item.PartnerId && p.QuarterYear == quarter);
                partnerPlanVM.OpenHouse = _db.OpenHouses.Any(p => p.PartnerId == item.PartnerId && p.Quarter == quarter);
                partnerPlanVM.OverviewPlan = _db.OverviewPlans.Any(p => p.PartnerId == item.PartnerId && p.Quarter == quarter);
                partnerPlanVM.Sale = _db.Sales.Any(p => p.PartnerId == item.PartnerId && p.QuarterYear == quarter);
                partnerPlanVM.StrategicPlan = _db.StrategicPlans.Any(p => p.PartnerId == item.PartnerId && p.QuarterYear == quarter);
                partnerPlanVM.Target = _db.Targets.Any(p => p.PartnerId == item.PartnerId && p.QuarterYear == quarter);
                partnerPlanVM.TargetedGoal = _db.TargetedGoals.Any(p => p.PartnerId == item.PartnerId && p.QuarterYear == quarter);

                partnerPlanVMList.Add(partnerPlanVM);
            }

            return partnerPlanVMList.AsQueryable();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            ListView1.DataBind();
        }

         
    }
}

