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
    public class ActionReqdSlide
    {
        private HPSiteDBContext _db = new HPSiteDBContext();

        public void Generate(Partner partner, string quarter, SlidePart slide)
        {
            var list = GetData(partner.PartnerId, quarter);
            var tbl = slide.Slide.Descendants<Table>().First();
            var rows = tbl.Descendants<TableRow>().ToList();
            var templateRow = rows[1];
           
            var goals = (from b in list
                                    group b by b.GoalName into g
                                    select new {Name = g.First().GoalName , ItemCount = g.Count()}).ToList();

            foreach (var item in list)
            {
                var placeHolders = new Dictionary<string, string>();
                placeHolders.Add("varGoals", item.GoalName);
                placeHolders.Add("varPrevious", item.PreviousQuarter);
                placeHolders.Add("varCurrent", item.QuarterPlan);
                placeHolders.Add("varAction", item.ActionRequired);
                placeHolders.Add("varUser", string.Join(",", item.Users.Select(x => x.Name)));

                TableRow newRow = (TableRow)templateRow.Clone();
                PptHelper.ReplaceRowContent(newRow, placeHolders);

                var cells = newRow.Descendants<TableCell>().ToList();

                if (goals.Any(c => c.Name == item.GoalName))
                {
                    var goalItem = goals.First(c => c.Name == item.GoalName);
                    cells[0].VerticalMerge = true;
                    cells[0].RowSpan = goalItem.ItemCount;

                    cells[1].VerticalMerge = true;
                    cells[1].RowSpan = goalItem.ItemCount;

                    cells[2].VerticalMerge = true;
                    cells[2].RowSpan = goalItem.ItemCount;

                    goals.Remove(goalItem);
                }

                tbl.Append(newRow);
            }
            rows[1].Remove();
        }
              

        private List<ActionForTargetedGoal> GetData(int partnerId, string quarter)
        {
            var data = _db.ActionForTargetedGoals.Where(s => s.PartnerId == partnerId && s.QuarterYear == quarter).OrderBy(s => s.GoalName);

            if (data.Any())
                return data.ToList();

            return new List<ActionForTargetedGoal>();
        }
    }

}