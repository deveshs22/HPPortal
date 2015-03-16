using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HPPortal.Data.Models;

using DocumentFormat.OpenXml.Drawing;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Office2010.PowerPoint;
using DocumentFormat.OpenXml.Presentation;

namespace HPPortal.Web.PptBuilder
{
    public class FrontSlide
    {
        public void Generate(Partner partner, string quarter, SlidePart slide)
        {
            var placeHolders = new Dictionary<string, string>();
            placeHolders.Add("varPartnerName", partner.PartnerName);
            placeHolders.Add("varCity", partner.City.Description);
            placeHolders.Add("varPartnerCategory", partner.PartnerCategory.Description);
            placeHolders.Add("varQuarter", quarter);
            placeHolders.Add("varDate", DateTime.Now.ToString("dd/MMM/yyyy"));

            PptHelper.ReplacePlaceHolders(slide, placeHolders);
        }
    } 
}