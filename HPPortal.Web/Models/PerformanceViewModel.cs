using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HPPortal.Web.Models
{
    public class PerformanceViewModel
    {
        public string QuarterYear { get; set; }

        public string CityDescription { get; set; }

        public int CityId { get; set; }

        public string Category { get; set; }

        public int TargetUnit { get; set; }

        public decimal TargetAmount { get; set; }

        public int SalesUnit { get; set; }

        public decimal SalesAmount { get; set; }

        public int AchievedAmount
        {
            get
            {
                if (TargetAmount != 0)
                    return (int)((SalesAmount * 100) / TargetAmount);
                else
                    return 0;
            }
        }

        public int AchievedUnit
        {
            get
            {
                if (TargetUnit != 0)
                    return (SalesUnit * 100) / TargetUnit;
                else
                    return 0;
            }
        }

    }
}