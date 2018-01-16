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
    public partial class AdminCheckOrder : System.Web.UI.Page
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

                string userId = Request.QueryString["uId"];
                string orderId = Request.QueryString["oId"];


                resConn.SqlConnectionObj.Open();
                string query3 = String.Format("select RestaurantName,RestaurantAddress,RestaurantPhone from Restaurant_tbl where RestaurantId in (select restaurantId from Food_tbl where FoodId in (select FoodId from Sold_tbl where OrderId={0} and UserId={1}));", orderId, userId);
                resConn.SqlCommandObj.CommandText = query3;
                SqlDataReader reader1 = resConn.SqlCommandObj.ExecuteReader();

                while (reader1.Read())
                {
                    Label1.Text = reader1.GetString(0);
                    Label2.Text = reader1.GetString(1);
                    Label3.Text = reader1.GetString(2);

                }

                resConn.SqlConnectionObj.Close();


                Label4.Text = orderId;


                resConn.SqlConnectionObj.Open();
                string query4 = String.Format("select UserName,UserPhone,UserAddress from User_tbl where UserId={0}", userId);
                resConn.SqlCommandObj.CommandText = query4;
                SqlDataReader reader2 = resConn.SqlCommandObj.ExecuteReader();

                while (reader2.Read())
                {
                    Label5.Text = reader2.GetString(0);
                    Label6.Text = reader2.GetString(1);
                    Label7.Text = reader2.GetString(2);
                }

                resConn.SqlConnectionObj.Close();


                resConn.SqlConnectionObj.Open();

                string query5 = String.Format("select Food_tbl.FoodId,FoodName,Quantity from Food_tbl inner join Sold_tbl on Food_tbl.FoodId = Sold_tbl.FoodId where USERID='{0}' and OrderId='{1}'", userId, orderId);
                resConn.SqlCommandObj.CommandText = query5;
                //SqlDataReader reader1 = resConn.SqlCommandObj.ExecuteReader();
                //Label5.Text = orderId;
                GridView1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                GridView1.DataBind();
                //Repeater1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                //Repeater1.DataBind();

                resConn.SqlConnectionObj.Close();

            }
        }
    }
}