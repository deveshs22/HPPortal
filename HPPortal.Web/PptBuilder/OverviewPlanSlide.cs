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
    public class OverviewPlanSlide
    {
        private HPSiteDBContext _db = new HPSiteDBContext();

        public void Generate(Partner partner, string quarter, SlidePart slide)
        {
            string strength="", weakness="", opportunity="", supportReqd="";
            var placeHolders = new Dictionary<string, string>();
            placeHolders.Add("varQuarter", quarter);

            var plan = _db.OverviewPlans.FirstOrDefault(p => p.PartnerId == partner.PartnerId && p.Quarter == quarter);
            if (plan != null)
            {
                strength = plan.Strength;
                weakness = plan.Weakness;
                opportunity = plan.Opportunity;
                supportReqd = plan.SupportReqd;
            }

            placeHolders.Add("varStrengthList", strength);
            placeHolders.Add("varWeaknessList", weakness);
            placeHolders.Add("varOpportunityList", opportunity);
            placeHolders.Add("varSupportReqdList", supportReqd);

            PptHelper.ReplacePlaceHolders(slide, placeHolders); //replace text by placeholder name
        }
    }

}