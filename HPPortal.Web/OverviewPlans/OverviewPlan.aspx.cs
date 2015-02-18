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
                string id = Request.QueryString["Partner"];
                string quater = Request.QueryString["QuaterYear"];
                if (!string.IsNullOrEmpty(id))
                    PartnerId = Convert.ToInt32(id);
                else
                    PartnerId = 1;
                if (!string.IsNullOrEmpty(quater))
                    Quater = quater;
                else
                    Quater = QuarterHelper.GetNextnCurrentQuarter(DateTime.Now).FirstOrDefault().QuarterYear;

                OverView_Plan = _db.OverviewPlans.FirstOrDefault(o => o.PartnerId == PartnerId && o.Quarter == Quater);
                if (OverView_Plan != null)
                {
                    IsNew = false;
                    FillData(OverView_Plan);
                }
                else
                {
                    IsNew = true;
                }

            }
        }

        private void FillData(HPPortal.Data.Models.OverviewPlan objPlan)
        {
            txtStrength.Text = objPlan.Strength;
            txtWeakness.Text = objPlan.Weakness;
            txtOpportunity.Text = objPlan.Opportunity;
            txtSupportReqd.Text = objPlan.SupportReqd;
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

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            if (IsNew)
                Response.Redirect("Default");
            else
                Response.Redirect("../Default");
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            using (_db)
            {
                var item = new HPPortal.Data.Models.OverviewPlan();

                if (IsNew)
                {
                    item = CommitToItem(item);

                    if (ModelState.IsValid)
                    {
                        _db.OverviewPlans.Add(item);
                        _db.SaveChanges();
                    }
                }
                else
                {
                    item = CommitToItem(OverView_Plan);

                    if (ModelState.IsValid)
                    {
                        _db.Entry(item).State = EntityState.Modified;
                        _db.SaveChanges();
                    }
                }
            }
        }

        private HPPortal.Data.Models.OverviewPlan CommitToItem(Data.Models.OverviewPlan item)
        {
            var Plans = _db.OverviewPlans.FirstOrDefault(o => o.PartnerId == item.PartnerId && o.Quarter == item.Quarter);
            if (Plans != null)
                item = Plans;
            item.Strength = txtStrength.Text.Trim();
            item.Weakness = txtWeakness.Text.Trim();
            item.Opportunity = txtOpportunity.Text.Trim();
            item.SupportReqd = txtSupportReqd.Text.Trim();
            item.PartnerId = Convert.ToInt32(Request.QueryString["PartnerId"]);
            item.Quarter = Convert.ToString(Request.QueryString["Quarter"]);
            if (IsNew)
            {
                item.CreatedDate = System.DateTime.Now;
                //item.CreatedUser = 1;
            }
            else
            {
                item.ModifiedDate = System.DateTime.Now;
                //item.ModifiedUser = 1;
            }
            return item;
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

        private HPPortal.Data.Models.OverviewPlan OverView_Plan
        {
            get
            {
                return ViewState["OverView_Plan"] as HPPortal.Data.Models.OverviewPlan;
            }
            set
            {
                ViewState["OverView_Plan"] = value;
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