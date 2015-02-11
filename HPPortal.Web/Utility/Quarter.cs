using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HPPortal.Web.Utility
{
    public static class QuarterHelper
    {
        static QuarterHelper()
        {
            Quarters = new List<Quarter>();
            Quarters.Add(new Quarter { MonthId = 1, QuarterId = 1, QuarterDescription = "Q1" });
            Quarters.Add(new Quarter { MonthId = 2, QuarterId = 1, QuarterDescription = "Q1" });
            Quarters.Add(new Quarter { MonthId = 3, QuarterId = 1, QuarterDescription = "Q1" });
            Quarters.Add(new Quarter { MonthId = 4, QuarterId = 2, QuarterDescription = "Q2" });
            Quarters.Add(new Quarter { MonthId = 5, QuarterId = 2, QuarterDescription = "Q2" });
            Quarters.Add(new Quarter { MonthId = 6, QuarterId = 2, QuarterDescription = "Q2" });
            Quarters.Add(new Quarter { MonthId = 7, QuarterId = 3, QuarterDescription = "Q3" });
            Quarters.Add(new Quarter { MonthId = 8, QuarterId = 3, QuarterDescription = "Q3" });
            Quarters.Add(new Quarter { MonthId = 9, QuarterId = 3, QuarterDescription = "Q3" });
            Quarters.Add(new Quarter { MonthId = 10, QuarterId = 4, QuarterDescription = "Q4" });
            Quarters.Add(new Quarter { MonthId = 11, QuarterId = 4, QuarterDescription = "Q4" });
            Quarters.Add(new Quarter { MonthId = 12, QuarterId = 4, QuarterDescription = "Q4" });
        }

        public static Quarter GetCurrentQuarter(DateTime date)
        {
            var qtr = Quarters.Find(q => q.MonthId == date.Month);
            var qtrYr = qtr.QuarterDescription + "'" + date.ToString("YY");
            return new Quarter
            {
                MonthId = qtr.MonthId,
                QuarterId = qtr.QuarterId,
                QuarterDescription =
                qtr.QuarterDescription,
                QuarterYear = qtrYr
            };
        }

        public static IEnumerable<Quarter> GetNextnCurrentQuarter(DateTime date)
        {
            var qtrs = Quarters.Where(q => q.MonthId == date.Month || q.MonthId == (date.Month + 3));
            var list = new List<Quarter>();
            foreach (var qtr in qtrs)
            {
                var qtrYr = qtr.QuarterDescription + "'" + date.ToString("YY");
                
                list.Add(
                new Quarter
                {
                    MonthId = qtr.MonthId,
                    QuarterId = qtr.QuarterId,
                    QuarterDescription =
                    qtr.QuarterDescription,
                    QuarterYear = qtrYr
                });
            }

            return list;
        }      
        
        public static List<Quarter> Quarters { get; set; }
    }

    public class Quarter
    {
        public int MonthId { get; set; }
        public int QuarterId { get; set; }
        public string QuarterDescription { get; set; }
        public string QuarterYear { get; set; }
    }
}