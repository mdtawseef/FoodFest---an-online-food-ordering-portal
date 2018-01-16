using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodFest
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string name = Request.QueryString["RestaurantName"];
            //Label1.Text = name;

            //if (Session["New"] != null)
            //{
            //    Welcome_Label.Text += " " + Session["New"].ToString();

            //}

            //else
            //{
            //    Response.Redirect("Login_page.aspx");
            //}



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

        protected void startMyOrderButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/All_Restaurants.aspx?Location="+ DropDownList2.SelectedValue);
        }

        protected void Biriyani_LinkButton_Command(object sender, CommandEventArgs e)
        {
            string cuisine = e.CommandArgument.ToString();

            var url = String.Format("~/All_Restaurants.aspx?type=cuisine&Cuisine={0}", cuisine);
            Response.Redirect(url); 

           // Response.Redirect(string.Format("~/All_Restaurants.aspx?type=cuisine&Cuisine={0}",cuisine));
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            string RestId = e.CommandArgument.ToString();
            Response.Redirect("~/Restaurant.aspx?RestaurantId=" + RestId);
        }


    }


}
