using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace auditorium_exercises_internet_technology
{
    public partial class Destinations2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Избраниот град е: " + ListBox1.SelectedItem.Text + " и е оддалечен за " + ListBox1.SelectedItem.Value + " km од Скопје" ;
        }
    }
}