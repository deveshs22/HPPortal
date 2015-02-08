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
namespace HPPortal.Web.Users
{
    public partial class Edit : System.Web.UI.Page
    {
        protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var zones = _db.Zones.Include(z => z.Cities).ToList();
                FillTreeView(zones);
            }
        }

        private void FillTreeView(List<Zone> zones)
        {
            var count = 0;
            var userId = Convert.ToInt32(Request.Path.Split('/').Last());
            var item1 = _db.Users.Find(userId);
            var item = _db.Users.Include(c => c.Cities).FirstOrDefault(u => u.UserId == userId);
           
            if (item == null)
            {
                // The item wasn't found
                ModelState.AddModelError("", String.Format("Item with id {0} was not found", userId));
                return;
            }

            
            foreach (var zone in zones)
            {
                TreeNode node = new TreeNode
                {
                    Value = zone.ZoneId.ToString(),
                    Text = zone.Description
                };

                treeViewCity.Nodes.Add(node);

                foreach (var city in zone.Cities)
                {
                    TreeNode child = new TreeNode
                    {
                        Value = city.CityId.ToString(),
                        Text = city.Description
                    };
                    treeViewCity.Nodes[count].ChildNodes.Add(child);
                    if (item.Cities.Any(c => c.CityId == city.CityId)) 
                    {
                        child.Checked = true;
                    }

                }
                count++;
            }
        }

        private void SaveCiyData(Data.Models.User item)
        {
            List<City> cities = new List<City>();
            foreach (TreeNode node in treeViewCity.Nodes)
            {
                if (node.ChildNodes.Count > 0)
                {
                    foreach (TreeNode child in node.ChildNodes)
                    {
                        if (child.Checked)
                        {
                            City city = new City();
                            city.CityId = Convert.ToInt32(child.Value);
                            cities.Add(city);
                        }
                    }
                }
            }
            item.Cities = cities;
        }

        // This is the Update methd to update the selected User item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int UserId)
        {
            using (_db)
            {
                var item = _db.Users.Find(UserId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", UserId));
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

        // This is the Select method to selects a single User item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public HPPortal.Data.Models.User GetItem([FriendlyUrlSegmentsAttribute(0)]int? UserId)
        {
            if (UserId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.Users.Find(UserId);
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
