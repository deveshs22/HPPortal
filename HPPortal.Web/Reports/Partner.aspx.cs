using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using HPPortal.Data.Models;

namespace HPPortal.Web.Reports
{
    public partial class PartnerReport : System.Web.UI.Page
    {
		protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (SessionData.Current.UserId == 0)
                    Response.Redirect("/Logon");
                
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
           

         // Model binding method to get List of Partner entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<HPPortal.Data.Models.Partner> GetData()
        {
            if (SessionData.Current.UserId == 0)
                Response.Redirect("/Logon.aspx");

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
           
            return partnerData.AsQueryable();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            ListView1.DataBind();
        }

         
    }
}

