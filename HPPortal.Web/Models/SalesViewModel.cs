using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HPPortal.Web.Models
{
    public class SalesViewModel
    {
        public int SaleId { get; set; }
        public decimal M1 { get; set; }
        public decimal M2 { get; set; }
        public decimal M3 { get; set; }
        public int ProductId { get; set; }
        public int PartnerId { get; set; }
        public string QuarterYear { get; set; }

        public string ProductDescription { get; set; }
        public string ProductCategory { get; set; }

        public decimal QuarterTotal
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

        public decimal M1 { get; set; }
        public decimal M2 { get; set; }
        public decimal M3 { get; set; }

        // Previous year quater
        public decimal PQ1 { get; set; }
        public decimal PQ2 { get; set; }
        public decimal PQ3 { get; set; }
        public decimal PQ4 { get; set; }

        // Current year quater
        public decimal CQ1 { get; set; }
        public decimal CQ2 { get; set; }
        public decimal CQ3 { get; set; }
        public decimal CQ4 { get; set; }


        public int ProductId { get; set; }
        public int PartnerId { get; set; }
        public string QuarterYear { get; set; }

        public string ProductDescription { get; set; }
        public string ProductCategory { get; set; }

        public decimal QuarterTotal
        {
            get { return M1 + M2 + M3; }
        }


        public decimal CurrentYearTotal
        {
            get { return CQ1 + CQ2 + CQ3 + CQ4; }
        }

        public decimal PreviousYearTotal
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