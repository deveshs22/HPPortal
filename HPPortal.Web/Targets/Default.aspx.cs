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
                FillGridView();
            }
        }

        private void FillGridView()
        {
            var qtr = "Q1 2015";
            var partnerId = 1;
            var targetVMList = new List<TargetViewModel>();
            var products = _db.Products;

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

                targetVMList.Add(targetVM);

            }
            GridView1.DataSource = targetVMList;
            GridView1.DataBind();
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
                    e.Row.Cells[i].HorizontalAlign = HorizontalAlign.Center;
                }

                e.Row.Cells[0].ColumnSpan = 2;
                e.Row.Cells[0].Text = "Category";
                

                e.Row.Cells[1].Text = "Jan";
                e.Row.Cells[2].Text = "Feb";
                e.Row.Cells[3].Text = "Mar";

               
            }
        }

        void AddHeaderRow1()
        {
            GridViewRow gr = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Insert);

            TableHeaderCell thc1 = new TableHeaderCell();
            TableHeaderCell thc2 = new TableHeaderCell();
            

            thc1.Text = "Category";
            thc2.Text = "Q1 2015";
            
            thc1.ColumnSpan = 2;
            thc2.ColumnSpan = 3;
            
            // Assign CSS
            thc1.CssClass = "panel panel-success";
            thc2.CssClass = "panel panel-success";

            gr.Cells.AddRange(new TableCell[] { thc1, thc2 });

            GridView1.Controls[0].Controls.AddAt(0, gr);
        }

        void AddHeaderRow2()
        {
            GridViewRow gr = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Insert);

            TableHeaderCell thc1 = new TableHeaderCell();
            TableHeaderCell thc2 = new TableHeaderCell();
            TableHeaderCell thc3 = new TableHeaderCell();
            TableHeaderCell thc4 = new TableHeaderCell();
            TableHeaderCell thc5 = new TableHeaderCell();
            //TableHeaderCell thc6 = new TableHeaderCell();
            //TableHeaderCell thc7 = new TableHeaderCell();
            //TableHeaderCell thc8 = new TableHeaderCell();
            //TableHeaderCell thc9 = new TableHeaderCell();

            thc1.Text = "";
            thc2.Text = "Bus";
            thc3.Text = "Taxi";
            thc4.Text = "Car";
            thc5.Text = "Bus";
            //thc6.Text = "Taxi";
            //thc7.Text = "Car";
            //thc8.Text = "Bus";
            //thc9.Text = "Taxi";

            // Assign CSS
            thc1.CssClass = "Car";
            thc2.CssClass = "Bus";
            thc3.CssClass = "Taxi";
            thc4.CssClass = "Car";
            thc5.CssClass = "Bus";
            //thc6.CssClass = "Taxi";
            //thc7.CssClass = "Car";
            //thc8.CssClass = "Bus";
            //thc9.CssClass = "Taxi";

            gr.Cells.AddRange(new TableCell[] { thc1, thc2, thc3, thc4, thc5, });//thc6, thc7, thc8, thc9 });

            GridView1.Controls[0].Controls.AddAt(1, gr);
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
                    target.PartnerId = 1;
                    target.QuarterYear = "Q1 2015";
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
                    _db.Entry<Target>(target).State = EntityState.Modified;
                else
                    _db.Targets.Add(target);

                _db.SaveChanges();

                FillGridView();
            
            }
        }
    }
}