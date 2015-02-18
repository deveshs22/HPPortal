using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPPortal.Data.Models;

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
            return _db.Partners;
        }

        public IEnumerable<Utility.Quarter> GetQuarters()
        {
            return Utility.QuarterHelper.GetNextnCurrentQuarter(DateTime.Now);
        }  

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect(String.Format("/StrategicPlans/Default.aspx?Partner={0}&QuarterYear={1}", ddlPartner.SelectedValue, ddlQuarter.SelectedItem.Text));
        }
    }
}