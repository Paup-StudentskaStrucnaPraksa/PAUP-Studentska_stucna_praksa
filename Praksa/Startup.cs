using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Praksa.Startup))]
namespace Praksa
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
