using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    public partial class User
    {
        public User()
        {
            this.Partners = new List<Partner>();
            this.User1 = new List<User>();
            this.Cities = new List<City>();
        }

        public int UserId { get; set; }
        public string EmailId { get; set; }
        public string Pwd { get; set; }
        public string Name { get; set; }
        public int RoleId { get; set; }
        public Nullable<int> ReportingId { get; set; }
        public Nullable<bool> Active { get; set; }
        public string Mobile { get; set; }
        public virtual ICollection<Partner> Partners { get; set; }
        public virtual Role Role { get; set; }
        public virtual ICollection<User> User1 { get; set; }
        public virtual User User2 { get; set; }
        public virtual ICollection<City> Cities { get; set; }
    }
}
