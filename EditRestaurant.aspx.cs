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
    public partial class EditRestaurant : System.Web.UI.Page
    {
        DBConnect conn = new DBConnect();
        public List<Restaurant> restaurants = new List<Restaurant>();

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

            populateRestaurantList();
        }

        private void populateRestaurantList()
        {
            Restaurant aRestaurant;
            try
            {
                conn.SqlConnectionObj.Open();
                string query = String.Format("SELECT RestaurantId, RestaurantName, RestaurantAddress, RestaurantPhone, RestaurantMinOrder,OpeningHour,ClosingHour,DeliveryFee FROM Restaurant_tbl");
                conn.SqlCommandObj.CommandText = query;
                SqlDataReader reader = conn.SqlCommandObj.ExecuteReader();

                while (reader.Read())
                {
                    aRestaurant = new Restaurant();
                    aRestaurant.RestaurantId = reader.GetInt32(0);
                    aRestaurant.RestaurantName = reader.GetString(1);
                    aRestaurant.RestaurantAddress = reader.GetString(2);
                    aRestaurant.RestaurantPhone = reader.GetString(3);
                    aRestaurant.RestaurantMinOrder = reader.GetString(4);
                    aRestaurant.OpenHour = reader.GetDateTime(5);
                    aRestaurant.CLoseHour = reader.GetDateTime(6);
                    aRestaurant.DeliveryFee = reader.GetInt32(7);

                    restaurants.Add(aRestaurant);
                }

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
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            string message;

            if (FileUpload1.FileName != "")
            {
                SqlDataSource2.Update();

                message = "Restaurant Updated successfully";
                msgLabel.Text = message;
            }

            else
            {

                try
                {
                    conn.SqlConnectionObj.Open();
                    string query = String.Format("Update Restaurant_tbl SET RestaurantAddress='{0}',RestaurantPhone='{1}',RestaurantMinOrder='{2}',OpeningHour='{3}',ClosingHour='{4}',DeliveryFee='{5}' where RestaurantName='{6}'", ResAddTextBox.Text, ResPhoneTextBox.Text, MinOrderTextBox.Text, OpenHrTextBox.Text, CloseHrTextBox.Text,TextBox1.Text, DropDownList1.SelectedValue);
                    conn.SqlCommandObj.CommandText = query;
                    conn.SqlCommandObj.ExecuteNonQuery();
                    message = "Restaurant Updated successfully";
                    msgLabel.Text = message;
                }
                catch (Exception ex)
                {
                    throw new Exception("Error occurred during update operation. Try again", ex);
                }
                finally
                {
                    if (conn.SqlConnectionObj != null && conn.SqlConnectionObj.State == ConnectionState.Open)
                    {
                        conn.SqlConnectionObj.Close();
                    }
                }
            }
            ResPhoneTextBox.Text = "";
            ResAddTextBox.Text = "";
            MinOrderTextBox.Text = "";
            CloseHrTextBox.Text = "";
            TextBox1.Text = "";
            OpenHrTextBox.Text = "";




        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            msgLabel.Text = null;

            Restaurant selectedRestaurant = Get(DropDownList1.SelectedValue);

            if (selectedRestaurant != null)
            {
                ResAddTextBox.Text = selectedRestaurant.RestaurantAddress;
                ResPhoneTextBox.Text = selectedRestaurant.RestaurantPhone;
                MinOrderTextBox.Text = selectedRestaurant.RestaurantMinOrder.ToString();
                OpenHrTextBox.Text = selectedRestaurant.OpenHour.ToString("t");
                CloseHrTextBox.Text = selectedRestaurant.CLoseHour.ToString("t");
                TextBox1.Text = selectedRestaurant.DeliveryFee.ToString();


                int id = selectedRestaurant.RestaurantId;

                Image1.ImageUrl = "~/HandlerImg.ashx?restId=" + id;

            }
        }

        public Restaurant Get(string p)
        {
            foreach (Restaurant aRestaurant in restaurants)
            {
                if (aRestaurant.RestaurantName == p)
                {
                    return aRestaurant;
                }
            }
            return null;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            msgLabel.Text = null;

            Restaurant selectedRestaurant = Get(DropDownList2.SelectedValue);

            if (selectedRestaurant != null)
            {
                ResAddTextBox.Text = selectedRestaurant.RestaurantAddress;
                ResPhoneTextBox.Text = selectedRestaurant.RestaurantPhone;
                MinOrderTextBox.Text = selectedRestaurant.RestaurantMinOrder.ToString();
                OpenHrTextBox.Text = selectedRestaurant.OpenHour.ToString("t");
                CloseHrTextBox.Text = selectedRestaurant.CLoseHour.ToString("t");
                TextBox1.Text = selectedRestaurant.DeliveryFee.ToString();


                int id = selectedRestaurant.RestaurantId;

                Image1.ImageUrl = "~/HandlerImg.ashx?restId=" + id;

            }
        }

        protected void DelButton1_Click(object sender, EventArgs e)
        {
            SqlDataSource4.Delete();


            SqlDataSource5.Delete();
        }



    }
}