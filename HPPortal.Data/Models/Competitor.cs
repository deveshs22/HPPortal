using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HPPortal.Data.Models
{
    public partial class Competitor
    {
        public Competitor()
        {
            this.CompetitorLandscape =new List<CompetitorLandscape>();
        }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string CompetitorName { get; set; }
        public string CompetitorLogo { get; set; }
        public int SortBy { get; set; }
        public virtual ICollection<CompetitorLandscape> CompetitorLandscape { get; set; }
    }
}
