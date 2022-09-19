using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace auditorium_exercises_internet_technology
{
    public partial class Currency2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<ListItem> list = new List<ListItem>();
                ListItem Ime = new ListItem("Евро");
                ListItem Ime2 = new ListItem("Долар");
                list.Add(Ime);
                list.Add(Ime2);
                RadioButtonList1.DataSource = list;
                RadioButtonList1.DataBind();
            }

        }

        // Add 
        protected void Button1_Click(object sender, EventArgs e)
        {
            RadioButtonList1.Items.Add(new ListItem(TextBox1.Text));
            TextBox1.Text = "";
            Update();
        }

        // Update count
        private void Update()
        {
            Label2.Text = RadioButtonList1.Items.Count.ToString();
        }

        // Remove
        protected void Button2_Click1(object sender, EventArgs e)
        {
            
            if(RadioButtonList1.SelectedIndex == -1)
            {
                Label3.Text = "Направете селекција";
            } 
            else
            {
                 RadioButtonList1.Items.Remove(RadioButtonList1.SelectedItem);
                 Update();
                 Label3.Text = "";
            }
        }
    }
}