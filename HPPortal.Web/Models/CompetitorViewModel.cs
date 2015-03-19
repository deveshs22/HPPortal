using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HPPortal.Web.Models
{
    public class CompetitorViewModel
    {
        public int CompetitorId { get; set; }
        public int Share { get; set; }
        public int BrandPresenc { get; set; }
        public string PriceStrategy { get; set; }
        public string StoreInvestment { get; set; }
        public string AdditionalComment { get; set; }
        public int CategoryId { get; set; }
        public int PartnerId { get; set; }
        public string QuarterYear { get; set; }

        public string CategoryName { get; set; }
        public string CompetitorName { get; set; }
        public string CompetitorLogo { get; set; }
    }
}