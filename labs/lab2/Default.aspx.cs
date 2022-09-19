using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuyPlaneTicket
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                From.Items.Add(new ListItem("Скопје"));
                From.Items.Add(new ListItem("Охрид"));

                To.Items.Add(new ListItem("Виена"));
                To.Items.Add(new ListItem("Рим"));
                To.Items.Add(new ListItem("Токио"));
                To.Items.Add(new ListItem("Берлин"));

                string[] months = { "Јануари", "Февруару", "Март", "Април", "Мај", "Јуни", 
                    "Јули", "Август", "Септември", "Октомври", "Ноември", "Декември" };

                for (int i = 0; i < months.Length; i++)
                {
                    Month.Items.Add(new ListItem(months[i]));
                }

                for (int i = 1; i <= 31; i++)
                {
                    Day.Items.Add(new ListItem(Convert.ToString(i)));
                }

                for (int i = 2022; i < 2027; i++)
                {
                    Year.Items.Add(new ListItem(Convert.ToString(i)));
                }

                for (int i = 0; i < 24; i++)
                {
                    string st;
                    if (i < 10)
                    {
                        st = "0";
                    }
                    else
                    {
                        st = "";
                    }
                    Hour.Items.Add(new ListItem(st + Convert.ToString(i) + ":00"));
                }

                Zone.Items.Add(new ListItem("Пушачи"));
                Zone.Items.Add(new ListItem("Непушачи"));

                Class.Items.Add(new ListItem("Економска"));
                Class.Items.Add(new ListItem("Бизнис"));

                Serve.Items.Add(new ListItem("Пијалок"));
                Serve.Items.Add(new ListItem("Кафе"));
                Serve.Items.Add(new ListItem("Оброк"));
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            LblNameSurname.Text = Name.Text + " " + Surname.Text;
            LblTransportation.Text = Transportation.SelectedItem.Text;
            LblFrom.Text = From.SelectedItem.Text;
            LblTo.Text = To.SelectedItem.Text;
            LblTime.Text = Day.SelectedItem.Text + "." + (Month.SelectedIndex + 1) + "." + Year.SelectedItem.Text + " во " + Hour.SelectedItem.Text;
            LblZone.Text = Zone.SelectedItem.Text;
            LblClass.Text = Class.SelectedItem.Text;
            foreach(ListItem listItem in Serve.Items)
            {
                if(listItem.Selected)
                {
                    LblServe.Text += listItem.Text + " ";
                }
            }
            if(Transportation.SelectedItem.Text == "Авион")
            {
                Image.ImageUrl = "~/Airplane.jpg";
            }
            else if (Transportation.SelectedItem.Text == "Воз")
            {
                Image.ImageUrl = "~/Train.jpg";
            }
            else
            {
                Image.ImageUrl = "~/Tramvaj.jpg";
            }
        }
    }
}