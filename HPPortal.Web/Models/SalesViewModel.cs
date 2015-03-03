using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HPPortal.Web.Models
{
    public class SalesViewModel
    {
        public int SaleId { get; set; }
        public int M1 { get; set; }
        public int M2 { get; set; }
        public int M3 { get; set; }
        public int ProductId { get; set; }
        public int PartnerId { get; set; }
        public string QuarterYear { get; set; }

        public string ProductDescription { get; set; }
        public string ProductCategory { get; set; }

        public int QuarterTotal
        {
            get { return M1 + M2 + M3; }
        }

        public decimal PrevQtr { get; set; }
        public decimal YoY { get; set; }
        public decimal PrevYrQtr { get; set; }
    }

    public class PlanPerformanceViewModel
    {
        public int SaleId { get; set; }

        public int M1 { get; set; }
        public int M2 { get; set; }
        public int M3 { get; set; }

        // Previous year quater
        public int PQ1 { get; set; }
        public int PQ2 { get; set; }
        public int PQ3 { get; set; }
        public int PQ4 { get; set; }

        // Current year quater
        public int CQ1 { get; set; }
        public int CQ2 { get; set; }
        public int CQ3 { get; set; }
        public int CQ4 { get; set; }


        public int ProductId { get; set; }
        public int PartnerId { get; set; }
        public string QuarterYear { get; set; }

        public string ProductDescription { get; set; }
        public string ProductCategory { get; set; }

        public int QuarterTotal
        {
            get { return M1 + M2 + M3; }
        }


        public int CurrentYearTotal
        {
            get { return CQ1 + CQ2 + CQ3 + CQ4; }
        }

        public int PreviousYearTotal
        {
            get { return PQ1 + PQ2 + PQ3 + PQ4; }
        }

        public decimal PrevQtr { get; set; }
        public decimal YoY
        {
            get
            {
                if (PreviousYearTotal > 0)
                {
                    decimal percent = (CurrentYearTotal * 100 / PreviousYearTotal);
                    return Math.Round(percent, 2);
                }
                else
                    return 0;
            }
        }

        public decimal SegGrowth
        {
            get
            {
                if (PrevQtr > 0)
                {
                    decimal percent = (QuarterTotal * 100 / PrevQtr);
                    return Math.Round(percent, 2);
                }
                else
                    return 0;
            }
        }

        public decimal PrevYrQtr { get; set; }
    }
}