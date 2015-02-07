using System;
using System.Collections.Generic;
using System.ComponentModel;

namespace HPPortal.Data.Models
{
    public partial class User
    {
        public User()
        {
            this.Outlets = new List<Outlet>();
            this.User1 = new List<User>();
            this.Cities = new List<City>();
        }

        public int UserId { get; set; }
        [DisplayName("Email Address")]
        public string EmailId { get; set; }
        [DisplayName("Password")]
        public string Pwd { get; set; }
        public string Name { get; set; }
        [DisplayName("Role")]
        public int RoleId { get; set; }
        [DisplayName("Reporting")]
        public Nullable<int> ReportingId { get; set; }
        public Nullable<bool> Active { get; set; }
        public string Mobile { get; set; }
        public virtual ICollection<Outlet> Outlets { get; set; }
        public virtual Role Role { get; set; }
        public virtual ICollection<User> User1 { get; set; }
        public virtual User User2 { get; set; }
        public virtual ICollection<City> Cities { get; set; }
    }
}
