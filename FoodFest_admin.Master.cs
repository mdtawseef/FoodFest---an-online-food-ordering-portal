using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodFest
{
    public partial class SiteMaster_admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["LoggedInUserName"] = null;
            Session.Abandon();
            Response.Redirect("~/Home.aspx");


            //Session.Abandon();

            //LinkButton LinkButton1 = (LinkButton)Master.FindControl("LinkButton1");
            //LinkButton1.Visible = true;
            //LinkButton LinkButton2 = (LinkButton)Master.FindControl("LinkButton2");
            //LinkButton2.Visible = false;


            // Label Welcome_label = (Label)Master.FindControl("Welcome_label");
            //Welcome_label.Visible = false;

        }
    }
}