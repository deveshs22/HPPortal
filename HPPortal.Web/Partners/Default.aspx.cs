using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using HPPortal.Data.Models;

namespace HPPortal.Web.Partners
{
    public partial class Default : System.Web.UI.Page
    {
		protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Partner entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<HPPortal.Data.Models.Partner> GetData()
        {
            if (SessionData.Current.UserId == 0)
                Response.Redirect("/Logon.aspx");

            var userId = SessionData.Current.UserId;
            var userData = _db.Users.Include(u => u.Cities.Select(c => c.Partners)).First(u => u.UserId == userId);
            var partners = userData.Cities.SelectMany(c => c.Partners);


            
            var partnersToReturn = _db.Partners.Include(m => m.City).Include(m => m.PartnerCategory);
            var partnerData = new List<Partner>();

            foreach (var par in partnersToReturn)
            {
                if (partners.Any(p => p.PartnerId == par.PartnerId))
                {
                    partnerData.Add(par);
                }
            }
            return partnerData.AsQueryable();
        }
    }
}

