using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace FoodFest
{
    public partial class Login1 : System.Web.UI.Page
    {

        DBConnect conn = new DBConnect();

        protected void Page_Load(object sender, EventArgs e)
        {
            //HyperLink HyperLink2 = (HyperLink)Master.FindControl("HyperLink2");
            //HyperLink2.Visible = false;
            //HyperLink HyperLink1 = (HyperLink)Master.FindControl("HyperLink1");
            //HyperLink1.Visible = false;
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string message = "";
            bool exist = false;
            //try
            //{
            conn.SqlConnectionObj.Open();
            string query = String.Format("Select UserEmail,UserPassword,UserName from user_tbl");
            conn.SqlCommandObj.CommandText = query;
            SqlDataReader reader = conn.SqlCommandObj.ExecuteReader();
            while (reader.Read())
            {
                if (reader.GetString(0) == EmailTextBox.Text.ToString() && reader.GetString(1) == PasswordTextBox.Text.ToString())
                {

                    //Response.Redirect("Home.aspx");
                    exist = true;
                    break;
                }
                else
                {
                    //message = "Wrong username or Password";
                    //logMsgLabel.Text = message;
                    exist = false;

                }
            }
            string username = "";
           
            if (exist == true)
            {
                string user_name = (reader.GetString(2));
                Session["LoggedInUserName"] = user_name;
                username = user_name;
            }
            conn.SqlConnectionObj.Close();
            
            
            if (exist == true)
            {
                conn.SqlConnectionObj.Open();

                //  Session["New"] = user_name;
                string flag = "";

                string query2 = String.Format("Select UserLevel from user_tbl where UserName='{0}'", username);

                conn.SqlCommandObj.CommandText = query2;
                SqlDataReader reader2 = conn.SqlCommandObj.ExecuteReader();
                while (reader2.Read())
                {
                    flag = reader2.GetString(0);
                }

                if (Request.QueryString["RestaurantId"] != null)
                {
                    Response.Redirect("~/Restaurant.aspx?RestaurantId=" + Request.QueryString["RestaurantId"]);
                }
                
                 else if (flag == "Admin")
                {
                    Response.Redirect("~/Dummy.aspx");
                }

                else
                {
                    Response.Redirect("~/Home.aspx");
                }


                //HyperLink HyperLink1 = this.Page.Master.FindControl("HyperLink1") as HyperLink;
                //HyperLink1.Text = "Logout";
                //HyperLink1.Text = ("~/Home.aspx");

                //Server.Transfer("~/Home.aspx",true);
                conn.SqlConnectionObj.Close();
            }
            else
            {
                Session["LoggedInUserName"] = "";
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('Wrong Username or Password!!!')", true);
            }



            //}
            //catch (Exception ex)
            //{
            //    throw new Exception("Error occurred during user save operation. Try again", ex);
            //}

            //finally
            //{
            //    if (conn.SqlConnectionObj != null && conn.SqlConnectionObj.State == ConnectionState.Open)
            //    {

            //}
        }
    }
}
