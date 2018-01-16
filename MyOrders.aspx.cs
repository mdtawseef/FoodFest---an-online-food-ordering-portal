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
    public partial class MyOrders : System.Web.UI.Page
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




                string userId = Request.QueryString["userId"];
                string orderId = Request.QueryString["orderId"];
                string total = Request.QueryString["tAmt"];
                tamtLabel.Text = total + "Tk.";
                string Rid = Request.QueryString["restId"];

                resConn.SqlConnectionObj.Open();

                string query2 = String.Format("select FoodName as 'Food Name',Quantity,FoodPrice as 'Unit Price' from Food_tbl inner join Sold_tbl on Food_tbl.FoodId = Sold_tbl.FoodId where USERID='{0}' and OrderId='{1}'", userId, orderId);
                resConn.SqlCommandObj.CommandText = query2;
                //SqlDataReader reader1 = resConn.SqlCommandObj.ExecuteReader();

                GridView1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                GridView1.DataBind();
                //Repeater1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                //Repeater1.DataBind();

                resConn.SqlConnectionObj.Close();


                string orMn = "";
                string orD = "";


                resConn.SqlConnectionObj.Open();
                string query3 = String.Format("Select RestaurantName,RestaurantAddress,RestaurantPhone,DATEPART(DAY,GETDATE()) as 'Oday',DATEPART(MONTH,GETDATE()) as 'Omn' from Restaurant_tbl where RestaurantId={0}", Rid);
                resConn.SqlCommandObj.CommandText = query3;
                SqlDataReader reader1 = resConn.SqlCommandObj.ExecuteReader();

                while (reader1.Read())
                {
                    Label1.Text = reader1.GetString(0);
                    Label2.Text = reader1.GetString(1);
                    Label3.Text = reader1.GetString(2);
                    orMn = reader1.GetInt32(3).ToString();
                    orD = reader1.GetInt32(4).ToString();
                }

                resConn.SqlConnectionObj.Close();

                Label5.Text = orD + "-" + orMn + "-" + orderId;


                resConn.SqlConnectionObj.Open();
                string query6 = String.Format("Select DeliveryAddress from Order_tbl where orderId='{0}'", orderId);
                resConn.SqlCommandObj.CommandText = query6;
                SqlDataReader reader6 = resConn.SqlCommandObj.ExecuteReader();

                string custDeliAdd = "";

                while (reader6.Read())
                {
                    custDeliAdd = reader6.GetString(0);
                }

                TextBox1.Text = custDeliAdd;

                resConn.SqlConnectionObj.Close();
                MsgLabel.Text = "Your order id is "+Label5.Text+" In case of cash on delivery pay "+total+"Tk. to the delivery boy.";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string orderId = Request.QueryString["orderId"];

            resConn.SqlConnectionObj.Open();
            string query3 = String.Format("Update Order_tbl Set DeliveryAddress='{0}' where orderId='{1}'", TextBox1.Text, orderId);
            resConn.SqlCommandObj.CommandText = query3;
            resConn.SqlCommandObj.ExecuteNonQuery();
            resConn.SqlConnectionObj.Close();

            UPdateLabel6.Text = "Updated";
            

        }

        
    }
}