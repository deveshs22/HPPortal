using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HPPortal.Startup))]
namespace HPPortal
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
