using System;
using System.Collections.Generic;
using System.ComponentModel;

namespace HPPortal.Data.Models
{
    [Serializable]
    public partial class Partner
    {
        public Partner()
        {
            this.Sales = new List<Sale>();
            this.Targets = new List<Target>();
            this.StrategicPlans = new List<StrategicPlan>();

        }

        public int PartnerId { get; set; }

        [DisplayName("Partner Name")]
        public string PartnerName { get; set; }

        [DisplayName("Contact Person")]
        public string ContactPerson { get; set; }

        public string Email { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }
        public string Address { get; set; }

        [DisplayName("Customer Segments")]
        public string CustomerSegmentsAddressed { get; set; }

        [DisplayName("Core Business")]
        public string CoreBusiness { get; set; }

        [DisplayName("Current Brands")]
        public string CurrentBrands { get; set; }

        [DisplayName("Main Competitors")]
        public string MainCompetitors { get; set; }

        [DisplayName("Staff Count")]
        public int StaffCount { get; set; }

        [DisplayName("Partner Category")]
        public int PartnerCategoryId { get; set; }

        [DisplayName("City")]
        public int CityId { get; set; }

        [DisplayName("Account Manager")]
        public int AssociatedUserId { get; set; }

        [DisplayName("Frequency Of Engagement")]
        public string FrequencyOfEngagement { get; set; }

        [DisplayName("Relationship Status")]
        public string RelationshipStatus { get; set; }

        public bool Active { get; set; }
        public virtual City City { get; set; }
        public virtual PartnerCategory PartnerCategory { get; set; }
        public virtual User User { get; set; }

        public virtual ICollection<Sale> Sales { get; set; }
        public virtual ICollection<Target> Targets { get; set; }

        public virtual ICollection<StrategicPlan> StrategicPlans { get; set; }

        public virtual ICollection<TargetedGoal> TargetedGoals { get; set; }
        public virtual ICollection<CompetitorLandscape> CompetitorLandscapes { get; set; }
        public virtual ICollection<ActivityLog> ActivityLogs { get; set; }
        public virtual ICollection<ActionForTargetedGoal> ActionForTargetedGoals { get; set; }
        public virtual ICollection<PlacementTarget> PlacementTargets { get; set; }
    }
}
