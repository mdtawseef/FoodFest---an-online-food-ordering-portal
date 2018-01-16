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
    public partial class UserProfile : System.Web.UI.Page
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


                string userName = Session["LoggedInUserName"].ToString();

                resConn.SqlConnectionObj.Open();

                string query2 = String.Format("select UserId,UserAddress,UserEmail,UserPhone from User_tbl where UserName='{0}'",userName);
                resConn.SqlCommandObj.CommandText = query2;
                SqlDataReader reader1 = resConn.SqlCommandObj.ExecuteReader();

                  string user_id = "";

                while (reader1.Read())
                {
                    user_id = reader1.GetInt32(0).ToString();
                    UserIdLabel.Text = user_id;
                    NAmelab.Text = userName;
                    AddresLab.Text = reader1.GetString(1);
                    Emaillab.Text = reader1.GetString(2);
                    Phonelab.Text = reader1.GetString(3);
 
                }

                resConn.SqlConnectionObj.Close();

                resConn.SqlConnectionObj.Open();

                string query3 = String.Format("select OrderId, TotalAmount, DeliveryAddress, DeliveryStatus, Payment, OrderDate,BkashNum,BkashTrxId from Order_tbl where UserId='{0}'",user_id );
                resConn.SqlCommandObj.CommandText = query3;
                //SqlDataReader reader1 = resConn.SqlCommandObj.ExecuteReader();

                GridView1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                GridView1.DataBind();
                //Repeater1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                //Repeater1.DataBind();

                resConn.SqlConnectionObj.Close();




            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            string orderid = row.Cells[1].Text;

            //string userid = row.Cells[2].Text;
            string totalAmount = row.Cells[2].Text;
           // string DeliveryAdd = row.Cells[4].Text;

            string url = String.Format("~/MyOldOrder.aspx?oId={0}&tAmt={1}", orderid, totalAmount);

            Response.Redirect(url);
        }
    }
}