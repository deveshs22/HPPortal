using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HPPortal.Web.Models
{
    public class TargetViewModel
    {
        public int TargetId { get; set; }
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
}