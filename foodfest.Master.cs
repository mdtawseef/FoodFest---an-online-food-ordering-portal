using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodFest
{
    public partial class foodfest : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Response.Redirect("~/UserProfile.aspx");
            }

        }


        //logout button e click hole nicher func call hobe, then ei func theke abar home.aspx e jabe and ELSE e dhukbe. coz session null kore disi.

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

        protected void LinkButton3_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("~/UserProfile.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserProfile.aspx");
        }
    }
}