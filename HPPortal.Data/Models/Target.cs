using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    public partial class Target
    {
        public int TargetId { get; set; }
        public int M1 { get; set; }
        public int M2 { get; set; }
        public int M3 { get; set; }
        public int ProductId { get; set; }
        public int PartnerId { get; set; }
        public string QuarterYear { get; set; }
        public virtual Partner Partner { get; set; }
        public virtual Product Product { get; set; }
    }
}
