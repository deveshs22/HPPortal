using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    public partial class OutletCategory
    {
        public OutletCategory()
        {
            this.Outlets = new List<Outlet>();
        }

        public int OutletCategoryId { get; set; }
        public string Description { get; set; }
        public Nullable<bool> Active { get; set; }
        public virtual ICollection<Outlet> Outlets { get; set; }
    }
}
