using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    public partial class PartnerCategory
    {
        public PartnerCategory()
        {
            this.Partners = new List<Partner>();
        }

        public int PartnerCategoryId { get; set; }
        public string Description { get; set; }
        public Nullable<bool> Active { get; set; }
        public virtual ICollection<Partner> Partners { get; set; }
    }
}
