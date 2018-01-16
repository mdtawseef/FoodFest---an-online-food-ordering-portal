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
    public partial class AddFoodItem : System.Web.UI.Page
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
            //DropDownList1.Items.Insert(0, new ListItem("-- choose one--", "0"));
        }

        protected void AddFoodButton_Click(object sender, EventArgs e)
        {
            string message = "";
            bool exist = false;
            try
            {
                resConn.SqlConnectionObj.Open();
                string query = String.Format("Select FoodName,RestaurantId from Food_tbl");
                resConn.SqlCommandObj.CommandText = query;
                SqlDataReader reader = resConn.SqlCommandObj.ExecuteReader();
                while (reader.Read())
                {
                    if (reader.GetString(0) == FoodNameTextBox.Text.ToString() && reader.GetInt32(1)==Convert.ToInt32(DropDownList1.SelectedValue))
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
                    //file upload
                    //string logoStr = LogoFileUpload.FileName;


                    //LogoFileUpload.PostedFile.SaveAs(@"D:\Project\1Mourin\With_Admin_Page_290414\FoodFest\FoodFest\UploadedLogos\" + logoStr);
                    //logoPathStr = @"D:\Project\1Mourin\With_Admin_Page_290414\FoodFest\FoodFest\UploadedLogos\" + logoStr.ToString();

                    //resConn.SqlConnectionObj.Open();
                    //string query2 = String.Format("INSERT INTO Food_tbl(FoodName,FoodPrice,FoodType,RestaurantId) VALUES('{0}','{1}','{2}','{3}')", FoodNameTextBox.Text, FoodPriceTextBox.Text, FoodTypeTextBox.Text,DropDownList1.SelectedValue);
                    //resConn.SqlCommandObj.CommandText = query2;
                    //resConn.SqlCommandObj.ExecuteNonQuery();
                    SqlDataSource2.Insert();

                    message = "New Food Item added successfully";
                    foodMsgLabel.Text = message;
                }
                else
                    foodMsgLabel.Text = "Food item already exists in this restaurant.";
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
                FoodNameTextBox.Text = "";
                FoodPriceTextBox.Text = "";

            
            }
        }
    }
}