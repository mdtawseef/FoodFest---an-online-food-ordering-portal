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
    public partial class MyOldOrder : System.Web.UI.Page
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



                    string userName = Session["LoggedInUserName"].ToString();

                    string orderId = Request.QueryString["oId"];
                    string total = Request.QueryString["tAmt"];
                    tamtLabel.Text = total + "Tk.";
                    //string Rid = Request.QueryString["restId"];

                    resConn.SqlConnectionObj.Open();

                    string query2 = String.Format("select UserId,UserAddress from User_tbl where UserName='{0}'", userName);
                    resConn.SqlCommandObj.CommandText = query2;
                    SqlDataReader reader1 = resConn.SqlCommandObj.ExecuteReader();

                    string user_id = "";

                    while (reader1.Read())
                    {
                        user_id = reader1.GetInt32(0).ToString();


                    }

                    resConn.SqlConnectionObj.Close();


                    resConn.SqlConnectionObj.Open();

                    string queryO = String.Format("select DATEPART(DAY,OrderDate) as 'Oday',DATEPART(MONTH,OrderDate) from Order_tbl where UserId='{0}' and OrderId='{1}'", user_id, orderId);
                    resConn.SqlCommandObj.CommandText = queryO;
                    SqlDataReader readerO = resConn.SqlCommandObj.ExecuteReader();

                    string orMn = "";
                    string orD = "";

                    while (readerO.Read())
                    {

                        orMn = readerO.GetInt32(0).ToString();
                        orD = readerO.GetInt32(1).ToString();

                    }

                    resConn.SqlConnectionObj.Close();



                    resConn.SqlConnectionObj.Open();

                    string query4 = String.Format("select FoodName as 'Food Name',Quantity,FoodPrice as 'Unit Price' from Food_tbl inner join Sold_tbl on Food_tbl.FoodId = Sold_tbl.FoodId where USERID='{0}' and OrderId='{1}'", user_id, orderId);
                    resConn.SqlCommandObj.CommandText = query4;
                    //SqlDataReader reader1 = resConn.SqlCommandObj.ExecuteReader();

                    GridView1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                    GridView1.DataBind();
                    //Repeater1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                    //Repeater1.DataBind();

                    resConn.SqlConnectionObj.Close();





                    resConn.SqlConnectionObj.Open();
                    string query3 = String.Format("Select RestaurantName,RestaurantAddress,RestaurantPhone from Restaurant_tbl where RestaurantId in (select Food_tbl.RestaurantId from Food_tbl inner join Sold_tbl on Food_tbl.FoodId = Sold_tbl.FoodId where USERID='{0}' and OrderId='{1}')", user_id, orderId);
                    resConn.SqlCommandObj.CommandText = query3;
                    SqlDataReader reader3 = resConn.SqlCommandObj.ExecuteReader();

                    while (reader3.Read())
                    {
                        Label1.Text = reader3.GetString(0);
                        Label2.Text = reader3.GetString(1);
                        Label3.Text = reader3.GetString(2);

                    }

                    resConn.SqlConnectionObj.Close();

                    Label5.Text = orD + "-" + orMn + "-" + orderId;



                }
                else
                {

                    LinkButton LinkButton1 = (LinkButton)Master.FindControl("LinkButton1");
                    LinkButton1.Visible = true;
                    LinkButton LinkButton2 = (LinkButton)Master.FindControl("LinkButton2");
                    LinkButton2.Visible = false;

                    Response.Redirect("~/Home.aspx");
                }


                

            }
        }
    }
}