using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace auditorium_exercises_internet_technology
{
    public partial class Katalog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkTehnickaLiteratura_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?id=1&ime=Техничка+литература");
        }
        protected void lnkNaucnaFantastika_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?id=2&ime=Научна+фантастика");
        }

        protected void lnkManga_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?id=3&ime=Манга");
        }
    }
}