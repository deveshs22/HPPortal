using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using HPPortal.Data.Models;

namespace HPPortal.Web.Users
{
    public partial class Insert : System.Web.UI.Page
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
                }
                count++;
            }
        }

        // This is the Insert method to insert the entered User item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new HPPortal.Data.Models.User();

                TryUpdateModel(item);
                item.Active = true;

                SaveCiyData(item);

                if (ModelState.IsValid)
                {
                    // Save changes
                    _db.Users.Add(item);
                    _db.SaveChanges();

                    Response.Redirect("Default");
                }
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
                            var id = Convert.ToInt32(child.Value);
                            var city = _db.Cities.FirstOrDefault(c => c.CityId == id);
                            
                            if (city != null)
                                cities.Add(city);
                        }
                    }
                }
            }
            item.Cities = cities;
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Default");
            }
        }
    }
}
