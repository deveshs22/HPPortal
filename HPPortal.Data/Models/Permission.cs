using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HPPortal.Data.Models
{
    public partial class Permission
    {
        public int PermissionId { get; set; }
        public string ModuleName { get; set; }
        public int RoleId { get; set; }
        public bool CanView { get; set; }
        public bool CanAdd { get; set; }
        public bool CanEdit { get; set; }
        public bool CanDelete { get; set; }
        public virtual Role Role { get; set; }
    }
}
