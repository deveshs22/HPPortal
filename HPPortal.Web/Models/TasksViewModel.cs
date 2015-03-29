using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HPPortal.Web.Models
{
    public class TasksViewModel
    {
        public int PartnerId { get; set; }
        public string PartnerName { get; set; }
        public string Quarter { get; set; }
        public string TaskModule { get; set; }
        public string Url { get; set; }
        public string TaskDetail { get; set; }
        public string City { get; set; }
        public string Category { get; set; }
        public string UserName { get; set; }

       
    }
}