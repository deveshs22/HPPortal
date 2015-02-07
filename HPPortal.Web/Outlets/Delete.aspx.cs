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
    public partial class Delete : System.Web.UI.Page
    {
		protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Outlet item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int OutletId)
        {
            using (_db)
            {
                var item = _db.Outlets.Find(OutletId);

                if (item != null)
                {
                    _db.Outlets.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Outlet item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public HPPortal.Data.Models.Outlet GetItem([FriendlyUrlSegmentsAttribute(0)]int? OutletId)
        {
            if (OutletId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Outlets.Where(m => m.OutletId == OutletId).Include(m => m.City).Include(m => m.OutletCategory).FirstOrDefault();
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

