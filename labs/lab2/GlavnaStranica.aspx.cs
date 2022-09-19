using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuyPlaneTicket
{
    public partial class GlavnaStranica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnOdjava_Click(object sender, EventArgs e)
        {
            Response.Redirect("Odjava.aspx");
        }
    }
}