using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    /// <summary>
    /// City
    /// </summary>
    /// 
    [Serializable]
    public partial class City
    {
        public City()
        {
            this.Partners = new List<Partner>();
            this.Users = new List<User>();
        }

        public int CityId { get; set; }
        public string Description { get; set; }
        public int ZoneId { get; set; }
        public Nullable<bool> Active { get; set; }
        public virtual Zone Zone { get; set; }
        public virtual ICollection<Partner> Partners { get; set; }
        public virtual ICollection<User> Users { get; set; }
    }
}
