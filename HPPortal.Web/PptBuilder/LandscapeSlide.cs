using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using DocumentFormat.OpenXml.Drawing;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Office2010.PowerPoint;
using DocumentFormat.OpenXml.Presentation;

using HPPortal.Data.Models;
using HPPortal.Web.Models;
using System.IO;
using System.Drawing;

namespace HPPortal.Web.PptBuilder
{
    public class LandscapeSlide
    {
        private HPSiteDBContext _db = new HPSiteDBContext();

        public void Generate(Partner partner, string quarter, SlidePart slide)
        {
            var list = GetData(partner.PartnerId, quarter);
            var tbl = slide.Slide.Descendants<Table>().First();
            var rows = tbl.Descendants<TableRow>().ToList();
            var templateRow = rows[1];
            string imageRel = "imageRelId";
            int imageRelId = 0;

            var categoryItems = (from b in list
                                    group b by b.CategoryName into g
                                    select new {Name = g.First().CategoryName , ItemCount = g.Count()}).ToList();

            foreach (var item in list)
            {
                var placeHolders = new Dictionary<string, string>();
                placeHolders.Add("varCategory", item.CategoryName);
                placeHolders.Add("varCompetitor", item.CompetitorName);
                placeHolders.Add("varShare", item.Share.ToString());
                placeHolders.Add("varPresence", item.BrandPresenc.ToString());
                placeHolders.Add("varPriceStrategy", item.PriceStrategy);
                placeHolders.Add("varInvestment", item.StoreInvestment);
                placeHolders.Add("varComments", item.AdditionalComment);

                TableRow newRow = (TableRow)templateRow.Clone();
                PptHelper.ReplaceRowContent(newRow, placeHolders);

                var fileName = "/Content/images/hp.gif";
                var imgPartType = ImagePartType.Jpeg;
                var imgArr = PptHelper.GetImageData(fileName, ref imgPartType);

                ImagePart imagePart = slide.AddImagePart(imgPartType, imageRel + imageRelId);
                PptHelper.GenerateImagePart(imagePart, imgArr);


                var cells = newRow.Descendants<TableCell>().ToList();
                //cells[2].Remove();

                var newImgCell = PptHelper.CreateDrawingCell(imageRel + imageRelId);
                //newRow.InsertAt(newImgCell, 2);

                if (categoryItems.Any(c=>c.Name==item.CategoryName))
                {
                    var categoryItem = categoryItems.First(c=>c.Name==item.CategoryName);
                    cells[0].VerticalMerge = true;
                    cells[0].RowSpan = categoryItem.ItemCount;
                    categoryItems.Remove(categoryItem);
                }

                tbl.Append(newRow);

                imageRelId++;
            }
            rows[1].Remove();
        }
              

        private List<CompetitorViewModel> GetData(int partnerId, string quarter)
        {
            var CompetitorVMList = new List<CompetitorViewModel>();
            var Competitors = _db.Competitors;

            foreach (var Competitor in Competitors)
            {
                var CompetitorsLi = _db.CompetitorLandscapes.FirstOrDefault(t => t.PartnerId == partnerId && t.QuarterYear == quarter && t.CategoryId == Competitor.CategoryId);

                if (CompetitorsLi == null)
                    CompetitorsLi = new Data.Models.CompetitorLandscape();

                var CompetitorVM = new CompetitorViewModel
                {
                    CompetitorId = CompetitorsLi.CompetitorId,
                    Share = CompetitorsLi.Share,
                    BrandPresenc = CompetitorsLi.BrandPresenc,
                    PriceStrategy = CompetitorsLi.PriceStrategy,
                    StoreInvestment = CompetitorsLi.StoreInvestment,
                    AdditionalComment = CompetitorsLi.AdditionalComment,
                    PartnerId = CompetitorsLi.PartnerId,
                    CategoryName = Competitor.CategoryName,
                    CompetitorName = Competitor.CompetitorName,
                    CategoryId = Competitor.CategoryId,
                    QuarterYear = CompetitorsLi.QuarterYear
                };

                CompetitorVMList.Add(CompetitorVM);

            }
            return CompetitorVMList.OrderBy(c=>c.CategoryName).ToList();
        }
    }

}