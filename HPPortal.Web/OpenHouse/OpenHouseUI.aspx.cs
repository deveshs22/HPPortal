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
using HPPortal.Web.Utility;

namespace HPPortal.Web.OpenHouse
{
    public partial class OpenHouseUI : System.Web.UI.Page
    {
        protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = SessionData.Current.PartnerId;
                if (id == 0)
                    Response.Redirect("/JBPlan.aspx");

                string quater = SessionData.Current.QuarterYear;
                PartnerId = id;
                Quater = quater;
                OpenId = 0;

                FillData();

                var partner = _db.Partners.Include(p => p.User).FirstOrDefault(p => p.PartnerId == PartnerId);
                lblPartner.Text = partner.PartnerName;
                lblQuater.Text = Quater;
                lblCity.Text = partner.City.Description;
                lblOutletType.Text = partner.PartnerCategory.Description;
                lblAccountManager.Text = partner.User.Name;
            }
        }

        private void FillData()
        {
            var objOpenHouse = _db.OpenHouse.FirstOrDefault(o => o.PartnerId == PartnerId && o.Quarter == Quater);

            if (objOpenHouse != null)
                OpenId = objOpenHouse.OpenHouseId;
            else
                return;

            txtDescription.Text = objOpenHouse.Description;
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            txtDescription.Text = "";

            if (OpenId > 0)
                FillData();
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            CommitToItem();
            FillData();
        }

        private void CommitToItem()
        {
            var userId = SessionData.Current.UserId;

            if (userId == 0)
                Response.Redirect("/Logon");

            var item = new HPPortal.Data.Models.OpenHouse();

            if (OpenId > 0)
                item = _db.OpenHouse.Find(OpenId);

            item.Description = txtDescription.Text.Trim();

            if (OpenId > 0)
            {
                item.ModifiedDate = System.DateTime.Now;
                item.ModifiedUser = userId;
            }
            else
            {
                item.PartnerId = PartnerId;
                item.Quarter = Quater;
                item.CreatedDate = System.DateTime.Now;
                item.CreatedUser = userId;
            }

            if (ModelState.IsValid)
            {
                if (OpenId > 0)
                    _db.Entry<HPPortal.Data.Models.OpenHouse>(item).State = EntityState.Modified;
                else
                    _db.OpenHouse.Add(item);

                _db.SaveChanges();
            }
        }

        private int OpenId
        {
            get
            {
                return (int)ViewState["OpenId"];
            }
            set
            {
                ViewState["OpenId"] = value;
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

        protected void btnNavigate_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            var path = btn.CommandArgument;
            Response.Redirect(string.Format("/{0}", path));
        }
    }
}