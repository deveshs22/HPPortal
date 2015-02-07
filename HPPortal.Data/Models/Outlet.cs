using System;
using System.Collections.Generic;

namespace HPPortal.Data.Models
{
    public partial class Outlet
    {
        public int OutletId { get; set; }
        public string OutletName { get; set; }
        public string ContactPerson { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }
        public string Address { get; set; }
        public string CustomerSegmentsAddressed { get; set; }
        public string CoreBusiness { get; set; }
        public string CurrentBrands { get; set; }
        public string MainCompetitors { get; set; }
        public int StaffCount { get; set; }
        public int OutletCategoryId { get; set; }
        public int CityId { get; set; }
        public int AssociatedUserId { get; set; }
        public string FrequencyOfEngagement { get; set; }
        public string RelationshipStatus { get; set; }
        public bool Active { get; set; }
        public virtual City City { get; set; }
        public virtual OutletCategory OutletCategory { get; set; }
        public virtual User User { get; set; }
    }
}
