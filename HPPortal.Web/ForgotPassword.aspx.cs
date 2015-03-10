using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPPortal.Data.Models;
using System.Configuration;
using System.Data.Entity;

namespace HPPortal.Web
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        HPSiteDBContext _db = new HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProceed_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            try
            {
                var user = _db.Users.FirstOrDefault(u => u.EmailId == Email.Text && (bool)u.Active);

                if (user != null)
                {
                    var Name = user.Name;
                    var TempPwd = Name.Substring(0, 4) + r.Next(10000).ToString();
                    var Body = Utility.MailFormat.SendForgotPasswordMailBody(Name, TempPwd);
                    bool isSend = Utility.MailFormat.SendMailMessages(ConfigurationManager.AppSettings["From"], user.EmailId, "", "", "Autogenrated Password", Body.ToString(), "", "");
                    if (isSend)
                    {
                        lblErrorMessage.Text = "Temporary password has been sent to your E-mail.";
                        lblErrorMessage.ForeColor = System.Drawing.Color.Green;
                        user.Pwd = UtilityBL.Encrypt(TempPwd.ToString(), true);
                        _db.Entry(user).State = EntityState.Modified;
                        _db.SaveChanges();
                    }
                    else
                    {
                        lblErrorMessage.Text = "Please enter the correct E-mail Id.";
                        lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    lblErrorMessage.Text = "Please enter the correct E-mail Id.";
                    lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                }

            }
            
            catch (Exception)
            {
                throw;
            }
        }
    }
}