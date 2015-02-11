using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using HPPortal.Data.Models;

namespace HPPortal.Web.StrategicPlans
{
    public partial class Default : System.Web.UI.Page
    {
		protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of StrategicPlan entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<HPPortal.Data.Models.StrategicPlan> GetData()
        {
            return _db.StrategicPlans;
        }
    }
}

