using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    public partial class Zone
    {
        public Zone()
        {
            this.Cities = new List<City>();
        }

        public int ZoneId { get; set; }
        public string Description { get; set; }
        public Nullable<bool> Active { get; set; }
        public virtual ICollection<City> Cities { get; set; }
    }
}
