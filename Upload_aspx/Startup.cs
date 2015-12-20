using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Upload_aspx.Startup))]
namespace Upload_aspx
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
