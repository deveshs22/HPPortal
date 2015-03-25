using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;

using HPPortal.Data.Models;

namespace HPPortal.Web.Models
{
    public class PartnerPlanViewModel
    {
        public int PartnerId { get; set; }

        [DisplayName("Partner Name")]
        public string PartnerName { get; set; }

        [DisplayName("Contact Person")]
        public string ContactPerson { get; set; }

        public string Email { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }
        public string Address { get; set; }

        [DisplayName("Partner Category")]
        public int PartnerCategoryId { get; set; }

        [DisplayName("City")]
        public int CityId { get; set; }

        [DisplayName("Account Manager")]
        public int AssociatedUserId { get; set; }
                
        public virtual City City { get; set; }
        public virtual PartnerCategory PartnerCategory { get; set; }
        public virtual User User { get; set; }

        public string Quarter { get; set; }
        public bool StrategicPlan { get; set; }
        public bool OverviewPlan { get; set; }
        public bool Target { get; set; }
        public bool Sale { get; set; }
        public bool CompetitiveLandscape { get; set; }
        public bool TargetedGoal { get; set; }
        public bool ActionReqd { get; set; }
        public bool OpenHouse { get; set; }

    }
}