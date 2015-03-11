﻿using System;
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
using System.Configuration;

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
            var data = _db.ActionForTargetedGoals.Where(s => s.PartnerId == PartnerId && s.QuarterYear == Quater).OrderBy(s => s.GoalName);

            if (data != null && data.ToList().Count > 0)
            {
                divAddActions.Style.Add("display", "block");
            }
            else
            {
                divAddActions.Style.Add("display", "none");
            }
            return data;
        }

        public IQueryable<HPPortal.Data.Models.ActionForTargetedGoal> GetDataForTargets()
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

                }
                else
                {
                    // Save changes
                    item.CreatedDate = DateTime.Now;
                    if (user != null)
                        item.CreatedUser = user.UserId;

                    _db.ActionForTargetedGoals.Add(item);
                    _db.SaveChanges();
                }

                // send mail to assigned user

                var assignedUser = _db.Users.FirstOrDefault(u => u.UserId == item.AssignedUserId);
                if (assignedUser != null)
                {
                    var partner = _db.Partners.Find(item.PartnerId);
                    string emailAddress = assignedUser.EmailId;
                    string subject = @"HPJB Portal Targeted goal assigned.";
                    string message = Utility.MailFormat.GetMessage(@"Targeted goal", assignedUser.Name, partner.PartnerName, item.QuarterYear);

                    Utility.MailFormat.SendMailMessages(ConfigurationManager.AppSettings["From"], emailAddress,
                "", "", subject, message, "", "");

                    Utility.MailFormat.SendSMS(assignedUser.Mobile, assignedUser.Name, partner.PartnerName);
                }

                string path = "TargetedGoals/ActionForTargetedGoals";
                Response.Redirect(string.Format("/{0}?pid={1}&qtr={2}", path, PartnerId, Quater));
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

        protected void lnkAddActions_Click(object sender, EventArgs e)
        {
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
            divAddTargetedGoals.Style.Add("display", "none");
            divAddActionsDetails.Style.Add("display", "block");
        }

        protected void InsertButton1_Click(object sender, EventArgs e)
        {
            var item = new HPPortal.Data.Models.ActionForTargetedGoal();

            if (PlanId != null && PlanId > 0)
                item = _db.ActionForTargetedGoals.Include(p => p.User).FirstOrDefault(p => p.ActionId == PlanId);

            if (Session["User"] == null)
                Response.Redirect("/Logon.aspx");

            var user = Session["User"] as User;
            if (ModelState.IsValid)
            {
                //CommitToItem(item);
                var plan = _db.ActionForTargetedGoals.Include(p => p.User).ToList().FirstOrDefault(i => i.ActionId == Convert.ToInt32(ddlTragetedGoals.SelectedValue));
                // Save changes
                if (plan != null)
                {
                    item.CreatedDate = DateTime.Now;
                    if (user != null)
                        item.CreatedUser = user.UserId;

                    item.AssignedUserId = plan.AssignedUserId;
                    item.GoalName = plan.GoalName;
                    item.PartnerId = plan.PartnerId;
                    item.PreviousQuarter = plan.PreviousQuarter;
                    item.QuarterPlan = plan.QuarterPlan;
                    item.QuarterYear = plan.QuarterYear;
                    item.GoalName = plan.GoalName;
                    item.ActionRequired = TextBox1.Text.Trim();
                    _db.ActionForTargetedGoals.Add(item);
                    _db.SaveChanges();

                }
                string path = "TargetedGoals/ActionForTargetedGoals";
                Response.Redirect(string.Format("/{0}?pid={1}&qtr={2}", path, PartnerId, Quater));
            }

        }

        protected void CancelButton1_Click(object sender, EventArgs e)
        {
            string path = "TargetedGoals/ActionForTargetedGoals";
            Response.Redirect(string.Format("/{0}?pid={1}&qtr={2}", path, PartnerId, Quater));
        }

        protected void ListView1_DataBound(object sender, EventArgs e)
        {
            //for (int rowIndex = ListView1. Count - 2;
            //                                   rowIndex >= 0; rowIndex--)
            //{
            //    GridViewRow gvRow = ListView1.Rows[rowIndex];
            //    GridViewRow gvPreviousRow = ListView1.Rows[rowIndex + 1];

            //    if (gvRow.Cells[0].Text ==
            //                           gvPreviousRow.Cells[0].Text)
            //    {
            //        if (gvPreviousRow.Cells[0].RowSpan < 2)
            //        {
            //            gvRow.Cells[0].RowSpan = 2;
            //        }
            //        else
            //        {
            //            gvRow.Cells[0].RowSpan =
            //                gvPreviousRow.Cells[0].RowSpan + 1;
            //        }
            //        gvPreviousRow.Cells[0].Visible = false;
            //    }
            //}
        }
    }
}
