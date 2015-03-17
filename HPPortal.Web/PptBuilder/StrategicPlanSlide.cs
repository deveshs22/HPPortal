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
    public class StrategicPlanSlide
    {
        private HPSiteDBContext _db = new HPSiteDBContext();

        public void Generate(Partner partner, string quarter, SlidePart slide)
        {
            var list = GetData(partner.PartnerId, quarter);
            var tbl = slide.Slide.Descendants<Table>().First();
            var rows = tbl.Descendants<TableRow>().ToList();
            var templateRow = rows[1];

            foreach (var item in list)
            {
                var placeHolders = new Dictionary<string, string>();
                placeHolders.Add("varObjectives", item.BusinessObjective);
                placeHolders.Add("varStrategies", item.Strategies);
                placeHolders.Add("varMetrics", item.Metrics);
                placeHolders.Add("varCheckpoint", item.CheckpointState);


                TableRow newRow = (TableRow)templateRow.Clone();
                PptHelper.ReplaceRowContent(newRow, placeHolders);

                tbl.Append(newRow);
            }
            rows[1].Remove();
        }
              

        private List<StrategicPlan> GetData(int partnerId, string quarter)
        {
          var plans = _db.StrategicPlans.Where(s => s.PartnerId == partnerId && s.QuarterYear == quarter);

          if (plans == null)
              return new List<StrategicPlan>();

          return plans.ToList();
        }
    }

}