using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace HPPortal.Data.Models
{
    public partial class PlacementTarget
    {
        public int PlacementTargetId { get; set; }
        public int Units { get; set; }
        public int Stores { get; set; }
        public int PlacementProductId { get; set; }
        public int PartnerId { get; set; }
        public string QuarterYear { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> CreatedUser { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public Nullable<int> ModifiedUser { get; set; }
        public virtual Partner Partner { get; set; }
        public virtual PlacementProduct PlacementProduct { get; set; }

        [ScaffoldColumn(false)]
        public string PlacementProductDescription { get; set; }
    }
}
