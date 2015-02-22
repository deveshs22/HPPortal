using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPPortal.Data.Models;
using System.Data.Entity;

namespace HPPortal.Web
{
    public partial class JBPlan : Page
    {
        HPSiteDBContext _db = new HPSiteDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public IEnumerable<Partner> GetPartners()
        {
            if (SessionData.Current.UserId == 0)
                Response.Redirect("/Logon.aspx");

            var userId = SessionData.Current.UserId;
            var userData = _db.Users.Include(u=>u.Cities.Select(c=>c.Partners)).First(u => u.UserId == userId);
            return userData.Cities.SelectMany(c => c.Partners).ToList();
        }

        public IEnumerable<Utility.Quarter> GetQuarters()
        {
            return Utility.QuarterHelper.GetNextnCurrentQuarter(DateTime.Now);
        }  

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            SessionData.Current.PartnerId = Convert.ToInt32(ddlPartner.SelectedValue);
            SessionData.Current.QuarterYear = ddlQuarter.SelectedItem.Text;
            Response.Redirect("/Partners/Details");
        }
    }
}