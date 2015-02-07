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
namespace HPPortal.Web.Outlets
{
    public partial class Edit : System.Web.UI.Page
    {
		protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected Outlet item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  OutletId)
        {
            using (_db)
            {
                var item = _db.Outlets.Find(OutletId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", OutletId));
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

        // This is the Select method to selects a single Outlet item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public HPPortal.Data.Models.Outlet GetItem([FriendlyUrlSegmentsAttribute(0)]int? OutletId)
        {
            if (OutletId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.Outlets.Find(OutletId);
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
