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
    public partial class PlanandPerformance : System.Web.UI.Page
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
            var PlanPerformanceVMList = new List<PlanPerformanceViewModel>();

            var products = _db.Products;

            foreach (var product in products)
            {
                var sales = _db.Sales.FirstOrDefault(t => t.PartnerId == partnerId && t.QuarterYear == qtr && t.ProductId == product.ProductId);

                if (sales == null)
                    sales = new Data.Models.Sale();

                var currentYear = Quater.Split(' ')[1];

                var previousYear = (Convert.ToInt32(currentYear) - 1).ToString();

                var currentYearData = _db.Sales.Where(t => t.PartnerId == partnerId && t.ProductId == product.ProductId && t.QuarterYear.Contains(currentYear)).ToList();

                var previousYearData = _db.Sales.Where(t => t.PartnerId == partnerId && t.ProductId == product.ProductId && t.QuarterYear.Contains(previousYear)).ToList();

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


                var cquater1 = currentYearData.FirstOrDefault(t => t.QuarterYear == ("Q1 " + currentYear));
                var cquater1Sales = 0;
                if (cquater1 != null)
                    cquater1Sales = cquater1.M1 + cquater1.M2 + cquater1.M3;
                var cquater2 = currentYearData.FirstOrDefault(t => t.QuarterYear == ("Q2 " + currentYear));

                var cquater2Sales = 0;
                if (cquater2 != null)
                    cquater2Sales = cquater2.M1 + cquater2.M2 + cquater2.M3;
                var cquater3 = currentYearData.FirstOrDefault(t => t.QuarterYear == ("Q3 " + currentYear));

                var cquater3Sales = 0;
                if (cquater3 != null)
                    cquater3Sales = cquater3.M1 + cquater3.M2 + cquater3.M3;
                var cquater4 = currentYearData.FirstOrDefault(t => t.QuarterYear == ("Q4 " + currentYear));

                var cquater4Sales = 0;
                if (cquater4 != null)
                    cquater4Sales = cquater4.M1 + cquater4.M2 + cquater4.M3;

                var pquater1 = previousYearData.FirstOrDefault(t => t.QuarterYear == ("Q1 " + previousYear));
                var pquater1Sales = 0;
                if (pquater1 != null)
                    pquater1Sales = pquater1.M1 + pquater1.M2 + pquater1.M3;

                var pquater2 = previousYearData.FirstOrDefault(t => t.QuarterYear == ("Q2 " + previousYear));
                var pquater2Sales = 0;
                if (pquater2 != null)
                    pquater2Sales = pquater2.M1 + pquater2.M2 + pquater2.M3;

                var pquater3 = previousYearData.FirstOrDefault(t => t.QuarterYear == ("Q3 " + previousYear));
                var pquater3Sales = 0;
                if (pquater3 != null)
                    pquater3Sales = pquater3.M1 + pquater3.M2 + pquater3.M3;

                var pquater4 = previousYearData.FirstOrDefault(t => t.QuarterYear == ("Q4 " + previousYear));
                var pquater4Sales = 0;
                if (pquater4 != null)
                    pquater4Sales = pquater4.M1 + pquater4.M2 + pquater4.M3;

                var PerformanceVM = new PlanPerformanceViewModel
                {
                    SaleId = sales.SaleId,
                    M1 = sales.M1,
                    M2 = sales.M2,
                    M3 = sales.M3,
                    PartnerId = sales.PartnerId,
                    ProductCategory = product.ProductCategory,
                    ProductDescription = product.ProductDescription,
                    ProductId = product.ProductId,
                    CQ1 = cquater1Sales,
                    CQ2 = cquater2Sales,
                    CQ3 = cquater3Sales,
                    CQ4 = cquater4Sales,
                    PQ1 = pquater1Sales,
                    PQ2 = pquater2Sales,
                    PQ3 = pquater3Sales,
                    PQ4 = pquater4Sales
                };


                var prevQtr = Utility.QuarterHelper.GetPrevQuarter(Quater);
                var prevQtrSales = _db.Sales.Where(t => t.PartnerId == PartnerId && t.ProductId == product.ProductId && t.QuarterYear == prevQtr.QuarterYear).ToList();
                if (prevQtrSales.Any())
                {
                    SaleVM.PrevQtr = prevQtrSales.Sum(t => t.M1 + t.M2 + t.M3);
                    PerformanceVM.PrevQtr = prevQtrSales.Sum(t => t.M1 + t.M2 + t.M3);
                }

                SaleVMList.Add(SaleVM);

                PlanPerformanceVMList.Add(PerformanceVM);

            }
            GridView1.DataSource = PlanPerformanceVMList;
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

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                for (int i = 0; i < e.Row.Cells.Count; i++)
                {
                    e.Row.Cells[i].CssClass = "centeralign";
                }

                var currentYear = Quater.Split(' ')[1];

                var previousYear = (Convert.ToInt32(currentYear) - 1).ToString();

                e.Row.Cells[0].ColumnSpan = 2;
                e.Row.Cells[0].Text = "Category";

                e.Row.Cells[1].Text = "Q1 " + currentYear;
                e.Row.Cells[2].Text = "Q2 " + currentYear;
                e.Row.Cells[3].Text = "Q3 " + currentYear;
                e.Row.Cells[4].Text = "Q4 " + currentYear;

                e.Row.Cells[5].Text = "Q1 " + previousYear;
                e.Row.Cells[6].Text = "Q2 " + previousYear;
                e.Row.Cells[7].Text = "Q3 " + previousYear;
                e.Row.Cells[8].Text = "Q4 " + previousYear;

                e.Row.Cells[9].Text = Utility.QuarterHelper.GetMonthName(Quater, 1);
                e.Row.Cells[10].Text = Utility.QuarterHelper.GetMonthName(Quater, 2);
                e.Row.Cells[11].Text = Utility.QuarterHelper.GetMonthName(Quater, 3);

                //e.Row.Cells[12].Text = Quater + " Sales";

                //e.Row.Cells[13].Text = Utility.QuarterHelper.GetPrevQuarter(Quater).QuarterYear;
                e.Row.Cells[12].Text = "YoY Growth %";
                e.Row.Cells[13].Text = "Seg Growth %";

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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.Header)
            //    e.Row.Cells[2].Visible = false;
        }
    }
}
