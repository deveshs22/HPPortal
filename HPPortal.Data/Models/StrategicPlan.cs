using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HPPortal.Data.Models
{
    public partial class StrategicPlan
    {
        public int StrategicPlanId { get; set; }
        public string BusinessObjective { get; set; }
        public string Strategies { get; set; }
        public string Metrics { get; set; }
        public string QuarterYear { get; set; }
        public Nullable<int> AssignedUserId { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> CreatedUser { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public Nullable<int> ModifiedUser { get; set; }
        public string Comments { get; set; }
        public string CheckpointState { get; set; }
        public virtual User User { get; set; }
        public int PartnerId { get; set; }
        public virtual Partner Partner { get; set; }
    }
}
