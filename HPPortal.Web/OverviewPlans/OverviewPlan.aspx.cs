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

namespace HPPortal.Web.OverviewPlans
{
    public partial class OverviewPlan : System.Web.UI.Page
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
            var objPlan = _db.OverviewPlans.FirstOrDefault(o => o.PartnerId == PartnerId && o.Quarter == Quater);

            if (objPlan != null)
                PlanId = objPlan.OverviewPlanId;
            else
                return;

            txtStrength.Text = objPlan.Strength;
            txtWeakness.Text = objPlan.Weakness;
            txtOpportunity.Text = objPlan.Opportunity;
            txtSupportReqd.Text = objPlan.SupportReqd;
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            if (PlanId > 0)
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

            var item = new HPPortal.Data.Models.OverviewPlan();

            if (PlanId > 0)
                item = _db.OverviewPlans.Find(PlanId);

            item.Strength = txtStrength.Text.Trim();
            item.Weakness = txtWeakness.Text.Trim();
            item.Opportunity = txtOpportunity.Text.Trim();
            item.SupportReqd = txtSupportReqd.Text.Trim();

            if (PlanId > 0)
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
                if (PlanId > 0)
                    _db.Entry<HPPortal.Data.Models.OverviewPlan>(item).State = EntityState.Modified;
                else
                    _db.OverviewPlans.Add(item);

                _db.SaveChanges();
            }
        }


        private int PlanId
        {
            get
            {
                return (int)ViewState["PlanId"];
            }
            set
            {
                ViewState["PlanId"] = value;
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