using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    public partial class UserCity
    {
        public int UserId { get; set; }
        public int CityId { get; set; }
        public int ZoneId { get; set; }
        public virtual City City { get; set; }
        public virtual User User { get; set; }
        public virtual UserCity UserCity1 { get; set; }
        public virtual UserCity UserCity2 { get; set; }
    }
}
