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
    public partial class Add_restaurant : System.Web.UI.Page
    {
        DBConnect resConn = new DBConnect();

        protected void Page_Load(object sender, EventArgs e)
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
        }

        protected void AddRestaurantButton_Click(object sender, EventArgs e)
        {
            string message = "";
            bool exist = false;
            string logoPathStr;

            //if(LogoFileUpload.HasFile){
            //    //string logoStr = LogoFileUpload.FileName;
            //    //LogoFileUpload.PostedFile.SaveAs(Server.MapPath(".") + "//UploadedLogos//" + logoStr);
            //    //logoPathStr = "//uploads//" + logoStr.ToString();

            //  }
            
            
            try
            {
                resConn.SqlConnectionObj.Open();
                string query = String.Format("Select RestaurantName from Restaurant_tbl");
                resConn.SqlCommandObj.CommandText = query;
                SqlDataReader reader = resConn.SqlCommandObj.ExecuteReader();
                while (reader.Read())
                {
                    if (reader.GetString(0) == ResNameTextBox.Text.ToString())
                    {
                        exist = true;
                        break;
                    }
                    else
                        exist = false;

                }
                resConn.SqlConnectionObj.Close();


                if (exist == false)
                {
                /*    //file upload
               //     string logoStr = LogoFileUpload.FileName;
                  byte[] test = LogoFileUpload.FileBytes;

               //    LogoFileUpload.PostedFile.SaveAs(@"D:\Project\1Mourin\With_Admin_Page_290414\FoodFest\FoodFest\UploadedLogos\" + logoStr);
               //logoPathStr = @"D:\Project\1Mourin\With_Admin_Page_290414\FoodFest\FoodFest\UploadedLogos\" + logoStr.ToString();

                    resConn.SqlConnectionObj.Open();
                    string query2 = String.Format("INSERT INTO Restaurant_tbl(RestaurantName,RestaurantAddress,RestaurantPhone,RestaurantMinOrder,OpeningHour,ClosingHour,LogoImg) VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", ResNameTextBox.Text, ResAddTextBox.Text, ResPhoneTextBox.Text, MinOrderTextBox.Text,OpenHourTextBox.Text,closeHourTextBox.Text,test);
                    resConn.SqlCommandObj.CommandText = query2;
                    resConn.SqlCommandObj.ExecuteNonQuery();*/
                    
                    
                    
                    ///insert likhte hobe************
                    SqlDataSource1.Insert();

                    message = "New Restaurant added successfully";
                    saveMsgLabel.Text = message;
                }
                else
                    saveMsgLabel.Text = "Restaurant already exists.";
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
                ResNameTextBox.Text = "";
                ResPhoneTextBox.Text = "";
                ResAddTextBox.Text = "";
                MinOrderTextBox.Text = "";
                closeHourTextBox.Text = "";
                TextBox1.Text = "";
                OpenHourTextBox.Text = "";

            }
        }
    }
}