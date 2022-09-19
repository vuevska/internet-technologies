using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace auditorium_exercises_internet_technology
{
    public partial class BirthdayCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                BackgroundColor.Items.Add("Pink");
                BackgroundColor.Items.Add("Green");
                BackgroundColor.Items.Add("Blue");
                BackgroundColor.Items.Add("Orange");

                Font.Items.Add("Arial");
                Font.Items.Add("Verdana");
                Font.Items.Add("Times New Roman");
                Font.Items.Add("Sans Serif");

                FontColor.Items.Add("Black");
                FontColor.Items.Add("White");
                FontColor.Items.Add("Gray");
                FontColor.Items.Add("Brown");

                Frame.Items.Add("Dotted");
                Frame.Items.Add("None");
                Frame.Items.Add("Double");
            }
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            Second.BackColor = Color.FromName(BackgroundColor.SelectedItem.Text);
            ShowText.Text = Text.Text;
            ShowText.ForeColor = Color.FromName(FontColor.SelectedItem.Text);
            ShowText.Font.Name = Font.SelectedItem.Text;
            try
            {
                if(Convert.ToInt32(FontSize.Text) > 0)
                {
                    ShowText.Font.Size = FontUnit.Point(Int32.Parse(FontSize.Text));
                }
            }
            catch
            {
                Response.Write("Полето за големина не содржи број.");
            }
            if (Frame.SelectedItem.Text == "Dotted")
                Second.BorderStyle = BorderStyle.Dotted;
            else if (Frame.SelectedItem.Text == "Double")
                Second.BorderStyle = BorderStyle.Double;
            else
                Second.BorderStyle = BorderStyle.None;
            if (Image.Checked)
                ShowImage.Visible = true;
            else
                ShowImage.Visible = false;
        }
    }
}