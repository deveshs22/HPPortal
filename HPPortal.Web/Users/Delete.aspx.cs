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

namespace HPPortal.Web.Users
{
    public partial class Delete : System.Web.UI.Page
    {
        protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                lblDeleteFailed.Style.Add("display", "none");
        }

        // This is the Delete methd to delete the selected User item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int UserId)
        {
            if (!_db.Users.Any(u => u.ReportingId == UserId))
            {
                using (_db)
                {
                    var item = _db.Users.Include(u => u.Cities).FirstOrDefault(u => u.UserId == UserId);
                    if (item != null)
                    {
                        var cities = item.Cities.ToList();
                        foreach (var city in cities)
                            item.Cities.Remove(city);

                        item.Active = false;
                        _db.Entry(item).State = EntityState.Modified;
                        _db.SaveChanges();
                    }
                }
                Response.Redirect("../Default");
            }
            else
            {
                lblDeleteFailed.Style.Add("display", "block");
            }
        }

        // This is the Select methd to selects a single User item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public HPPortal.Data.Models.User GetItem([FriendlyUrlSegmentsAttribute(0)]int? UserId)
        {
            if (UserId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.Users.Where(m => m.UserId == UserId).Include(m => m.Role).FirstOrDefault();
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

