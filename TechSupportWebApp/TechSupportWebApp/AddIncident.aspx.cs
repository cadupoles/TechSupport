using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechSupportWebApp
{
    public partial class AddIncident : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated || (!User.IsInRole("Admin") && (!User.IsInRole("Support"))))
            {
                Server.Transfer("~/AccessDenied.aspx");
                // Response.Redirect("~/AccessDenied.aspx");
                return;

            }
        }
    }
}