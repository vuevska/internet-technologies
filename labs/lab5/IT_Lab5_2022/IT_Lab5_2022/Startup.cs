using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(IT_Lab5_2022.Startup))]
namespace IT_Lab5_2022
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
