using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace auditorium_exercises_internet_technology
{
    public partial class Currency : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                 ListItem Ime = new ListItem("Евро", "61");
                 ListItem Ime2 = new ListItem("Долар", "50");
                 RadioButtonList1.Items.Add(Ime);
                 RadioButtonList1.Items.Add(Ime2);
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string[] text = TextBox1.Text.Split(' ');
            RadioButtonList1.Items.Add(new ListItem(text[0], text[1]));
            TextBox1.Text = "";
        }
    }
}