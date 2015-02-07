using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    /// <summary>
    /// City
    /// </summary>
    public partial class City
    {
        public City()
        {
            this.Outlets = new List<Outlet>();
            this.Users = new List<User>();
        }

        public int CityId { get; set; }
        public string Description { get; set; }
        public int ZoneId { get; set; }
        public Nullable<bool> Active { get; set; }
        public virtual Zone Zone { get; set; }
        public virtual ICollection<Outlet> Outlets { get; set; }
        public virtual ICollection<User> Users { get; set; }
    }
}
