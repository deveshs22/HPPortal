using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPPortal.Data.Models;
using System.Data.Entity;
using HPPortal.Web.Models;

namespace HPPortal.Web.Competitor
{
    public partial class CompetitiveLandscape : System.Web.UI.Page
    {
        HPSiteDBContext _db = new HPSiteDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Convert.ToString(Request.QueryString["pid"])))
                {
                    PartnerId = Convert.ToInt32(Request.QueryString["pid"]);
                    Quater = Convert.ToString(Request.QueryString["qtr"]);
                }
                if (PartnerId == 0)
                    Response.Redirect("/JBPlan.aspx");

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
            var CompetitorVMList = new List<CompetitorViewModel>();
            var Competitors = _db.Competitors;

            foreach (var Competitor in Competitors)
            {
                var CompetitorsLi = _db.CompetitorLandscapes.FirstOrDefault(t => t.PartnerId == partnerId && t.QuarterYear == qtr && t.CategoryId == Competitor.CategoryId);

                if (CompetitorsLi == null)
                    CompetitorsLi = new Data.Models.CompetitorLandscape();

                var CompetitorVM = new CompetitorViewModel
                {
                    CompetitorId = CompetitorsLi.CompetitorId,
                    Share = CompetitorsLi.Share,
                    BrandPresenc = CompetitorsLi.BrandPresenc,
                    PriceStrategy = CompetitorsLi.PriceStrategy,
                    StoreInvestment=CompetitorsLi.StoreInvestment,
                    AdditionalComment=CompetitorsLi.AdditionalComment,
                    PartnerId = CompetitorsLi.PartnerId,
                    CategoryName = Competitor.CategoryName,
                    CompetitorName = Competitor.CompetitorName,
                    CategoryId = Competitor.CategoryId,
                    QuarterYear = CompetitorsLi.QuarterYear
                };

                CompetitorVMList.Add(CompetitorVM);

            }
            GridView1.DataSource = CompetitorVMList;
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
                e.Row.Cells[0].Text = "Category";

                e.Row.Cells[1].Text = "Competitor Name";
                e.Row.Cells[2].Text = "Share %";
                e.Row.Cells[3].Text = "Brand Presenc";

                e.Row.Cells[4].Text = "Price Straregy";

                e.Row.Cells[5].Text = "In-Store-Investment";
                e.Row.Cells[6].Text = "Additional Comments";

            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                var CompetitorId = 0;
                var competitorLandscape = new Data.Models.CompetitorLandscape();

                var hdnCompetitorId = (HiddenField)row.FindControl("hdnCompetitorId");
                if (hdnCompetitorId != null && !string.IsNullOrEmpty(hdnCompetitorId.Value))
                    CompetitorId = Convert.ToInt32(hdnCompetitorId.Value);

                if (CompetitorId > 0)
                    competitorLandscape = _db.CompetitorLandscapes.Find(CompetitorId);
                else
                {
                    competitorLandscape.CategoryId = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value.ToString());
                    competitorLandscape.PartnerId = PartnerId;
                    competitorLandscape.QuarterYear = Quater;
                }

                var txtShare = (TextBox)row.FindControl("txtShare");
                if (txtShare != null)
                    competitorLandscape.Share = Convert.ToInt32(txtShare.Text);

                var txtBrandPresenc = (TextBox)row.FindControl("txtBrandPresenc");
                if (txtBrandPresenc != null)
                    competitorLandscape.BrandPresenc = Convert.ToInt32(txtBrandPresenc.Text);

                var txtPriceStrategy = (TextBox)row.FindControl("txtPriceStrategy");
                if (txtPriceStrategy != null)
                    competitorLandscape.PriceStrategy = Convert.ToString(txtPriceStrategy.Text);

                var txtStoreInvestment = (TextBox)row.FindControl("txtStoreInvestment");
                if (txtStoreInvestment != null)
                    competitorLandscape.StoreInvestment = Convert.ToString(txtStoreInvestment.Text);

                var txtAdditionalComment = (TextBox)row.FindControl("txtAdditionalComment");
                if (txtAdditionalComment != null)
                    competitorLandscape.AdditionalComment = Convert.ToString(txtAdditionalComment.Text);

                if (CompetitorId > 0)
                    _db.Entry<CompetitorLandscape>(competitorLandscape).State = EntityState.Modified;
                else
                    _db.CompetitorLandscapes.Add(competitorLandscape);

                _db.SaveChanges();

                FillGridView();

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