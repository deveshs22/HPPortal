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
    public partial class AddUser : System.Web.UI.Page
    {
        protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int userId;
                IsNew = true;
                if (int.TryParse(Request.Path.Split('/').Last(), out userId))
                {
                    IsNew = false;
                    var item = _db.Users.Find(userId);
                    User = item;
                    FillData();
                }

                FillRoles();
                FillReportingManagers();
            }
        }

        private void FillData()
        {
            txtEmail.Text = User.EmailId;
            txtName.Text = User.Name;
            txtPassword.Text = User.Pwd;
            txtPhone.Text = User.Mobile;
        }

        protected void btnInsertClick(object sender, EventArgs e)
        {
            using (_db)
            {
                var item = new HPPortal.Data.Models.User();

                if (IsNew)
                {
                    
                   item = CommitToItem(item);

                    if (ModelState.IsValid)
                    {
                        _db.Users.Add(item);
                        _db.SaveChanges();
                        Response.Redirect("Default");
                    }
                }
                else
                {
                    item = CommitToItem(User);

                    if (ModelState.IsValid)
                    {
                        _db.Entry(item).State = EntityState.Modified;

                        _db.SaveChanges();
                        Response.Redirect("../Default");
                    }
                }
            }
        }

        private User CommitToItem(Data.Models.User item)
        {
            var user = _db.Users.FirstOrDefault(u => u.UserId == item.UserId);
            if (user != null)
                item = user;
            item.EmailId = txtEmail.Text.Trim();
            item.Name = txtName.Text.Trim();
            item.Pwd = txtPassword.Text.Trim();
            item.RoleId = Convert.ToInt32(ddlRoles.SelectedValue);
            item.Role = _db.Roles.Find(Convert.ToInt32(ddlRoles.SelectedValue));
            item.ReportingId = Convert.ToInt32(ddlReporting.SelectedValue);
            item.User2 = _db.Users.Find(Convert.ToInt32(ddlReporting.SelectedValue));
            item.Mobile = txtPhone.Text.Trim();
            item.Active = true;

            item.Cities.Clear();
            
            var cityList = GetSelectedCities();
            foreach (var city in cityList)
                item.Cities.Add(city);

            return item;
        }

        protected void btnCancelClick(object sender, EventArgs e)
        {
            if (IsNew)
                Response.Redirect("Default");
            else
                Response.Redirect("../Default");
        }

        private void FillRoles()
        {
            var roles = _db.Roles.ToList();
            ddlRoles.DataSource = roles;
            ddlRoles.DataTextField = "Description";
            ddlRoles.DataValueField = "RoleId";
            ddlRoles.DataBind();
            if (!IsNew)
                ddlRoles.SelectedValue = User.RoleId.ToString();

        }

        private void FillReportingManagers()
        {
            var cities = GetSelectedCities();

            var roles = _db.Users.ToList();
            if (!IsNew)
            {
                var role = roles.FirstOrDefault(r => r.UserId == User.UserId);
                roles.Remove(role);
            }

            ddlReporting.DataSource = roles;
            ddlReporting.DataTextField = "Name";
            ddlReporting.DataValueField = "UserId";
            ddlReporting.DataBind();
            var reportingId = "0";
            if (!IsNew)
            {
                ddlReporting.SelectedValue = User.ReportingId.ToString();
                reportingId = User.ReportingId.ToString();
            }

            FillTreeView(reportingId);
        }

        private void FillTreeView(string reportingId)
        {
            var zonesToBind = new List<Zone>();
            var zones = _db.Zones.Include(z => z.Cities).ToList();
            var items = _db.Users.Include(u => u.Cities).ToList();
            if (!string.IsNullOrEmpty(reportingId))
            {
                var item = items.FirstOrDefault(i => i.UserId == Convert.ToInt32(reportingId));
                if (item != null)
                {
                    foreach (var zone in zones)
                    {
                        var data = zone.Cities.Where(t2 => item.Cities.Any(t1 => t1.CityId.Equals(t2.CityId)));
                        if (data != null && data.ToList().Count > 0)
                            zonesToBind.Add(zone);
                    }
                }
            }
            else
            {
                zonesToBind = zones;
            }

            BindDataInTreeView(zonesToBind);
        }

        private void BindDataInTreeView(List<Zone> zonesToBind)
        {
            if (treeViewCity.Nodes.Count > 0)
                treeViewCity.Nodes.Clear();

            var count = 0;
            foreach (var zone in zonesToBind)
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

                    if (User != null && User.Cities.Any(c => c.CityId == city.CityId))
                    {
                        child.Checked = true;
                    }
                }
                count++;
            }
        }

        private List<City> GetSelectedCities()
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
                            var city = _db.Cities.Find(Convert.ToInt32(child.Value));
                            cities.Add(city);
                        }
                    }
                }
            }
            return cities;
        }

        protected void ddlReporting_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillTreeView(ddlReporting.SelectedValue);
        }

        private User User
        {
            get
            {
                return ViewState["user"] as User;
            }
            set
            {
                ViewState["user"] = value;
            }
        }

        private bool IsNew
        {
            get
            {
                return (bool)ViewState["isNew"];
            }
            set
            {
                ViewState["isNew"] = value;
            }
        }
    }
}