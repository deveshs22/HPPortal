using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    public partial class PlacementProduct
    {
        public PlacementProduct()
        {
            this.PlacementTargets = new List<PlacementTarget>();
        }

        public int PlacementProductId { get; set; }
        public string PlacementProductDescription { get; set; }
        public virtual ICollection<PlacementTarget> PlacementTargets { get; set; }
        public bool Active { get; set; }
    }
}
