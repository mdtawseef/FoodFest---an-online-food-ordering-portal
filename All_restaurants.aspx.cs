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
    public partial class All_restaurants : System.Web.UI.Page
    {

        DBConnect resConn = new DBConnect();

        string Location = "";
        string Cuisine = "";
        string type = "";

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

                LinkButton LinkButton3 = (LinkButton)Master.FindControl("LinkButton3");
                LinkButton3.Visible = true;

            }
            else
            {

                LinkButton LinkButton1 = (LinkButton)Master.FindControl("LinkButton1");
                LinkButton1.Visible = true;
                LinkButton LinkButton2 = (LinkButton)Master.FindControl("LinkButton2");
                LinkButton2.Visible = false;
                LinkButton LinkButton3 = (LinkButton)Master.FindControl("LinkButton3");
                LinkButton3.Visible = false;

            }
            //Image1.ImageUrl = "~/Handler1.ashx?imgId=1";

            Location = Request.QueryString["Location"];
            Cuisine = Request.QueryString["Cuisine"];
            type = Request.QueryString["type"];

           

          if (!Page.IsPostBack)
           { //do something
                     Location = Request.QueryString["Location"];
                 Cuisine = Request.QueryString["Cuisine"];
             type = Request.QueryString["type"];
             DropDownList1.SelectedValue = Location;



                    try
                    {
                        resConn.SqlConnectionObj.Open();
                        string query = "";


                        if ((Location == "Banani") || (Location == "Gulshan") || (Location=="Niketon"))
                        {
                            query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Banani%' or RestaurantAddress like '%Gulshan%' or RestaurantAddress like '%Niketon%'");
                        }

                        else if ((Location == "Badda") || (Location == "Rampura"))
                        {
                            query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Rampura%' or RestaurantAddress like '%Badda%'");
                        }

                        else if ((Location == "Dhanmondi") || (Location == "Green Road"))
                        {
                            query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Dhanmondi%' or RestaurantAddress like '%Green Road%'");
                        }

                        else if ((Location == "Mohammadpur") || (Location == "Lalmatia"))
                        {
                            query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Mohammadpur%' or RestaurantAddress like '%Lalmatia%'");
                        }

                        else if ((Location == "Baily Road") || (Location == "Shantinagar"))
                        {
                            query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Shantinagar%' or RestaurantAddress like '%Baily Road%'");
                        }

                        else if ((Location == "Dilkusha") || (Location == "Motijheel"))
                        {
                            query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Dilkusha%' or RestaurantAddress like '%Motijheel%'");
                        }

                        else if ((Location == "Uttara") || (Location == "Nikunja"))
                        {
                            query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Uttara%' or RestaurantAddress like '%Nikunja%'");
                        }


                        else if (type == "cuisine")
                        {
                            query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantId in(Select RestaurantId from Food_tbl where FoodType='{0}')", Cuisine);
                        }

                        else
                        {
                            query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Banani%' or RestaurantAddress like '%Gulshan%' or RestaurantAddress like '%Niketon%'");
                        }

                       


                        resConn.SqlCommandObj.CommandText = query;
                        //SqlDataReader reader = resConn.SqlCommandObj.ExecuteReader();
                        Repeater1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                        Repeater1.DataBind();

                        resConn.SqlConnectionObj.Close();



                    }
                    catch (Exception ex)
                    {
                        throw new Exception("Error occurred during DB operation. Try again", ex);
                    }
                    finally
                    {
                        if (resConn.SqlConnectionObj != null && resConn.SqlConnectionObj.State == ConnectionState.Open)
                        {
                            resConn.SqlConnectionObj.Close();
                        }
                    }
          }
            

           
        }


        protected void Button2_Command(object sender, CommandEventArgs e)
        {
            string RestId = e.CommandArgument.ToString();
            Response.Redirect("~/Restaurant.aspx?RestaurantId="+RestId);

        }

        protected void LinkButton3_Command(object sender, CommandEventArgs e)
        {
            try
            {
                Location = DropDownList1.SelectedValue;
                resConn.SqlConnectionObj.Open();
                string query = "";


                if ((Location == "Banani") || (Location == "Gulshan") || (Location == "Niketon"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Banani%' or RestaurantAddress like '%Gulshan%' or RestaurantAddress like '%Niketon%' order by RestaurantMinOrder asc");
                }

                else if ((Location == "Badda") || (Location == "Rampura"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Rampura%' or RestaurantAddress like '%Badda%' order by RestaurantMinOrder asc");
                }

                else if ((Location == "Dhanmondi") || (Location == "Green Road"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Dhanmondi%' or RestaurantAddress like '%Green Road%' order by RestaurantMinOrder asc");
                }

                else if ((Location == "Mohammadpur") || (Location == "Lalmatia"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Mohammadpur%' or RestaurantAddress like '%Lalmatia%' order by RestaurantMinOrder asc");
                }

                else if ((Location == "Baily Road") || (Location == "Shantinagar"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Shantinagar%' or RestaurantAddress like '%Baily Road%' order by RestaurantMinOrder asc");
                }

                else if ((Location == "Dilkusha") || (Location == "Motijheel"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Dilkusha%' or RestaurantAddress like '%Motijheel%' order by RestaurantMinOrder asc");
                }

                else if ((Location == "Uttara") || (Location == "Nikunja"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Uttara%' or RestaurantAddress like '%Nikunja%' order by RestaurantMinOrder asc");
                }


                else if (type == "cuisine")
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantId in(Select RestaurantId from Food_tbl where FoodType='{0}' order by RestaurantMinOrder asc)", Cuisine);
                }

                else
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Banani%' or RestaurantAddress like '%Gulshan%' or RestaurantAddress like '%Niketon%' order by RestaurantMinOrder asc");
                }


                resConn.SqlCommandObj.CommandText = query;
                //SqlDataReader reader = resConn.SqlCommandObj.ExecuteReader();
                Repeater1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                Repeater1.DataBind();

                resConn.SqlConnectionObj.Close();



            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred during DB operation. Try again", ex);
            }
            finally
            {
                if (resConn.SqlConnectionObj != null && resConn.SqlConnectionObj.State == ConnectionState.Open)
                {
                    resConn.SqlConnectionObj.Close();
                }
            }
        }

        protected void LinkButton4_Command(object sender, CommandEventArgs e)
        {
            try
            {
                Location = DropDownList1.SelectedValue;
                resConn.SqlConnectionObj.Open();
                string query = "";


                if ((Location == "Banani") || (Location == "Gulshan") || (Location == "Niketon"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Banani%' or RestaurantAddress like '%Gulshan%' or RestaurantAddress like '%Niketon%' order by DeliveryFee asc");
                }

                else if ((Location == "Badda") || (Location == "Rampura"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Rampura%' or RestaurantAddress like '%Badda%' order by DeliveryFee asc");
                }

                else if ((Location == "Dhanmondi") || (Location == "Green Road"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Dhanmondi%' or RestaurantAddress like '%Green Road%' order by DeliveryFee asc");
                }

                else if ((Location == "Mohammadpur") || (Location == "Lalmatia"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Mohammadpur%' or RestaurantAddress like '%Lalmatia%' order by DeliveryFee asc");
                }

                else if ((Location == "Baily Road") || (Location == "Shantinagar"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Shantinagar%' or RestaurantAddress like '%Baily Road%' order by DeliveryFee asc");
                }

                else if ((Location == "Dilkusha") || (Location == "Motijheel"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Dilkusha%' or RestaurantAddress like '%Motijheel%' order by DeliveryFee asc");
                }

                else if ((Location == "Uttara") || (Location == "Nikunja"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Uttara%' or RestaurantAddress like '%Nikunja%' order by DeliveryFee asc");
                }


                else if (type == "cuisine")
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantId in(Select RestaurantId from Food_tbl where FoodType='{0}' order by DeliveryFee asc)", Cuisine);
                }

                else
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Banani%' or RestaurantAddress like '%Gulshan%' or RestaurantAddress like '%Niketon%' order by DeliveryFee asc");
                }


                resConn.SqlCommandObj.CommandText = query;
                //SqlDataReader reader = resConn.SqlCommandObj.ExecuteReader();
                Repeater1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                Repeater1.DataBind();

                resConn.SqlConnectionObj.Close();



            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred during DB operation. Try again", ex);
            }
            finally
            {
                if (resConn.SqlConnectionObj != null && resConn.SqlConnectionObj.State == ConnectionState.Open)
                {
                    resConn.SqlConnectionObj.Close();
                }
            }
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            string searchStr = TextBox1.Text;

            try
            {
                Location = DropDownList1.SelectedValue;
                resConn.SqlConnectionObj.Open();
                string query = "";


                if ((Location == "Banani") || (Location == "Gulshan"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where (RestaurantAddress like '%Banani%' or RestaurantAddress like '%Gulshan%') and RestaurantName like '%{0}%'",searchStr);
                }

                else if ((Location == "Dhanmondi") || (Location == "Lalmatia"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where (RestaurantAddress like '%Dhanmondi%' or RestaurantAddress like '%Lalmatia%') and RestaurantName like '%{0}%'", searchStr);
                }

                else if (type == "cuisine")
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantId in(Select RestaurantId from Food_tbl where FoodType='{0}' order by DeliveryFee asc)", Cuisine);
                }

                else
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Gulshan%'");
                }


                resConn.SqlCommandObj.CommandText = query;
                //SqlDataReader reader = resConn.SqlCommandObj.ExecuteReader();
                Repeater1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                Repeater1.DataBind();

                resConn.SqlConnectionObj.Close();



            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred during DB operation. Try again", ex);
            }
            finally
            {
                if (resConn.SqlConnectionObj != null && resConn.SqlConnectionObj.State == ConnectionState.Open)
                {
                    resConn.SqlConnectionObj.Close();
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Location = DropDownList1.SelectedValue;
            Cuisine = Request.QueryString["Cuisine"];
            type = Request.QueryString["type"];

            try
            {
                resConn.SqlConnectionObj.Open();
                string query = "";


                if ((Location == "Banani") || (Location == "Gulshan") || (Location == "Niketon"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Banani%' or RestaurantAddress like '%Gulshan%' or RestaurantAddress like '%Niketon%'");
                }

                else if ((Location == "Badda") || (Location == "Rampura"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Rampura%' or RestaurantAddress like '%Badda%'");
                }

                else if ((Location == "Dhanmondi") || (Location == "Green Road"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Dhanmondi%' or RestaurantAddress like '%Green Road%'");
                }

                else if ((Location == "Mohammadpur") || (Location == "Lalmatia"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Mohammadpur%' or RestaurantAddress like '%Lalmatia%'");
                }

                else if ((Location == "Baily Road") || (Location == "Shantinagar"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Shantinagar%' or RestaurantAddress like '%Baily Road%'");
                }

                else if ((Location == "Dilkusha") || (Location == "Motijheel"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Dilkusha%' or RestaurantAddress like '%Motijheel%'");
                }

                else if ((Location == "Uttara") || (Location == "Nikunja"))
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Uttara%' or RestaurantAddress like '%Nikunja%'");
                }


                else if (type == "cuisine")
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantId in(Select RestaurantId from Food_tbl where FoodType='{0}')", Cuisine);
                }

                else
                {
                    query = String.Format("Select RestaurantId, RestaurantName, RestaurantAddress, RestaurantMinOrder, CONVERT (VARCHAR(8), OpeningHour, 108) AS OpeningHour, CONVERT (VARCHAR(8), ClosingHour, 108) AS ClosingHour, LogoImg,DeliveryFee from Restaurant_tbl where RestaurantAddress like '%Banani%' or RestaurantAddress like '%Gulshan%' or RestaurantAddress like '%Niketon%'");
                }




                resConn.SqlCommandObj.CommandText = query;
                //SqlDataReader reader = resConn.SqlCommandObj.ExecuteReader();
                Repeater1.DataSource = resConn.SqlCommandObj.ExecuteReader();
                Repeater1.DataBind();

                resConn.SqlConnectionObj.Close();



            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred during DB operation. Try again", ex);
            }
            finally
            {
                if (resConn.SqlConnectionObj != null && resConn.SqlConnectionObj.State == ConnectionState.Open)
                {
                    resConn.SqlConnectionObj.Close();
                }
            }
        }

      

       
    }
}