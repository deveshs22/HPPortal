using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using HPPortal.Data.Models;

namespace HPPortal.Web.OverviewPlans
{
    public partial class Delete : System.Web.UI.Page
    {
		protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected OverviewPlan item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int OverviewPlanId)
        {
            using (_db)
            {
                var item = _db.OverviewPlans.Find(OverviewPlanId);

                if (item != null)
                {
                    _db.OverviewPlans.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single OverviewPlan item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public HPPortal.Data.Models.OverviewPlan GetItem([FriendlyUrlSegmentsAttribute(0)]int? OverviewPlanId)
        {
            if (OverviewPlanId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.OverviewPlans.Where(m => m.OverviewPlanId == OverviewPlanId).FirstOrDefault();
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}

