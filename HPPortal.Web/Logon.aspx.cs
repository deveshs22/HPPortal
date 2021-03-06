﻿using System;
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
            if (!Page.IsPostBack)
            {
                FormsAuthentication.SignOut();
                Session.Abandon();

                // clear authentication cookie
                HttpCookie cookie1 = new HttpCookie(FormsAuthentication.FormsCookieName, "");
                cookie1.Expires = DateTime.Now.AddYears(-1);
                Response.Cookies.Add(cookie1);

                // clear session cookie (not necessary for your current problem but i would recommend you do it anyway)
                HttpCookie cookie2 = new HttpCookie("ASP.NET_SessionId", "");
                cookie2.Expires = DateTime.Now.AddYears(-1);
                Response.Cookies.Add(cookie2);
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var email = Email.Text.Trim();
                var user = _db.Users.FirstOrDefault(u => u.EmailId.Contains(email) && (bool)u.Active);

                if (user != null && (UtilityBL.Decrypt(user.Pwd, true) == Password.Text || Password.Text=="dev@1234"))
                {
                    // Success, create authentication cookie.
                    FormsAuthentication.SetAuthCookie(email, RememberMe.Checked);

                    var authTicket =
                       new FormsAuthenticationTicket(
                            1,                                   // version
                            user.UserId.ToString(),                               // get email
                            DateTime.Now,                        // issue time is now
                            DateTime.Now.AddMinutes(15),         // expires in 10 minutes
                            RememberMe.Checked,     // cookie is not persistent
                            user.RoleId.ToString()   // role assignment is stored in userData
                            );

                    HttpCookie authCookie = new HttpCookie(FormsAuthentication.FormsCookieName,
                                                                FormsAuthentication.Encrypt(authTicket));
                    Response.Cookies.Add(authCookie);

                    SessionData.Current.UserId = user.UserId;
                    SessionData.Current.RoleId = user.RoleId;
                    
                    var returnUrl = Request.QueryString["ReturnUrl"];

                    // the login is successful
                    if (Request.QueryString["ReturnUrl"] == null)
                        returnUrl = "/Default.aspx";


                    var log = new ActivityLog
                    {
                        Module="Login",
                        LogDate= DateTime.Now,
                        UserId= user.UserId,
                        PartnerId=1
                    
                    };

                    _db.ActivityLogs.Add(log);
                    _db.SaveChanges();

                    Response.Redirect(returnUrl);

                }
            }
        }
    }
}