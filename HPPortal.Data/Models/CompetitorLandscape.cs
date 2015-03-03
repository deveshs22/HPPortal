using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HPPortal.Data.Models
{
    public partial class CompetitorLandscape
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
       public virtual Partner Partner { get; set; }
       public virtual Competitor Competitor { get; set; }
    }
}
