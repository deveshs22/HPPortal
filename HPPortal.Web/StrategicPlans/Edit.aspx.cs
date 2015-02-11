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
namespace HPPortal.Web.StrategicPlans
{
    public partial class Edit : System.Web.UI.Page
    {
		protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected StrategicPlan item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  StrategicPlanId)
        {
            using (_db)
            {
                var item = _db.StrategicPlans.Find(StrategicPlanId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", StrategicPlanId));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single StrategicPlan item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public HPPortal.Data.Models.StrategicPlan GetItem([FriendlyUrlSegmentsAttribute(0)]int? StrategicPlanId)
        {
            if (StrategicPlanId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.StrategicPlans.Find(StrategicPlanId);
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
