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
            //GridView1.UseAccessibleHeader = true;
            //GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;

        }

        protected void GridView1_DataBound1(object sender, EventArgs e)
        {

            //for (int rowIndex = GridView1.Rows.Count - 2;
            //                                   rowIndex >= 0; rowIndex--)
            //{
            //    GridViewRow gvRow = GridView1.Rows[rowIndex];
            //    GridViewRow gvPreviousRow = GridView1.Rows[rowIndex + 1];

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

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {

                GridView HeaderGrid = (GridView)sender;
                GridViewRow HeaderRow = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Insert);
                TableCell Cell_Header = new TableCell();
                Cell_Header.Text = "Previous year";
                Cell_Header.HorizontalAlign = HorizontalAlign.Center;
                Cell_Header.ColumnSpan = 2;
                HeaderRow.Cells.Add(Cell_Header);

                Cell_Header = new TableCell();
                Cell_Header.Text = "Current Year";
                Cell_Header.HorizontalAlign = HorizontalAlign.Center;
                Cell_Header.ColumnSpan = 2;
                HeaderRow.Cells.Add(Cell_Header);

                Cell_Header = new TableCell();
                Cell_Header.Text = "Quantity";
                Cell_Header.HorizontalAlign = HorizontalAlign.Center;
                Cell_Header.ColumnSpan = 1;
                Cell_Header.RowSpan = 2;
                HeaderRow.Cells.Add(Cell_Header);

                Cell_Header = new TableCell();
                Cell_Header.Text = "YOY Growth %";
                Cell_Header.HorizontalAlign = HorizontalAlign.Center;
                Cell_Header.ColumnSpan = 1;
                Cell_Header.RowSpan = 2;
                HeaderRow.Cells.Add(Cell_Header);


               

                GridView1.Controls[0].Controls.AddAt(0, HeaderRow);


                //for (int i = 0; i < e.Row.Cells.Count; i++)
                //{
                //    e.Row.Cells[i].CssClass = "centeralign";
                //}

                //e.Row.Cells[0].ColumnSpan = 2;
                //e.Row.Cells[0].Text = "Category";

                //e.Row.Cells[1].Text = Utility.QuarterHelper.GetMonthName(Quater, 1);
                //e.Row.Cells[2].Text = Utility.QuarterHelper.GetMonthName(Quater, 2);
                //e.Row.Cells[3].Text = Utility.QuarterHelper.GetMonthName(Quater, 3);

                //e.Row.Cells[4].Text = Quater + " Sales";

                //e.Row.Cells[5].Text = Utility.QuarterHelper.GetPrevQuarter(Quater).QuarterYear;
                //e.Row.Cells[6].Text = "YoY";

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
