using HPPortal.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HPPortal.Web
{
    public class SessionData
    {
        private SessionData()
        {
            
        }

        public static SessionData Current
        {
           get
            {
                SessionData session = (SessionData)HttpContext.Current.Session["__Session__"];
                if (session == null)
                {
                    session = new SessionData();
                    HttpContext.Current.Session["__Session__"] = session;
                }
                return session;
            }
        }

        public int UserId { get; set; }
        public int RoleId { get; set; }
        public int PartnerId { get; set; }
        public string QuarterYear { get; set; }
    }
}