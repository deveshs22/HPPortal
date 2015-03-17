using System;
using System.Collections.Generic;
using System.Data.Entity;
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
    public class TargetedGoalSlide
    {
        private HPSiteDBContext _db = new HPSiteDBContext();

        public void Generate(Partner partner, string quarter, SlidePart slide)
        {
            var list = GetData(partner.PartnerId, quarter);
            
            var tblList = slide.Slide.Descendants<Table>().ToList();
            var tblMain = tblList[0];
            var tblPlacement = tblList[1];

            var rows = tblMain.Descendants<TableRow>().ToList();

            var headerPlaceHolders = new Dictionary<string, string>();
            headerPlaceHolders.Add("varQuarter", quarter);
            PptHelper.ReplaceRowContent(rows[0], headerPlaceHolders);

            var templateRow = rows[1];

            foreach (var item in list)
            {
                var placeHolders = new Dictionary<string, string>();
                placeHolders.Add("varGoal", item.TargetedGoalName);
                placeHolders.Add("varPlan", item.QuarterPlan);
                placeHolders.Add("varPrevious", item.PreviousQuarter);
                placeHolders.Add("varWantToBe", item.TargetGoal);
                
                TableRow newRow = (TableRow)templateRow.Clone();
                PptHelper.ReplaceRowContent(newRow, placeHolders);

                tblMain.Append(newRow);
            }
            rows[1].Remove();

            GeneratePalcementTable(partner, quarter, tblPlacement);
        }

        private void GeneratePalcementTable(Partner partner, string quarter, Table tbl)
        {
            var list = GetPlacementTargets(partner.PartnerId, quarter);

            var rows = tbl.Descendants<TableRow>().ToList();

            var headerPlaceHolders = new Dictionary<string, string>();
            headerPlaceHolders.Add("varQuarter", quarter);
            PptHelper.ReplaceRowContent(rows[1], headerPlaceHolders);

            var templateRow = rows[2];

            foreach (var item in list)
            {
                var placeHolders = new Dictionary<string, string>();
                placeHolders.Add("varProduct", item.PlacementProductDescription);
                placeHolders.Add("varStores", item.Stores.ToString());
                placeHolders.Add("varUnits", item.Units.ToString());
                
                TableRow newRow = (TableRow)templateRow.Clone();
                PptHelper.ReplaceRowContent(newRow, placeHolders);

                tbl.Append(newRow);
            }
            rows[2].Remove();

        }

        private List<TargetedGoal> GetData(int partnerId, string quarter)
        {
          var plans = _db.TargetedGoals.Where(s => s.PartnerId == partnerId && s.QuarterYear == quarter);

          if (plans == null)
              return new List<TargetedGoal>();

          return plans.ToList();
        }

        private List<PlacementTarget> GetPlacementTargets(int partnerId, string quarter)
        {
            var targetList = new List<PlacementTarget>();
            var products = _db.PlacementProducts.Where(p => p.Active).OrderBy(p => p.PlacementProductDescription);

            foreach (var product in products)
            {
                var target = _db.PlacementTargets.Include(t => t.PlacementProduct)
                    .FirstOrDefault(t => t.PartnerId == partnerId && t.QuarterYear == quarter && t.PlacementProductId == product.PlacementProductId);

                if (target == null)
                {
                    target = new Data.Models.PlacementTarget();
                    target.PlacementProduct = product;
                    target.PlacementProductId = product.PlacementProductId;
                }
                target.PlacementProductDescription = product.PlacementProductDescription;

                targetList.Add(target);

            }
            return targetList;
        }
    }

}