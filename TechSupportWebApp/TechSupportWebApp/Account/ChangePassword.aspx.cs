﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechSupportWebApp.Account
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //|| (!User.IsInRole("Admin") && (!User.IsInRole("Support")))
            if (!User.Identity.IsAuthenticated )
            {
                Server.Transfer("~/Account/Login.aspx");
                // Response.Redirect("~/AccessDenied.aspx");
                return;

            }

        }
    }
}