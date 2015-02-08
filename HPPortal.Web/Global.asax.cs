﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using HPPortal.Data.Models;
using System.Data.Entity;

namespace HPPortal.Web
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        protected void FormsAuthentication_OnAuthenticate(Object sender, FormsAuthenticationEventArgs e)
        {
            if (FormsAuthentication.CookiesSupported == true)
            {
                if (Request.Cookies[FormsAuthentication.FormsCookieName] != null)
                {
                    try
                    {
                        //let us take out the username now                
                        string username = FormsAuthentication.Decrypt(Request.Cookies[FormsAuthentication.FormsCookieName].Value).Name;

                        if (string.IsNullOrEmpty(username))
                        {
                            //Let us set the Pricipal with our user specific details
                            e.User = new System.Security.Principal.GenericPrincipal(
                              new System.Security.Principal.GenericIdentity(username, "Forms"), new string[] { "User" });                              
                        }
                        
                    }
                    catch (Exception)
                    {
                        //somehting went wrong
                    }
                }
            }
        }

        void Application_BeginRequest(object sender, EventArgs e)
        {
            if (Request.Cookies[FormsAuthentication.FormsCookieName] == null && !Request.Url.AbsoluteUri.Contains("Logon"))
                Response.Redirect("Logon.aspx");
                 
        }
    }
}