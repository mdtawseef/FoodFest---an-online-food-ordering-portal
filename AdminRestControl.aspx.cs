using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodFest
{
    public partial class AdminRestControl : System.Web.UI.Page
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

            }
            else
            {

                LinkButton LinkButton1 = (LinkButton)Master.FindControl("LinkButton1");
                LinkButton1.Visible = true;
                LinkButton LinkButton2 = (LinkButton)Master.FindControl("LinkButton2");
                LinkButton2.Visible = false;


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Add_restaurant.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EditRestaurant.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminViewAllRestaurants.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddFoodItem.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EditFoodItem.aspx");
        }
    }
}