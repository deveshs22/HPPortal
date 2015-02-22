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

namespace HPPortal.Web.Partners
{
    public partial class Details : System.Web.UI.Page
    {
		protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                PartnerId = SessionData.Current.PartnerId;
                if (PartnerId == 0)
                    Response.Redirect("/JBPlan.aspx");

                string quater = SessionData.Current.QuarterYear;
                PartnerId = PartnerId;
                Quater = quater;
               
                var partner = _db.Partners.Include(p => p.User).FirstOrDefault(p => p.PartnerId == PartnerId);
                lblPartner.Text = partner.PartnerName;
                lblQuater.Text = Quater;
                lblCity.Text = partner.City.Description;
                lblOutletType.Text = partner.PartnerCategory.Description;
                lblAccountManager.Text = partner.User.Name;
            }
        }

        // This is the Select methd to selects a single Partner item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public HPPortal.Data.Models.Partner GetItem()
        {
            if (PartnerId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Partners.Where(m => m.PartnerId == PartnerId)
                    .Include(m => m.City)
                    .Include(m => m.PartnerCategory)
                    .Include(m => m.User)
                    .FirstOrDefault();
            }
        }

        protected void btnNavigate_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            var path = btn.CommandArgument;
            Response.Redirect(string.Format("/{0}", path));
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }

        private int PartnerId
        {
            get
            {
                return (int)ViewState["PartnerId"];
            }
            set
            {
                ViewState["PartnerId"] = value;
            }
        }

        private string Quater
        {
            get
            {
                return ViewState["Quarter"] as string;
            }
            set
            {
                ViewState["Quarter"] = value;
            }
        }
    }
}

