using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using HPPortal.Data.Models;
using HPPortal.Web.Models;

namespace HPPortal.Web.Reports
{
    public partial class TaskRegister : System.Web.UI.Page
    {
		protected HPPortal.Data.Models.HPSiteDBContext _db = new HPPortal.Data.Models.HPSiteDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (SessionData.Current.UserId == 0)
                    Response.Redirect("/Logon");
                
                ddlQuarter.SelectedIndex = 1;
                ListView1.Sort("PartnerName", SortDirection.Ascending);
            }
        }

        public IEnumerable<User> GetUser()
        {
            var userList = new List<User>();
            var users = _db.Users.Where(u => (bool)u.Active).ToList();
            var userId = SessionData.Current.UserId;
            var user = _db.Users.Find(userId);

            if (SessionData.Current.RoleId == 1)
                userList = users;
            else
            {
                userList = GetSubordinates(users, userId).ToList();
                userList.Insert(0, user);

            }

            return userList.OrderBy(s=>s.Name).AsQueryable();
        }

        public IEnumerable<User> GetSubordinates(IEnumerable<User> users, int userId)
        {
            var subordinates = users.Where(u => u.ReportingId == userId);
            foreach (var subordinate in subordinates)
            {
                GetSubordinates(users, subordinate.UserId);
                yield return subordinate;
            }
        }

        public IEnumerable<Utility.Quarter> GetQuarter()
        {
            var currentqtr = Utility.QuarterHelper.GetCurrentQuarter(DateTime.Now);
            var qtr = Utility.QuarterHelper.GetNextnCurrentQuarter(DateTime.Now).ToList();
            qtr.Insert(0, Utility.QuarterHelper.GetPrevQuarter(currentqtr.QuarterYear));
            return qtr.AsQueryable();
        }

         // Model binding method to get List of Partner entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<HPPortal.Web.Models.TasksViewModel> GetData()
        {
            var userId = SessionData.Current.UserId;
            var selectedUser = Convert.ToInt32(ddlPartner.SelectedValue);

            var userList = GetUser();
            var userIds = userList.Select(p => p.UserId).ToList();


            if (selectedUser > 0)
                userId = selectedUser;

            var currentQtr = ddlQuarter.SelectedItem.Text;
            IEnumerable<ActionForTargetedGoal> actionList;
            IEnumerable<StrategicPlan> strategyList;

            if (selectedUser > 0)
            {
                actionList = _db.ActionForTargetedGoals.Where(a => a.QuarterYear == currentQtr
                    && a.Users.Any(u => u.UserId == selectedUser));

                strategyList = _db.StrategicPlans.Where(a => a.Users.Any(u => u.UserId == selectedUser)
                     && a.QuarterYear == currentQtr).OrderByDescending(a => a.StrategicPlanId);
            }
            else
            {
                actionList = _db.ActionForTargetedGoals.Where(a => a.QuarterYear == currentQtr
                        && a.Users.Any(u => userIds.Contains(u.UserId)));

                strategyList = _db.StrategicPlans.Where(a => a.Users.Any(u => userIds.Contains(u.UserId))
                     && a.QuarterYear == currentQtr).OrderByDescending(a => a.StrategicPlanId);
            }

            var tasklist = new List<TasksViewModel>();
            TasksViewModel task;
            foreach (var action in actionList)
            {
                task = new TasksViewModel
                {
                    PartnerId = action.PartnerId,
                    PartnerName = action.Partner.PartnerName,
                    Quarter = action.QuarterYear,
                    TaskModule = "Action Required",
                    TaskDetail = action.ActionRequired,
                    City = action.Partner.City.Description,
                    Category = action.Partner.PartnerCategory.Description,
                    UserName = string.Join(", ", action.Users.Select(x => x.Name))
                };

                tasklist.Add(task);
            }

            foreach (var action in strategyList)
            {
                task = new TasksViewModel
                {
                    PartnerId = action.PartnerId,
                    PartnerName = action.Partner.PartnerName,
                    Quarter = action.QuarterYear,
                    TaskModule = "Strategic Plan",
                    TaskDetail = action.Strategies,
                    City = action.Partner.City.Description,
                    Category = action.Partner.PartnerCategory.Description,
                    UserName = string.Join(", ", action.Users.Select(x => x.Name))
                };

                tasklist.Add(task);
            }

            return tasklist.AsQueryable();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            ListView1.DataBind();
        }

         
    }
}

