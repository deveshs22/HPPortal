using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using DocumentFormat.OpenXml.Drawing;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Office2010.PowerPoint;
using DocumentFormat.OpenXml.Presentation;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

namespace HPPortal.Web.PptBuilder
{
    public static class PptHelper
    {
        public static void ReplacePlaceHolders(SlidePart slide, Dictionary<string, string> placeHolders)
        {
            var paragraphs = slide.Slide.Descendants<Paragraph>().ToList(); //get all paragraphs in the slide

            foreach (var paragraph in paragraphs)
            {                             
                var result = false;
                foreach (var placeholder in placeHolders)
                {

                    if (PptHelper.ReplaceParaText(paragraph, placeholder.Key, placeholder.Value))
                        result = true;
                }

                if (result)
                    paragraph.Remove();//delete placeholder
            }
        }

        public static bool ReplaceParaText(Paragraph paragraph, string key, string text)
        {
            if (!paragraph.InnerText.Contains(key))
                return false;

            var parent = paragraph.Parent; //get parent element - to be used when removing placeholder
            //insert text line
            var param = CloneParaGraphWithStyles(paragraph, key, text); // create new param - preserve styles

            if (parent != null)
                parent.InsertBefore(param, paragraph);//insert new element

            return true;
        }       

        public static Paragraph CloneParaGraphWithStyles(Paragraph sourceParagraph, string paramKey, string text)
        {
            var xmlSource = sourceParagraph.OuterXml;

            text = HttpUtility.HtmlEncode(text);

            xmlSource = xmlSource.Replace(paramKey.Trim(), text.Trim());

            return new Paragraph(xmlSource);
        }

        public static void ReplaceRowContent(TableRow row, Dictionary<string, string> placeHolders)
        {
            var cells = row.Descendants<TableCell>().ToList();

            foreach (var cell in cells)
            {
                foreach (var placeHolder in placeHolders)
                {
                    var text = HttpUtility.HtmlEncode(placeHolder.Value) ?? "";
                    cell.InnerXml = cell.InnerXml.Replace(placeHolder.Key.Trim(), text.Trim());
                }

            }
            
        }
          
        public static TableCell CreateDrawingCell(string relId)
        {
            TableCell tc = new TableCell(
            new DocumentFormat.OpenXml.Drawing.TextBody(
            new BodyProperties(),
            new Paragraph()),
            new TableCellProperties(
            new DocumentFormat.OpenXml.Drawing.BlipFill(
            new Blip() { Embed = relId },
            new Stretch(
            new FillRectangle()))));
            return tc;

        }

        public static byte[] GetImageData(string imageFilePath, ref ImagePartType imagePartType)
        {
            byte[] imageFileBytes;
           
            using (FileStream fsImageFile = File.OpenRead(HttpContext.Current.Server.MapPath(imageFilePath)))
            {
                imageFileBytes = new byte[fsImageFile.Length];
                fsImageFile.Read(imageFileBytes, 0, imageFileBytes.Length);

                using (Bitmap imageFile = new Bitmap(fsImageFile))
                {
                    if (imageFile.RawFormat.Guid == ImageFormat.Bmp.Guid)
                        imagePartType = ImagePartType.Bmp;
                    else if (imageFile.RawFormat.Guid == ImageFormat.Gif.Guid)
                        imagePartType = ImagePartType.Gif;
                    else if (imageFile.RawFormat.Guid == ImageFormat.Jpeg.Guid)
                        imagePartType = ImagePartType.Jpeg;
                    else if (imageFile.RawFormat.Guid == ImageFormat.Png.Guid)
                        imagePartType = ImagePartType.Png;
                    else if (imageFile.RawFormat.Guid == ImageFormat.Tiff.Guid)
                        imagePartType = ImagePartType.Tiff;
                    else
                    {
                        throw new ArgumentException(
                          "Unsupported image file format: " + imageFilePath);
                    }

                }
            }

            return imageFileBytes;
        }

        public static void GenerateImagePart(OpenXmlPart part, byte[] imageFileBytes)
        {
            // Write the contents of the image to the ImagePart.
            using (BinaryWriter writer = new BinaryWriter(part.GetStream()))
            {
                writer.Write(imageFileBytes);
                writer.Flush();
            }
        }

      
    }
}