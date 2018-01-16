using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodFest
{
    public partial class About_us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["LoggedInUserName"] != null))
            {
                LinkButton LinkButton1 = (LinkButton)Master.FindControl("LinkButton1");
                LinkButton1.Visible = false;
                LinkButton LinkButton2 = (LinkButton)Master.FindControl("LinkButton2");
                LinkButton2.Visible = true;


                Label Welcome_label = (Label)Master.FindControl("Welcome_label");
                Welcome_label.Text = "Welcome " + Session["LoggedInUserName"];
                Welcome_label.Visible = true;

                LinkButton LinkButton3 = (LinkButton)Master.FindControl("LinkButton3");
                LinkButton3.Visible = true;

            }
            else
            {

                LinkButton LinkButton1 = (LinkButton)Master.FindControl("LinkButton1");
                LinkButton1.Visible = true;
                LinkButton LinkButton2 = (LinkButton)Master.FindControl("LinkButton2");
                LinkButton2.Visible = false;
                LinkButton LinkButton3 = (LinkButton)Master.FindControl("LinkButton3");
                LinkButton3.Visible = false;

            }
        }
    }
}