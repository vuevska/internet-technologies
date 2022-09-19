using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuyPlaneTicket
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Sex.Items.Add(new ListItem("М"));
                Sex.Items.Add(new ListItem("Ж"));

                Occupation.Items.Add(new ListItem("Front-end developer"));
                Occupation.Items.Add(new ListItem("Back-end developer"));
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if(Convert.ToInt32(Duration.Text) < 5)
            {
                Show.Text = "Немате повеќе од 5 години искуство!";
            }
            else
            {
                Show.Text = ID.Text + " , успешно се најавивте!";
                Name.Text = "";
                Surname.Text = "";
                ID.Text = "";
                Password.Text = "";
                ConfirmPassword.Text = "";
                Address.Text = "";
                Telephone.Text = "";
                Sex.SelectedIndex = -1;
                Occupation.SelectedIndex = -1;
                Duration.Text = "";
            }
        }
    }
}