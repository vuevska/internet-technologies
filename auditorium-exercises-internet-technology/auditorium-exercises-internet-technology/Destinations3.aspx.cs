using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace auditorium_exercises_internet_technology
{
    public partial class Destinations3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string toPrint = "";
            foreach (ListItem listItem in ListBox1.Items)
            {
                if (listItem.Selected)
                {
                    toPrint += (listItem.Text + "<br>");
                }   
            }
            ListBox1.SelectedIndex = -1;
            Label1.Text = toPrint;
        }
    }
}