using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.IO;
using System.Web;
using System.Configuration;

namespace HPPortal.Web.Utility
{
    public class MailFormat : IDisposable
    {      
        public static bool SendMailMessage(string froms, string to, string bcc, string cc, string subject, string body, string Host, int Port, string UserName, string Password)
        {
            StringBuilder sBuilderBody = new StringBuilder();
            sBuilderBody.AppendLine(" Start SendMailMessage from: " + froms + "to: " + to + "bcc: " + bcc + "cc: " + cc + "subject: " + subject);
            MailMessage mMailMessage = new MailMessage();

            mMailMessage.From = new MailAddress(froms);

            mMailMessage.To.Add(new MailAddress(to));

            // Check if the bcc value is null or an empty string
            if ((bcc != null) && (bcc != string.Empty))
            {
                mMailMessage.Bcc.Add(new MailAddress(bcc));
            }
            // Check if the cc value is null or an empty value
            if ((cc != null) && (cc != string.Empty))
            {
                mMailMessage.CC.Add(new MailAddress(cc));
            }

            mMailMessage.Subject = subject;

            //StringBuilder BodyContent = new StringBuilder();
            //BodyContent.Append(AddBodyContent(to));

            // Set the body of the mail message
            mMailMessage.Body = body.ToString();

            // Set the format of the mail message body as HTML
            mMailMessage.IsBodyHtml = true;
            // Set the priority of the mail message to normal
            mMailMessage.Priority = MailPriority.Normal;

            // Instantiate a new instance of SmtpClient
            SmtpClient mSmtpClient = new SmtpClient();
            mSmtpClient.Host = Host;
            mSmtpClient.Port = Port;
            mSmtpClient.EnableSsl = true;
            mSmtpClient.Credentials = new System.Net.NetworkCredential(UserName, Password);
            try
            {
                mSmtpClient.Send(mMailMessage);

                sBuilderBody.AppendLine(" email sent successfully ");
                return true;
            }
            catch (Exception ex)
            {
                sBuilderBody.AppendLine("Error while sending mail " + ex.Message.ToString());
                return false;
            }
            finally
            {
                mMailMessage.Dispose();
                mSmtpClient.Dispose();
            }
        }

        public static object SendForgotPasswordMailBody(string UserName, string Password)
        {
            string strBody = "";
            try
            {
                strBody = "Dear " + UserName + " ,";
                strBody += "<br/>";
                strBody += "Your password " + Password + " has been generated.  Please note that Hp Portal passwords are case sensitive." + "<br/>";
                strBody += "<br/>";
                strBody += "Please login to the Hp Portal with the provided Password." + "<br/>";
                strBody += "<br/>";
                strBody += "<a href=" + ConfigurationManager.AppSettings["URL"] + ">" + ConfigurationManager.AppSettings["URL"] + "</a>";

            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
            }
            return strBody;
        }
    
        public static bool SendMailMessages(string froms, string to, string bcc, string cc, string subject, string body, string attachment1, string attachment2)
        {
            StringBuilder sBuilderBody = new StringBuilder();
            sBuilderBody.AppendLine(" Start SendMailMessage from: " + froms + "to: " + to + "bcc: " + bcc + "cc: " + cc + "subject: " + subject);
            MailMessage mMailMessage = new MailMessage();

            mMailMessage.From = new MailAddress(froms);

            mMailMessage.To.Add(new MailAddress(to));

            // Check if the bcc value is null or an empty string
            if ((bcc != null) && (bcc != string.Empty))
            {
                mMailMessage.Bcc.Add(new MailAddress(bcc));
            }
            // Check if the cc value is null or an empty value
            if ((cc != null) && (cc != string.Empty))
            {
                mMailMessage.CC.Add(cc);
            }

            mMailMessage.Subject = subject;
            // Set the body of the mail message
            mMailMessage.Body = body;

            // Set the format of the mail message body as HTML
            mMailMessage.IsBodyHtml = true;
            // Set the priority of the mail message to normal
            mMailMessage.Priority = MailPriority.Normal;

            if (!string.IsNullOrEmpty(attachment1))
            {
                System.Net.Mail.Attachment obj = new System.Net.Mail.Attachment(attachment1);
                mMailMessage.Attachments.Add(obj);
            }

            if (!string.IsNullOrEmpty(attachment2))
            {
                System.Net.Mail.Attachment obj = new System.Net.Mail.Attachment(attachment2);
                mMailMessage.Attachments.Add(obj);
            }

            // Instantiate a new instance of SmtpClient
            SmtpClient mSmtpClient = new SmtpClient();

            try
            {
                mSmtpClient.EnableSsl = true;
                mSmtpClient.Send(mMailMessage);

                sBuilderBody.AppendLine(" email sent successfully ");
                return true;
            }
            catch (Exception ex)
            {
                sBuilderBody.AppendLine("Error while sending mail " + ex.Message.ToString());
                return false;
            }
            finally
            {
                mSmtpClient.Dispose();
                mMailMessage.Dispose();
            }
        }

        #region IDisposable Members

        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }

        #endregion
    }
}