using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPPortal.Data.Models;
using System.Web.Security;

namespace HPPortal.Web
{
    public partial class Logon : Page
    {
        HPSiteDBContext _db = new HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var email = Email.Text.Trim();
                var user = _db.Users.FirstOrDefault(u => u.EmailId == email && u.Pwd == Password.Text && (bool)u.Active);

                if (user != null)
                {
                    // Success, create authentication cookie.
                    FormsAuthentication.SetAuthCookie(email, RememberMe.Checked);

                    var authTicket =
                       new FormsAuthenticationTicket(
                            1,                                   // version
                            email,                               // get email
                            DateTime.Now,                        // issue time is now
                            DateTime.Now.AddMinutes(30),         // expires in 10 minutes
                            RememberMe.Checked,     // cookie is not persistent
                            user.Role.Description   // role assignment is stored in userData
                            );

                    HttpCookie authCookie = new HttpCookie(FormsAuthentication.FormsCookieName,
                                                                FormsAuthentication.Encrypt(authTicket));
                    Response.Cookies.Add(authCookie);


                    var returnUrl = Request.QueryString["ReturnUrl"];

                    // the login is successful
                    if (Request.QueryString["ReturnUrl"] == null)
                        returnUrl = "/Default.aspx";

                    Response.Redirect(returnUrl);

                }
            }
        }
    }
}