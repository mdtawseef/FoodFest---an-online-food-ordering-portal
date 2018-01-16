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
    public partial class Register : System.Web.UI.Page
    {
        DBConnect conn = new DBConnect();

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["LoggedInUserName"] != null))
            {
                LinkButton LinkButton1 = (LinkButton)Master.FindControl("LinkButton1");
                LinkButton1.Visible = false;
                LinkButton LinkButton2 = (LinkButton)Master.FindControl("LinkButton2");
                LinkButton2.Visible = false;


                Label Welcome_label = (Label)Master.FindControl("Welcome_label");
                Welcome_label.Text = "Welcome " + Session["LoggedInUserName"];
                Welcome_label.Visible = false;

                LinkButton LinkButton3 = (LinkButton)Master.FindControl("LinkButton3");
                LinkButton3.Visible = false;

            }
            else
            {

                LinkButton LinkButton1 = (LinkButton)Master.FindControl("LinkButton1");
                LinkButton1.Visible = false;
                LinkButton LinkButton2 = (LinkButton)Master.FindControl("LinkButton2");
                LinkButton2.Visible = false;
                LinkButton LinkButton3 = (LinkButton)Master.FindControl("LinkButton3");
                LinkButton3.Visible = false;

            }

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            string message = "";
            bool exist = false;
            try
            {
                conn.SqlConnectionObj.Open();
                string query = String.Format("Select UserEmail from user_tbl");
                conn.SqlCommandObj.CommandText = query;
                SqlDataReader reader = conn.SqlCommandObj.ExecuteReader();
                while (reader.Read())
                {
                    if ( reader.GetString(0) == EmailTextBox.Text.ToString())
                    {
                        exist = true;
                        break;
                    }
                    else
                        exist = false;

                }
                conn.SqlConnectionObj.Close();


                if (exist == false)
                {
                    conn.SqlConnectionObj.Open();
                    string query2 = String.Format("INSERT INTO user_tbl(UserName,UserEmail,UserPassword,UserAddress,UserPhone,UserLevel) VALUES('{0}','{1}','{2}','{3}','{4}','{5}')", NameTextBox.Text, EmailTextBox.Text, PasswordTextBox.Text, AddressTextBox.Text, PhoneTextBox.Text,"Customer");
                    conn.SqlCommandObj.CommandText = query2;
                    conn.SqlCommandObj.ExecuteNonQuery();
                    message = "You have registered successfully";
                    msgLabel.Text = message;
                }
                else
                    msgLabel.Text = "User already exists.";
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred during user save operation. Try again", ex);
            }
            finally
            {
                if (conn.SqlConnectionObj != null && conn.SqlConnectionObj.State == ConnectionState.Open)
                {
                    conn.SqlConnectionObj.Close();
                }

                NameTextBox.Text = "";
                EmailTextBox.Text = "";
                PasswordTextBox.Text = "";
                PhoneTextBox.Text = "";
                AddressTextBox.Text = "";

            }
        }

        public bool EmailAlreadyExists(string userEmail)
        {
            conn.SqlConnectionObj.Open();
            string query = String.Format("Select * from user_tbl where UserEmail='{0}'", userEmail);
            conn.SqlCommandObj.CommandText = query;
            SqlDataReader reader = conn.SqlCommandObj.ExecuteReader();
            conn.SqlConnectionObj.Close();
            return false;
        }
    }
}