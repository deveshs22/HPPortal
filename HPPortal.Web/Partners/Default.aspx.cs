using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using HPPortal.Data.Models;

namespace HPPortal.Web.Partners
{
    public partial class Default : System.Web.UI.Page
    {
		protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (SessionData.Current.UserId == 0)
                    Response.Redirect("/Logon");

                Authenticate();

                ListView1.Sort("PartnerName", SortDirection.Ascending);
            }
        }

        private void Authenticate()
        {
            var permission = _db.Permissions.FirstOrDefault(p => p.ModuleName == Modules.JBPlan && p.RoleId == SessionData.Current.RoleId);

            if (permission == null)
                Response.Redirect("/Default.aspx");

            if (!permission.CanView)
                Response.Redirect("/Default.aspx");

            if (!permission.CanAdd)
                btnCreate.Visible = false;

            CanEdit = permission.CanEdit;
            CanDelete = permission.CanDelete;

           
        }

        // Model binding method to get List of Partner entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<HPPortal.Data.Models.Partner> GetData()
        {
            if (SessionData.Current.UserId == 0)
                Response.Redirect("/Logon.aspx");

            var userId = SessionData.Current.UserId;
            var userData = _db.Users.Include(u => u.Cities.Select(c => c.Partners)).First(u => u.UserId == userId);
            var partnerCategoriesId = userData.PartnerCategorys.Select(p => p.PartnerCategoryId).ToList();

            var partners = userData.Cities.SelectMany(c => c.Partners).Where(p => partnerCategoriesId.Contains(p.PartnerCategoryId)).ToList();

            
            var partnersToReturn = _db.Partners.Include(m => m.City).Include(m => m.PartnerCategory);
            var partnerData = new List<Partner>();

            foreach (var par in partnersToReturn.OrderBy(p=>p.PartnerName))
            {
                if (partners.Any(p => p.PartnerId == par.PartnerId))
                {
                    partnerData.Add(par);
                }
            }
           
            return partnerData.AsQueryable();
        }

        protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                if (!CanEdit)
                {
                    var edit = e.Item.FindControl("btnEdit") as HyperLink;
                    edit.Visible = false;
                }

                if (!CanDelete)
                {
                    var delete = e.Item.FindControl("btnDelete") as HyperLink;
                    delete.Visible = false;
                }
                
                // ...
            }
        }

        private bool CanEdit
        {
            get
            {
                return (bool)ViewState["CanEdit"];
            }
            set
            {
                ViewState["CanEdit"] = value;
            }
        }

        private bool CanDelete
        {
            get
            {
                return (bool)ViewState["CanDelete"];
            }
            set
            {
                ViewState["CanDelete"] = value;
            }
        }

         
    }
}

