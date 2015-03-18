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
    public class OpenHouseSlide
    {
        private HPSiteDBContext _db = new HPSiteDBContext();

        public void Generate(Partner partner, string quarter, SlidePart slide)
        {
            string description="";
            var placeHolders = new Dictionary<string, string>();
            
            var plan = _db.OpenHouses.FirstOrDefault(p => p.PartnerId == partner.PartnerId && p.Quarter == quarter);
            if (plan != null)
                description = plan.Description;            

            placeHolders.Add("varOpenHouse", description);
            PptHelper.ReplacePlaceHolders(slide, placeHolders); //replace text by placeholder name
        }
    }

}