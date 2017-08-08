using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FP_MobileApp.Startup))]
namespace FP_MobileApp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
