using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using DocumentFormat.OpenXml.Drawing;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Office2010.PowerPoint;
using DocumentFormat.OpenXml.Presentation;

using HPPortal.Data.Models;

namespace HPPortal.Web.PptBuilder
{
    public class PartnerSlide
    {
        public void Generate(Partner partner, string quarter, SlidePart slide)
        {
            var placeHolders = new Dictionary<string, string>();
            placeHolders.Add("varPartnerName", partner.PartnerName);
            placeHolders.Add("varPartnerCategory", partner.PartnerCategory.Description);
            placeHolders.Add("varContactPerson", partner.ContactPerson);
            placeHolders.Add("varCoreBusiness", partner.CoreBusiness);
            placeHolders.Add("varCurrentBrands", partner.CurrentBrands);
            placeHolders.Add("varNoOfStaff", partner.StaffCount.ToString());
            placeHolders.Add("varMainCompetitors", partner.MainCompetitors);
            placeHolders.Add("varSegmentsAddressed", partner.CustomerSegmentsAddressed);
            placeHolders.Add("varAccountManager", partner.User.Name);
            placeHolders.Add("varFrequencyOfVisit", partner.FrequencyOfEngagement);
            placeHolders.Add("varRelationshipStatus", partner.RelationshipStatus);

           PptHelper.ReplacePlaceHolders(slide, placeHolders); //replace text by placeholder name
            

        }

    }

}