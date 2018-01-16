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
    public partial class Admin : System.Web.UI.Page
    {

        DBConnect resConn = new DBConnect();

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!Page.IsPostBack)
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
                try
                {
                    resConn.SqlConnectionObj.Open();
                    string query = "";
                    query = String.Format("select COUNT(*) from Order_tbl where DeliveryStatus is null");
                    resConn.SqlCommandObj.CommandText = query;
                    SqlDataReader reader = resConn.SqlCommandObj.ExecuteReader();
                    while (reader.Read())
                    {
                        Label1.Text = "You have "+ reader.GetInt32(0).ToString() + " new orders.";
                    }

                    resConn.SqlConnectionObj.Close();



                }
                catch (Exception ex)
                {
                    throw new Exception("Error occurred during DB operation. Try again", ex);
                }
                finally
                {
                    if (resConn.SqlConnectionObj != null && resConn.SqlConnectionObj.State == ConnectionState.Open)
                    {
                        resConn.SqlConnectionObj.Close();
                    }
                }
 
            }

        }
    }
}