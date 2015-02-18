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

        public int TargetUnit { get; set; }

        public int TargetAmount { get; set; }

        public int SalesUnit { get; set; }

        public int SalesAmount { get; set; }

        public int AchievedAmount
        {
            get
            { return (SalesAmount*100)/TargetAmount; }
        }

        public int AchievedUnit
        {
            get
            { return (SalesUnit * 100) / TargetUnit; }
        }

    }
}