using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuyPlaneTicket
{
    public partial class Najava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnPodnesi_Click(object sender, EventArgs e)
        {   
            if(txtLozinka.Text != "mp")
            {
                if(ViewState["obidi"] == null)
                {
                    ViewState["obidi"] = 1;
                }
                else
                {
                    ViewState["obidi"] = (int)ViewState["obidi"] + 1;
                    if((int)ViewState["obidi"] > 3)
                    {
                        lblObidi.Text = "Ја надминавте квотата на дозволени обиди!";
                        btnPodnesi.Enabled = false;
                    }
                }
                lblObidi.Text = ((int)ViewState["obidi"]).ToString();
            }
            else
            {
                string sessionKorisnik = txtKorisnik.Text;
                Response.Redirect("GlavnaStranica.aspx?korisnik=" + sessionKorisnik);
            }
        }
    }
}