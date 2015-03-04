using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPPortal.Data.Models;
using System.Data.Entity;
using HPPortal.Web.Models;

namespace HPPortal.Web.Targets
{
    public partial class Default : System.Web.UI.Page
    {
        HPSiteDBContext _db = new HPSiteDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                if (!string.IsNullOrEmpty(Convert.ToString(Request.QueryString["pid"])))
                {
                    UserId = SessionData.Current.UserId;
                    PartnerId = Convert.ToInt32(Request.QueryString["pid"]);
                    Quater = Convert.ToString(Request.QueryString["qtr"]);
                }
               
                var partner = _db.Partners.Include(p=>p.User).FirstOrDefault(p=>p.PartnerId == PartnerId);
                lblPartner.Text = partner.PartnerName;
                lblQuater.Text = Quater;
                lblCity.Text = partner.City.Description;
                lblOutletType.Text = partner.PartnerCategory.Description;
                lblAccountManager.Text = partner.User.Name;

                FillGridView();
            }
        }

        private void FillGridView()
        {
            var qtr = Quater;
            var partnerId = PartnerId;
            var targetVMList = new List<TargetViewModel>();
            var products = _db.Products.OrderBy(p=>p.SortOrder);

            foreach (var product in products)
            {
                var target = _db.Targets.FirstOrDefault(t => t.PartnerId == partnerId && t.QuarterYear == qtr && t.ProductId == product.ProductId);

                if (target == null)
                    target = new Data.Models.Target();

                var targetVM = new TargetViewModel
                 {
                     TargetId = target.TargetId,
                     M1 = target.M1,
                     M2 = target.M2,
                     M3 = target.M3,
                     PartnerId = target.PartnerId,
                     ProductCategory = product.ProductCategory,
                     ProductDescription = product.ProductDescription,
                     ProductId = product.ProductId,
                     QuarterYear = target.QuarterYear
                 };
                
                var prevQtr = Utility.QuarterHelper.GetPrevQuarter(Quater);
                var prevQtrTarget = _db.Targets.Where(t => t.PartnerId == PartnerId && t.ProductId == product.ProductId && t.QuarterYear == prevQtr.QuarterYear).ToList();
                if (prevQtrTarget.Any())
                    targetVM.PrevQtr = prevQtrTarget.Sum(t => t.M1 + t.M2 + t.M3);

                targetVMList.Add(targetVM);

            }
            GridView1.DataSource = targetVMList;
            GridView1.DataBind();
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
            
        }

        protected void GridView1_DataBound1(object sender, EventArgs e)
        {
            for (int rowIndex = GridView1.Rows.Count - 2;
                                               rowIndex >= 0; rowIndex--)
            {
                GridViewRow gvRow = GridView1.Rows[rowIndex];
                GridViewRow gvPreviousRow = GridView1.Rows[rowIndex + 1];

                if (gvRow.Cells[0].Text ==
                                       gvPreviousRow.Cells[0].Text)
                {
                    if (gvPreviousRow.Cells[0].RowSpan < 2)
                    {
                        gvRow.Cells[0].RowSpan = 2;
                    }
                    else
                    {
                        gvRow.Cells[0].RowSpan =
                            gvPreviousRow.Cells[0].RowSpan + 1;
                    }
                    gvPreviousRow.Cells[0].Visible = false;
                }
            }

        }

      protected  void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                for (int i = 0; i < e.Row.Cells.Count; i++)
                {
                    e.Row.Cells[i].CssClass = "centeralign";
                }

                e.Row.Cells[0].ColumnSpan = 2;
                e.Row.Cells[0].Text = "Category";
                
                e.Row.Cells[1].Text = Utility.QuarterHelper.GetMonthName(Quater, 1);
                e.Row.Cells[2].Text = Utility.QuarterHelper.GetMonthName(Quater, 2);
                e.Row.Cells[3].Text = Utility.QuarterHelper.GetMonthName(Quater, 3);

                e.Row.Cells[4].Text = Quater + " Target";

                e.Row.Cells[5].Text = Utility.QuarterHelper.GetPrevQuarter(Quater).QuarterYear;
                e.Row.Cells[6].Text = "YoY";
                            
            }
        }
               
        protected void btnSave_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                var targetId = 0;
                var target = new Data.Models.Target();

                var hdnTargetId = (HiddenField)row.FindControl("hdnTargetId");
                if (hdnTargetId != null && !string.IsNullOrEmpty(hdnTargetId.Value))
                    targetId = Convert.ToInt32(hdnTargetId.Value);

                if (targetId > 0)
                    target = _db.Targets.Find(targetId);
                else
                {
                    target.ProductId = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value.ToString());
                    target.PartnerId = PartnerId;
                    target.QuarterYear = Quater;
                }

                var txtM1 = (TextBox)row.FindControl("txtM1");
                if (txtM1 != null)
                    target.M1 = Convert.ToInt32(txtM1.Text);

                var txtM2 = (TextBox)row.FindControl("txtM2");
                if (txtM2 != null)
                    target.M2 = Convert.ToInt32(txtM2.Text);

                var txtM3 = (TextBox)row.FindControl("txtM3");
                if (txtM3 != null)
                    target.M3 = Convert.ToInt32(txtM3.Text);


                if (targetId > 0)
                {
                    target.ModifiedDate = System.DateTime.Now;
                    target.ModifiedUser = SessionData.Current.UserId;
                    _db.Entry<Target>(target).State = EntityState.Modified;
                }
                else
                {
                    target.CreatedDate = System.DateTime.Now;
                    target.CreatedUser = SessionData.Current.UserId;
                    _db.Targets.Add(target);
                }

                _db.SaveChanges();

                FillGridView();
            
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

        private int UserId
        {
            get
            {
                return (int)ViewState["Quarter"];
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
            Response.Redirect(string.Format("/{0}?pid={1}&qtr={2}", path, PartnerId, Quater));
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            try
            {
                if (PartnerId > 0)
                {
                    FillGridView();
                }
            }
            catch
            {
                throw;
            }
        }
    }
}