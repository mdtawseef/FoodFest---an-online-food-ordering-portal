using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace FoodFest
{
    public partial class emniTest : System.Web.UI.Page
    {

        DBConnect resConn = new DBConnect();

        protected void Page_Load(object sender, EventArgs e)
        {
            string message = "";
            bool exist = false;
            string logoPathStr;


            try
            {
                resConn.SqlConnectionObj.Open();
                string query = String.Format("Select RestaurantName,RestaurantAddress from Restaurant_tbl");
                resConn.SqlCommandObj.CommandText = query;
                //resConn.SqlCommandObj.ExecuteNonQuery();
                SqlDataReader reader = resConn.SqlCommandObj.ExecuteReader();
                while (reader.Read())
                {
                    //ClientScript.RegisterStartupScript(GetType(), "hwa", string.Format("WelcomeUser('{0}');", reader.GetString(0)), true);
                   // Label2.Text = reader.GetString(0);
                    if (reader.GetString(1).Contains("Banani"))
                    {
                        Label1.Text = "banani paisi";  
                    }

                }
                
                resConn.SqlConnectionObj.Close();


                if (exist == false)
                {
                    

                   // resConn.SqlConnectionObj.Open();
                   //string query2 = String.Format("INSERT INTO Restaurant_tbl(RestaurantName,RestaurantAddress,RestaurantPhone,RestaurantMinOrder,OpeningHour,ClosingHour,LogoImg) VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", ResNameTextBox.Text, ResAddTextBox.Text, ResPhoneTextBox.Text, MinOrderTextBox.Text, OpenHourTextBox.Text, closeHourTextBox.Text, logoPathStr);
                   // resConn.SqlCommandObj.CommandText = query2;
                   // resConn.SqlCommandObj.ExecuteNonQuery();
                    message = "New Restaurant added successfully";
                    
                }
               
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred during user save operation. Try again", ex);
            }
            finally
            {
                if (resConn.SqlConnectionObj != null && resConn.SqlConnectionObj.State == ConnectionState.Open)
                {
                    resConn.SqlConnectionObj.Close();
                }
            }
        }

      

        public void heyfromlink(string test)
        {
            Label1.Text = "hello"+test;
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Label1.Text = "hello" + e.CommandArgument.ToString();
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Visible = true;
            Label3.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
        }
    }
}