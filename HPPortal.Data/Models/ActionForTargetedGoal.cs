using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HPPortal.Data.Models
{
    /// <summary>
    /// ActionForTargetedGoal
    /// </summary>
    /// 
    [Serializable]
    public class ActionForTargetedGoal
    {
        public int ActionId { get; set; }
        public string GoalName { get; set; }
        public string ActionRequired { get; set; }
        public string QuarterYear { get; set; }
        public string QuarterPlan { get; set; }
        public string PreviousQuarter { get; set; }
        public Nullable<int> AssignedUserId { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> CreatedUser { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public Nullable<int> ModifiedUser { get; set; }
        public Nullable<int> PartnerId { get; set; }
        public virtual Partner Partner { get; set; }
        public virtual User User { get; set; }
    }
}
