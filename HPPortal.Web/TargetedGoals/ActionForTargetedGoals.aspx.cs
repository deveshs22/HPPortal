using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using HPPortal.Data.Models;
using HPPortal.Web.Utility;
using System.Text;
using System.Web.DynamicData;

namespace HPPortal.Web.TargetedGoals
{
    public partial class ActionForTargetedGoals : System.Web.UI.Page
    {
        protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                if (!string.IsNullOrEmpty(Convert.ToString(Request.QueryString["pid"])))
                {
                    PartnerId = Convert.ToInt32(Request.QueryString["pid"]);
                    Quater = Convert.ToString(Request.QueryString["qtr"]);
                }
                if (PartnerId == 0)
                    Response.Redirect("/Logon.aspx");

                ClearData();
                var partner = _db.Partners.Include(p => p.User).FirstOrDefault(p => p.PartnerId == PartnerId);
                lblPartner.Text = partner.PartnerName;
                lblQuater.Text = Quater;
                lblCity.Text = partner.City.Description;
                lblOutletType.Text = partner.PartnerCategory.Description;
                lblAccountManager.Text = partner.User.Name;
            }

        }

        private void ClearData()
        {
            txtAction.Text = string.Empty;
            txtGoal.Text = string.Empty;
            txtWhereWeWant.Text = string.Empty;
            txtWhereWeAre.Text = string.Empty;
            //ddlUser.SelectedValue = "0";
            //ddlCheckpointState.SelectedValue = "0";
        }

        protected void EditButton_Click(Object obj, EventArgs e)
        {
            var sender = obj as LinkButton;
            var planId = Convert.ToInt32(sender.CommandArgument);

            String csname1 = "PopupScript";
            Type cstype = this.GetType();

            // Get a ClientScriptManager reference from the Page class.
            ClientScriptManager cs = Page.ClientScript;

            // Check to see if the startup script is already registered.
            if (!cs.IsStartupScriptRegistered(cstype, csname1))
            {
                // In my experience, the jQuery file must be included at the top
                // of the page for this to work. Oterwise you get '$ not found' error.
                StringBuilder cstext1 = new StringBuilder();
                cstext1.Append("<script type=text/javascript>$(document).ready(function() { $('#modalC').modal('show')}); </");
                cstext1.Append("script>");
                cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
            }

            // Fill data
            PlanId = planId;
            var planDetails = _db.ActionForTargetedGoals.Include(p => p.User).FirstOrDefault(p => p.ActionId == planId);

            txtGoal.Text = planDetails.GoalName;
            txtAction.Text = planDetails.ActionRequired;
            txtWhereWeAre.Text = planDetails.PreviousQuarter;
            txtWhereWeWant.Text = planDetails.QuarterPlan;
            ddlUser.SelectedValue = planDetails.AssignedUserId.ToString();            
        }
        // Model binding method to get List of StrategicPlan entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<HPPortal.Data.Models.ActionForTargetedGoal> GetData()
        {
            return _db.ActionForTargetedGoals.Where(s => s.PartnerId == PartnerId && s.QuarterYear == Quater);
        }

        public IEnumerable<Quarter> GetQuarter()
        {
            return QuarterHelper.GetNextnCurrentQuarter(DateTime.Now);
        }

        public IDictionary<int, string> GetCheckpointState()
        {
            return UtilityBL.GetCheckpointState();
        }

        public IEnumerable<User> GetUsers()
        {
            return _db.Users.OrderBy(u => u.Name).ToList();
        }

        private void CommitToItem(ActionForTargetedGoal item)
        {
            item.GoalName = txtGoal.Text.Trim();
            item.ActionRequired = txtAction.Text.Trim();
            item.QuarterPlan = txtWhereWeWant.Text.Trim();
            item.PreviousQuarter = txtWhereWeAre.Text.Trim();

            if (ddlUser.SelectedIndex > 0)
                item.AssignedUserId = Convert.ToInt32(ddlUser.SelectedValue);
            
            item.PartnerId = PartnerId;
            item.QuarterYear = Quater;
        }

        private int PartnerId
        {
            get
            {
                return ViewState["PartnerId"] == null ? 0 : (int)ViewState["PartnerId"];
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

        private int PlanId
        {
            get
            {
                return ViewState["PlanId"] == null ? 0 : (int)ViewState["PlanId"];
            }
            set
            {
                ViewState["PlanId"] = value;
            }
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {

            var item = new HPPortal.Data.Models.ActionForTargetedGoal();

            if (PlanId != null && PlanId > 0)
                item = _db.ActionForTargetedGoals.Include(p => p.User).FirstOrDefault(p => p.ActionId == PlanId);

            if (Session["User"] == null)
                Response.Redirect("/Logon.aspx");

            var user = Session["User"] as User;
            if (ModelState.IsValid)
            {
                CommitToItem(item);

                if (PlanId != null && PlanId > 0)
                {
                    item.ModifiedDate = DateTime.Now;
                    if (user != null)
                        item.ModifiedUser = user.UserId;

                    _db.Entry(item).State = EntityState.Modified;
                    _db.SaveChanges();
                    string path = "TargetedGoals/ActionForTargetedGoals";
                    Response.Redirect(string.Format("/{0}?pid={1}&qtr={2}", path, PartnerId, Quater));
                }
                else
                {
                    // Save changes
                    item.CreatedDate = DateTime.Now;
                    if (user != null)
                        item.CreatedUser = user.UserId;

                    _db.ActionForTargetedGoals.Add(item);
                    _db.SaveChanges();

                    string path = "TargetedGoals/ActionForTargetedGoals";
                    Response.Redirect(string.Format("/{0}?pid={1}&qtr={2}", path, PartnerId, Quater));
                }
            }

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            string path = "TargetedGoals/ActionForTargetedGoals";
            Response.Redirect(string.Format("/{0}?pid={1}&qtr={2}", path, PartnerId, Quater));
        }

        protected void btnNavigate_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            var path = btn.CommandArgument;
            Response.Redirect(string.Format("/{0}?pid={1}&qtr={2}", path, PartnerId, Quater));
        }
    }
}
