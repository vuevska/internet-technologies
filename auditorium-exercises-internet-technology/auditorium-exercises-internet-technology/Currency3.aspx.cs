using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace auditorium_exercises_internet_technology
{
    public partial class Currency3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                List<ListItem> list = new List<ListItem>();
                ListItem item1 = new ListItem("Evro", "51");
                ListItem item2 = new ListItem("Dolar", "60");
                list.Add(item1);
                list.Add(item2);
                ListaValuti.DataSource = list;
                ListaValuti.DataBind();
            }
        }

        protected void DodadiValuta_Click(object sender, EventArgs e)
        {
            ListItem item = new ListItem(ImeValuta.Text, VrednostValuta.Text);
            ListaValuti.Items.Add(item);
            ImeValuta.Text = "";
            VrednostValuta.Text = "";
            updateTotal();
        }

        protected void BrisiValuta_Click(object sender, EventArgs e)
        {
            if (ListaValuti.SelectedIndex != -1)
            {
                ListaValuti.Items.Remove(ListaValuti.SelectedItem);
                updateTotal();
            }
            else
            {
                Status.Text = "Немате селектирано ништо.";
            }
        }

        private void updateTotal()
        {
            Total.Text = ListaValuti.Items.Count.ToString();
        }

        protected void ListaValuti_SelectedIndexChanged(object sender, EventArgs e)
        {
            int value = Int32.Parse(ListaValuti.SelectedItem.Value);
            Status.Text = Convert.ToString(Int32.Parse(Vrednost.Text) * value);
        }

    }
}