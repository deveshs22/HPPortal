using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPPortal.Data.Models;
using System.Data.Entity;

namespace HPPortal.Web
{
    public partial class JBPlan : Page
    {
        HPSiteDBContext _db = new HPSiteDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Convert.ToString(Request.QueryString["m"])))
                Response.Redirect("/Default.aspx");
            
            if (!IsPostBack)
            {
                Mode = Convert.ToString(Request.QueryString["m"]);
                
                btnView.Visible = false;
                btnCreate.Visible = false;
                btnDownload.Visible = false;

                if (Mode == "edit")
                    btnCreate.Visible = true;
                else if (Mode == "view")
                {
                    btnView.Visible = true;
                    btnDownload.Visible = true;
                }

                Authenticate();
                BindQuarter();
                UserId = SessionData.Current.UserId;
            }
        }

        private void Authenticate()
        {
            var permission = _db.Permissions.FirstOrDefault(p => p.ModuleName == Modules.JBPlan && p.RoleId == SessionData.Current.RoleId);
            if (permission == null || !permission.CanView)
                Response.Redirect("/Default.aspx");

            if (!permission.CanAdd || !permission.CanEdit)
                btnCreate.Visible = false;
        }

        public IEnumerable<Partner> GetPartners()
        {
            if (SessionData.Current.UserId == 0)
                Response.Redirect("/Logon.aspx");

            var userId = SessionData.Current.UserId;
            var userData = _db.Users.Include(u => u.Cities.Select(c => c.Partners)).First(u => u.UserId == userId);
            var partnerCategoriesId = userData.PartnerCategorys.Select(p=>p.PartnerCategoryId).ToList();

            var partners = userData.Cities.SelectMany(c => c.Partners).Where(p => partnerCategoriesId.Contains(p.PartnerCategoryId)).ToList();
            return partners.OrderBy(p => p.PartnerName);
        }

        private void BindQuarter()
        {
            var qtr = new List<Utility.Quarter>();
            if (Mode == "view")
            { 
                var userId = SessionData.Current.UserId;
                int pId = Convert.ToInt32(ddlPartner.SelectedValue);
                var qtrlist1 = _db.Targets.Where(t => t.PartnerId == pId).Select(t => t.QuarterYear).Distinct();
                var qtrlist2 = _db.TargetedGoals.Where(t => t.PartnerId == pId).Select(t => t.QuarterYear).Distinct();
                var qtrlist3 = _db.StrategicPlans.Where(t => t.PartnerId == pId).Select(t => t.QuarterYear).Distinct();

                var qtrlist = (qtrlist1.Union(qtrlist2)).Union(qtrlist3);

                qtr = qtrlist.ToList().Select(q => Utility.QuarterHelper.GetCurrentQtr(q)).ToList();
                
            }
            else
             qtr = Utility.QuarterHelper.GetNextnCurrentQuarter(DateTime.Now).ToList();

            ddlQuarter.Items.Clear();

            ddlQuarter.DataSource = qtr.OrderBy(q => q.QuarterYear);
            ddlQuarter.DataTextField="QuarterYear";
            ddlQuarter.DataValueField = "QuarterYear";
            ddlQuarter.DataBind();

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            if (ddlPartner.SelectedIndex >= 0 && ddlQuarter.SelectedItem != null)
            {
                var mode = (Mode == "edit" ? "Entry" : "View");
                
                var log = new ActivityLog
                {
                    Module = "JB Plan " + mode ,
                    LogDate = DateTime.Now,
                    UserId = UserId,
                    PartnerId = Convert.ToInt32(ddlPartner.SelectedValue),
                    QuarterYear = ddlQuarter.SelectedItem.Text
                };
                _db.ActivityLogs.Add(log);
                _db.SaveChanges();

                Response.Redirect("/Partners/Details.aspx?pid=" + Convert.ToString(ddlPartner.SelectedValue) + "&qtr=" + ddlQuarter.SelectedItem.Text);
            }
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            if (ddlPartner.SelectedIndex >= 0 && ddlQuarter.SelectedItem != null)
            {
                var pptGen = new PptGenerator();
                pptGen.GeneratePlanPpt(this, Convert.ToInt32(ddlPartner.SelectedValue), ddlQuarter.SelectedItem.Text);
            }

        }

        private string Mode
        {
            get
            {
                return ViewState["Mode"] as string;
            }
            set
            {
                ViewState["Mode"] = value;
            }
        }

        private int UserId
        {
            get
            {
                return (int)ViewState["UserId"];
            }
            set
            {
                ViewState["UserId"] = value;
            }
        }

        protected void ddlPartner_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Mode == "view")
                BindQuarter();
        }      
    }
}