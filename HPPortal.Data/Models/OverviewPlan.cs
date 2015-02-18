using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HPPortal.Data.Models
{
    [Serializable]
    public partial class OverviewPlan
    {
        public int OverviewPlanId { get; set; }
        public string Strength { get; set; }
        public string Weakness { get; set; }
        public string Opportunity { get; set; }
        public string SupportReqd { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> CreatedUser { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public Nullable<int> ModifiedUser { get; set; }
        public string Comments { get; set; }
        public string Quarter { get; set; }
        public int PartnerId { get; set; }
        public virtual Partner Partner { get; set; }
    }
}
