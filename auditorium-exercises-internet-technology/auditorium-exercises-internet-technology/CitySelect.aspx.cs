﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace auditorium_exercises_internet_technology
{
    public partial class CitySelect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            if(ReqCity.IsValid)
            {
                ReqCity.Visible = false;
                Show.Visible = true;
            }
        }
    }
}