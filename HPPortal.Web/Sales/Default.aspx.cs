using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPPortal.Data.Models;
using System.Data.Entity;
using HPPortal.Web.Models;

namespace HPPortal.Web.Sales
{
    public partial class Default : System.Web.UI.Page
    {
        HPSiteDBContext _db = new HPSiteDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = SessionData.Current.PartnerId;
                if (id == 0)
                    Response.Redirect("/JBPlan.aspx");

                string quater = SessionData.Current.QuarterYear;
                PartnerId = id;
                Quater = quater;

                var partner = _db.Partners.Include(p => p.User).FirstOrDefault(p => p.PartnerId == PartnerId);
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
            var SaleVMList = new List<SalesViewModel>();
            var products = _db.Products;

            foreach (var product in products)
            {
                var sales = _db.Sales.FirstOrDefault(t => t.PartnerId == partnerId && t.QuarterYear == qtr && t.ProductId == product.ProductId);

                if (sales == null)
                    sales = new Data.Models.Sale();

                var SaleVM = new SalesViewModel
                 {
                     SaleId = sales.SaleId,
                     M1 = sales.M1,
                     M2 = sales.M2,
                     M3 = sales.M3,
                     PartnerId = sales.PartnerId,
                     ProductCategory = product.ProductCategory,
                     ProductDescription = product.ProductDescription,
                     ProductId = product.ProductId,
                     QuarterYear = sales.QuarterYear
                 };
                
                var prevQtr = Utility.QuarterHelper.GetPrevQuarter(Quater);
                var prevQtrSales = _db.Sales.Where(t => t.PartnerId == PartnerId && t.ProductId == product.ProductId && t.QuarterYear == prevQtr.QuarterYear).ToList();
                if (prevQtrSales.Any())
                    SaleVM.PrevQtr = prevQtrSales.Sum(t => t.M1 + t.M2 + t.M3);

                SaleVMList.Add(SaleVM);

            }
            GridView1.DataSource = SaleVMList;
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

                e.Row.Cells[4].Text = Quater + " Sales";

                e.Row.Cells[5].Text = Utility.QuarterHelper.GetPrevQuarter(Quater).QuarterYear;
                e.Row.Cells[6].Text = "YoY";
                            
            }
        }
               
        protected void btnSave_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                var saleId = 0;
                var sales = new Data.Models.Sale();

                var hdnSaleId = (HiddenField)row.FindControl("hdnSaleId");
                if (hdnSaleId != null && !string.IsNullOrEmpty(hdnSaleId.Value))
                    saleId = Convert.ToInt32(hdnSaleId.Value);

                if (saleId > 0)
                    sales = _db.Sales.Find(saleId);
                else
                {
                    sales.ProductId = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value.ToString());
                    sales.PartnerId = 1;
                    sales.QuarterYear = "Q1 2015";
                }

                var txtM1 = (TextBox)row.FindControl("txtM1");
                if (txtM1 != null)
                    sales.M1 = Convert.ToInt32(txtM1.Text);

                var txtM2 = (TextBox)row.FindControl("txtM2");
                if (txtM2 != null)
                    sales.M2 = Convert.ToInt32(txtM2.Text);

                var txtM3 = (TextBox)row.FindControl("txtM3");
                if (txtM3 != null)
                    sales.M3 = Convert.ToInt32(txtM3.Text);


                if (saleId > 0)
                    _db.Entry<Sale>(sales).State = EntityState.Modified;
                else
                    _db.Sales.Add(sales);

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

        protected void btnNavigate_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            var path = btn.CommandArgument;
            Response.Redirect(string.Format("/{0}", path));
        }
    }
}