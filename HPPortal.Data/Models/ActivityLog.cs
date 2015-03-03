using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    public partial class ActivityLog
    {
        public int LogId { get; set; }
        public string Module { get; set; }
        public int UserId { get; set; }
        public int PartnerId { get; set; }
        public string QuarterYear { get; set; }
        public System.DateTime LogDate { get; set; }
        public virtual Partner Partner { get; set; }
        public virtual User User { get; set; }
    }
}
