using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using HPPortal.Data.Models;
using System.Reflection;
using System.Collections;


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
                FillPartnerCategory();
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

        private void FillPartnerCategory()
        {
            var Partner_category = _db.PartnerCategories.ToList();
            chkPartnerCategory.DataSource = Partner_category;

            chkPartnerCategory.DataTextField = "Description";
            chkPartnerCategory.DataValueField = "PartnerCategoryId";
            chkPartnerCategory.DataBind();
            if (!IsNew)
            {
                var items = _db.Users.Include(u => u.PartnerCategorys).ToList();
                var item = items.FirstOrDefault(i => i.UserId == Convert.ToInt32(User.UserId));
                SetUsercetogory(item.PartnerCategorys);
            }
        }

        private void SetUsercetogory(ICollection<PartnerCategory> category)
        {
            foreach (PartnerCategory c in category) 
            {
                for (int i = 0; i < chkPartnerCategory.Items.Count; i++ )
                {
                    ListItem chk = chkPartnerCategory.Items[i];
                    if (Convert.ToInt32(chk.Value) == c.PartnerCategoryId)
                    {
                        chkPartnerCategory.Items[i].Selected = true;
                    }
                }
            }
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
            item.Pwd = UtilityBL.Encrypt(txtPassword.Text, true);
            item.RoleId = Convert.ToInt32(ddlRoles.SelectedValue);
            item.Role = _db.Roles.Find(Convert.ToInt32(ddlRoles.SelectedValue));
            item.ReportingId = Convert.ToInt32(ddlReporting.SelectedValue);
            item.User2 = _db.Users.Find(Convert.ToInt32(ddlReporting.SelectedValue));
            item.Mobile = txtPhone.Text.Trim();
            item.Active = true;

            item.Cities.Clear();

            var cityList = GetSelectedCities();
            foreach (var city in cityList)
            {
                item.Cities.Add(city);
            }
            item.PartnerCategorys.Clear();
            var category = GetSelectedPartnerCategory();
            foreach (var partner in category)
            {
                item.PartnerCategorys.Add(partner);
            }
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
            if (IsNew)
                AddItem(roles, typeof(Role), "RoleId", "Description", "< Please select >");

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

            if (IsNew)
                AddItem(roles, typeof(User), "UserId", "Name", "< Please select >");

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

        private void AddItem(IList list, Type type, string valueMember,
    string displayMember, string displayText)
        {
            //Creates an instance of the specified type 
            //using the constructor that best matches the specified parameters.
            Object obj = Activator.CreateInstance(type);

            // Gets the Display Property Information
            PropertyInfo displayProperty = type.GetProperty(displayMember);

            // Sets the required text into the display property
            displayProperty.SetValue(obj, displayText, null);

            // Gets the Value Property Information
            PropertyInfo valueProperty = type.GetProperty(valueMember);

            // Sets the required value into the value property
            valueProperty.SetValue(obj, -1, null);

            // Insert the new object on the list
            list.Insert(0, obj);
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

                    BindDataInTreeView(zonesToBind, item.Cities);
                }
            }
            //else
            //{
            //    zonesToBind = zones;
            //    BindDataInTreeView(zonesToBind, null);
            //}


        }

        private void BindDataInTreeView(List<Zone> zonesToBind, ICollection<City> citiesToBind)
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
                    if (citiesToBind.Any(c => c.CityId == city.CityId))
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

        private List<PartnerCategory> GetSelectedPartnerCategory()
        {
            List<PartnerCategory> category = new List<PartnerCategory>();
            foreach (ListItem item in chkPartnerCategory.Items)
            {
                if (item.Selected)
                {
                    var Partner = _db.PartnerCategories.Find(Convert.ToInt32(item.Value));
                    category.Add(Partner);
                }
            }
            return category;
        }

        protected void ddlReporting_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillTreeView(ddlReporting.SelectedValue);
            var items = _db.Users.Include(u => u.PartnerCategorys).ToList();
            var item = items.FirstOrDefault(i => i.UserId == Convert.ToInt32(ddlReporting.SelectedValue));
            EnableReportingUsercetogory(item.PartnerCategorys);
        }

        private void EnableReportingUsercetogory(ICollection<PartnerCategory> category)
        {
            for (int i = 0; i < chkPartnerCategory.Items.Count; i++)
            {
                chkPartnerCategory.Items[i].Enabled = false;
            }
            foreach (PartnerCategory c in category)
            {
                for (int i = 0; i < chkPartnerCategory.Items.Count; i++)
                {
                    ListItem chk = chkPartnerCategory.Items[i];
                    if (Convert.ToInt32(chk.Value) == c.PartnerCategoryId)
                    {
                        chkPartnerCategory.Items[i].Enabled = true;
                    }
                }
            }
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