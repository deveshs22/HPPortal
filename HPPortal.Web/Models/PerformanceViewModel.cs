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

        public decimal TargetUnit { get; set; }

        public decimal TargetAmount { get; set; }

        public decimal SalesUnit { get; set; }

        public decimal SalesAmount { get; set; }

        public decimal AchievedAmount
        {
            get
            {
                if (TargetAmount != 0)
                    return (SalesAmount * 100) / TargetAmount;
                else
                    return 0;
            }
        }

        public decimal AchievedUnit
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