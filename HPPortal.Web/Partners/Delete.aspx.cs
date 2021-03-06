﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using HPPortal.Data.Models;

namespace HPPortal.Web.Partners
{
    public partial class Delete : System.Web.UI.Page
    {
		protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Partner item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int PartnerId)
        {
            using (_db)
            {
                var item = _db.Partners.Find(PartnerId);

                if (item != null)
                {
                    _db.Partners.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Partner item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public HPPortal.Data.Models.Partner GetItem([FriendlyUrlSegmentsAttribute(0)]int? PartnerId)
        {
            if (PartnerId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Partners.Where(m => m.PartnerId == PartnerId).Include(m => m.City).Include(m => m.PartnerCategory).FirstOrDefault();
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

