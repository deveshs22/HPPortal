using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

using DocumentFormat.OpenXml.Drawing;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Office2010.PowerPoint;
using DocumentFormat.OpenXml.Presentation;

using HPPortal.Data.Models;
using HPPortal.Web.PptBuilder;

namespace HPPortal.Web
{
    public class PptGenerator
    {
        private HPSiteDBContext _db = new HPSiteDBContext();
        public Dictionary<SlidePart, SlideId> Slides { get; set; }

        public void GeneratePlanPpt(System.Web.UI.Page page, int partnerId, string quarterYear)
        {     
            var partner = _db.Partners.Find(partnerId);
            var templateFile = page.Server.MapPath("/PptBuilder/Templates/JBPlanTemplate.pptx");

            var partnerName = partner.PartnerName.Length>10 ? partner.PartnerName.Substring(0,10) :  partner.PartnerName;

            var outFileName = string.Format("JBPlan_{0}_{1}.pptx", partnerName, quarterYear);
            var outFilePath = page.Server.MapPath("/PptBuilder/Output/" + outFileName);

            ParseTemplate(partner, quarterYear, templateFile, outFilePath);

            if (File.Exists(outFilePath))
            {
                page.Response.ClearHeaders();
                page.Response.Clear();
                page.Response.ContentType = "application/x-mspowerpoint";
                page.Response.AddHeader("Content-Disposition", "attachment; filename=" + outFileName);
                page.Response.WriteFile(outFilePath);
                page.Response.Flush();
            }

        }
        
        public void ParseTemplate(Partner partner, string quarter, string templatePath, string templateOutputPath)
        {
          using (var templateFile = File.Open(templatePath, FileMode.Open, FileAccess.Read, FileShare.Read)) //read our template
            {
                using (var stream = new MemoryStream())
                {
                    templateFile.CopyTo(stream); //copy template

                    using (var presentationDocument = PresentationDocument.Open(stream, true)) //open presentation document
                    {
                        // Get the presentation part from the presentation document.
                        var presentationPart = presentationDocument.PresentationPart;

                        // Get the presentation from the presentation part.
                        var presentation = presentationPart.Presentation;

                        var slideList = new List<SlidePart>();

                        //get available slide list
                        foreach (SlideId slideID in presentation.SlideIdList)
                        {
                            var slide = (SlidePart)presentationPart.GetPartById(slideID.RelationshipId);
                            slideList.Add(slide);
                            //Slides.Add(slide, slideID);//add to dictionary to be used when needed
                        }

                        //loop all slides and replace images and texts
                        for (var slideIndex = 0; slideIndex < slideList.Count(); slideIndex++)
                        {
                            var slide = slideList[slideIndex];

                            switch (slideIndex)
                            {
                                case SlideIndex.FrontPage:
                                    {
                                        var prepareSlide = new FrontSlide();
                                        prepareSlide.Generate(partner, quarter, slide);
                                        break;
                                    }

                                case SlideIndex.Partner:
                                    {
                                        var prepareSlide = new PartnerSlide();
                                        prepareSlide.Generate(partner, quarter, slide);
                                        break;
                                    }

                                case SlideIndex.OverviewPlan:
                                    {
                                        var prepareSlide = new OverviewPlanSlide();
                                        prepareSlide.Generate(partner, quarter, slide);
                                        break;
                                    }
                                case SlideIndex.Landscape:
                                    {
                                        var prepareSlide = new LandscapeSlide();
                                        prepareSlide.Generate(partner, quarter, slide);
                                        break;
                                    }
                                case SlideIndex.StrategicPlan:
                                    {
                                        var prepareSlide = new StrategicPlanSlide();
                                        prepareSlide.Generate(partner, quarter, slide);
                                        break;
                                    }
                                case SlideIndex.TargetedGoal:
                                    {
                                        var prepareSlide = new TargetedGoalSlide();
                                        prepareSlide.Generate(partner, quarter, slide);
                                        break;
                                    }
                                case SlideIndex.ActionReqdSlide:
                                    {
                                        var prepareSlide = new ActionReqdSlide();
                                        prepareSlide.Generate(partner, quarter, slide);
                                        break;
                                    }
                                case SlideIndex.PlanPerformanceSlide:
                                    {
                                        var prepareSlide = new PlanPerformanceSlide();
                                        prepareSlide.Generate(partner, quarter, slide);
                                        break;
                                    }
                                case SlideIndex.OpenHouseSlide:
                                    {
                                        var prepareSlide = new OpenHouseSlide();
                                        prepareSlide.Generate(partner, quarter, slide);
                                        break;
                                    }
                                default:
                                    break;
                            }
                        }

                        var slideCount = presentation.SlideIdList.ToList().Count; //count slides
                        //DeleteSlide(presentation, slideList[slideCount - 1]); //delete last slide

                        presentation.Save(); //save document changes we've made
                    }
                    stream.Seek(0, SeekOrigin.Begin);//scroll to stream start point

                    //save output file
                    using (var fileStream = File.Create(templateOutputPath))
                    {
                        stream.CopyTo(fileStream);
                    }
                }
            }
        }

    }
}