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
    public class PlanPerformanceSlide
    {
        private HPSiteDBContext _db = new HPSiteDBContext();

        public void Generate(Partner partner, string quarter, SlidePart slide)
        {
            var list = GetData(partner.PartnerId, quarter);
            var tbl = slide.Slide.Descendants<Table>().First();
            RemoveExtraQuarters(tbl, quarter);

            var rows = tbl.Descendants<TableRow>().ToList();

            var currentYear = quarter.Split(' ')[1];
            var previousYear = (Convert.ToInt32(currentYear) - 1).ToString();

            var headerPlaceHolders = new Dictionary<string, string>();
            headerPlaceHolders.Add("varHPYQ1", "Q1 " + previousYear);
            headerPlaceHolders.Add("varHPYQ2", "Q2 " + previousYear);
            headerPlaceHolders.Add("varHPYQ3", "Q3 " + previousYear);
            headerPlaceHolders.Add("varHPYQ4", "Q4 " + previousYear);

            headerPlaceHolders.Add("varHCYQ1", "Q1 " + currentYear);
            headerPlaceHolders.Add("varHCYQ2", "Q2 " + currentYear);
            headerPlaceHolders.Add("varHCYQ3", "Q3 " + currentYear);
            headerPlaceHolders.Add("varHCYQ4", "Q4 " + currentYear);

            headerPlaceHolders.Add("varHM1", Utility.QuarterHelper.GetMonthName(quarter, 1));
            headerPlaceHolders.Add("varHM2", Utility.QuarterHelper.GetMonthName(quarter, 2));
            headerPlaceHolders.Add("varHM3", Utility.QuarterHelper.GetMonthName(quarter, 3));
            PptHelper.ReplaceRowContent(rows[0], headerPlaceHolders);

            var templateRow = rows[1];

            var categoryItems = (from b in list
                                 group b by b.ProductDescription into g
                                 select new { Name = g.First().ProductDescription, ItemCount = g.Count() }).ToList();

            foreach (var item in list)
            {
                var placeHolders = new Dictionary<string, string>();
                placeHolders.Add("varCat", item.ProductDescription);
                placeHolders.Add("varProduct", item.ProductCategory);
                placeHolders.Add("varPYQ1", item.PQ1.ToString());
                placeHolders.Add("varPYQ2", item.PQ2.ToString());
                placeHolders.Add("varPYQ3", item.PQ3.ToString());
                placeHolders.Add("varPYQ4", item.PQ4.ToString());
                placeHolders.Add("varCYQ1", item.CQ1.ToString());
                placeHolders.Add("varCYQ2", item.CQ2.ToString());
                placeHolders.Add("varCYQ3", item.CQ3.ToString());
                placeHolders.Add("varCYQ4", item.CQ4.ToString());
                placeHolders.Add("varM1", item.M1.ToString());
                placeHolders.Add("varM2", item.M2.ToString());
                placeHolders.Add("varM3", item.M3.ToString());
                placeHolders.Add("varYoy", item.YoY.ToString());
                placeHolders.Add("varGrowth", item.SegGrowth.ToString());

                TableRow newRow = (TableRow)templateRow.Clone();
                PptHelper.ReplaceRowContent(newRow, placeHolders);

                var cells = newRow.Descendants<TableCell>().ToList();

                if (categoryItems.Any(c => c.Name == item.ProductDescription))
                {
                    var categoryItem = categoryItems.First(c => c.Name == item.ProductDescription);
                    cells[0].VerticalMerge = true;
                    cells[0].RowSpan = categoryItem.ItemCount;
                    categoryItems.Remove(categoryItem);
                }
                tbl.Append(newRow);
            }
            rows[1].Remove();
        }

        private void RemoveExtraQuarters(Table tbl, string quarter)
        {
            var rows = tbl.Descendants<TableRow>().ToList();
            int cyStartIndex = 6;
            foreach (var row in rows)
            {
                var cells = row.Descendants<TableCell>().ToList();

                if (quarter.Contains("Q1"))
                {
                    cells[cyStartIndex + 1].Remove();
                    cells[cyStartIndex + 2].Remove();
                    cells[cyStartIndex + 3].Remove();
                }
                if (quarter.Contains("Q2"))
                {
                    cells[cyStartIndex + 2].Remove();
                    cells[cyStartIndex + 3].Remove();
                }
                if (quarter.Contains("Q3"))
                {
                    cells[cyStartIndex + 3].Remove();
                }
            }

            var grid = tbl.Descendants<TableGrid>().First();
            var columns = grid.Descendants<GridColumn>().ToList();
            if (quarter.Contains("Q1"))
            {
                columns[cyStartIndex + 1].Remove();
                columns[cyStartIndex + 2].Remove();
                columns[cyStartIndex + 3].Remove();
            }
            if (quarter.Contains("Q2"))
            {
                columns[cyStartIndex + 2].Remove();
                columns[cyStartIndex + 3].Remove();
            }
            if (quarter.Contains("Q3"))
            {
                columns[cyStartIndex + 3].Remove();
            }

        }        
           
            
        private List<PlanPerformanceViewModel> GetData(int partnerId, string quarter)
        {                    
            var SaleVMList = new List<SalesViewModel>();
            var PlanPerformanceVMList = new List<PlanPerformanceViewModel>();

            var products = _db.Products.OrderBy(p => p.SortOrder);

            foreach (var product in products)
            {
                var sales = _db.Sales.FirstOrDefault(t => t.PartnerId == partnerId && t.QuarterYear == quarter && t.ProductId == product.ProductId);

                if (sales == null)
                    sales = new Data.Models.Sale();

                var currentYear = quarter.Split(' ')[1];

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
                decimal cquater1Sales = 0;
                if (cquater1 != null)
                    cquater1Sales = cquater1.M1 + cquater1.M2 + cquater1.M3;
                var cquater2 = currentYearData.FirstOrDefault(t => t.QuarterYear == ("Q2 " + currentYear));

                decimal cquater2Sales = 0;
                if (cquater2 != null)
                    cquater2Sales = cquater2.M1 + cquater2.M2 + cquater2.M3;
                var cquater3 = currentYearData.FirstOrDefault(t => t.QuarterYear == ("Q3 " + currentYear));

                decimal cquater3Sales = 0;
                if (cquater3 != null)
                    cquater3Sales = cquater3.M1 + cquater3.M2 + cquater3.M3;
                var cquater4 = currentYearData.FirstOrDefault(t => t.QuarterYear == ("Q4 " + currentYear));

                decimal cquater4Sales = 0;
                if (cquater4 != null)
                    cquater4Sales = cquater4.M1 + cquater4.M2 + cquater4.M3;

                var pquater1 = previousYearData.FirstOrDefault(t => t.QuarterYear == ("Q1 " + previousYear));
                decimal pquater1Sales = 0;
                if (pquater1 != null)
                    pquater1Sales = pquater1.M1 + pquater1.M2 + pquater1.M3;

                var pquater2 = previousYearData.FirstOrDefault(t => t.QuarterYear == ("Q2 " + previousYear));
                decimal pquater2Sales = 0;
                if (pquater2 != null)
                    pquater2Sales = pquater2.M1 + pquater2.M2 + pquater2.M3;

                var pquater3 = previousYearData.FirstOrDefault(t => t.QuarterYear == ("Q3 " + previousYear));
                decimal pquater3Sales = 0;
                if (pquater3 != null)
                    pquater3Sales = pquater3.M1 + pquater3.M2 + pquater3.M3;

                var pquater4 = previousYearData.FirstOrDefault(t => t.QuarterYear == ("Q4 " + previousYear));
                decimal pquater4Sales = 0;
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


                var prevQtr = Utility.QuarterHelper.GetPrevQuarter(quarter);
                var prevQtrSales = _db.Sales.Where(t => t.PartnerId == partnerId && t.ProductId == product.ProductId && t.QuarterYear == prevQtr.QuarterYear).ToList();
                if (prevQtrSales.Any())
                {
                    SaleVM.PrevQtr = prevQtrSales.Sum(t => t.M1 + t.M2 + t.M3);
                    PerformanceVM.PrevQtr = prevQtrSales.Sum(t => t.M1 + t.M2 + t.M3);
                }

                SaleVMList.Add(SaleVM);

                PlanPerformanceVMList.Add(PerformanceVM);

            }

            return PlanPerformanceVMList;
        }
    }

}