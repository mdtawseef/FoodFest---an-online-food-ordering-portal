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
    public partial class UpgradeUserLevel : System.Web.UI.Page
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

                resConn.SqlConnectionObj.Open();

                string query2 = String.Format("select UserName,UserAddress,UserEmail,UserPhone,UserLevel from User_tbl where UserId='{0}'", userId);
                resConn.SqlCommandObj.CommandText = query2;
                SqlDataReader reader1 = resConn.SqlCommandObj.ExecuteReader();

                string user_level = "";

                while (reader1.Read())
                {
                    
                    UserIdLabel.Text = userId;
                    NAmelab.Text = reader1.GetString(0);
                    AddresLab.Text = reader1.GetString(1);
                    Emaillab.Text = reader1.GetString(2);
                    Phonelab.Text = reader1.GetString(3);
                    user_level = reader1.GetString(4);
                }

                resConn.SqlConnectionObj.Close();

                DropDownList1.SelectedValue = user_level;


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string userId = Request.QueryString["userId"];

            resConn.SqlConnectionObj.Open();
            string query3 = String.Format("Update User_tbl Set UserLevel='{0}' where userId='{1}'", DropDownList1.SelectedValue, userId);
            resConn.SqlCommandObj.CommandText = query3;
            resConn.SqlCommandObj.ExecuteNonQuery();
            resConn.SqlConnectionObj.Close();

           
        }
    }
}