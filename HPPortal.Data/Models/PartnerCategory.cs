using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    [Serializable]
    public partial class PartnerCategory
    {
        public PartnerCategory()
        {
            this.Partners = new List<Partner>();
            this.Users = new List<User>();
        }

        public int PartnerCategoryId { get; set; }
        public string Description { get; set; }
        public Nullable<bool> Active { get; set; }
        public virtual ICollection<Partner> Partners { get; set; }
        public virtual ICollection<User> Users { get; set; }
    }
}
