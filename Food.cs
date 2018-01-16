using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace FoodFest
{
    public class Food
    {
        public string FoodName;
        public string Cost;
        public int FoodId;
        
        public string getPrice(string foodName,string rId)
        {
            FoodName=foodName;
            DBConnect connect = new DBConnect();

            try
            {
                connect.SqlConnectionObj.Open();
                //string query = string.Format("Select FoodPrice from Food_tbl where FoodName={0}", e.CommandArgument.ToString());
                string query = string.Format("Select FoodPrice, FoodId from Food_tbl where FoodName='{0}' and RestaurantId={1}", FoodName,rId);
                //string query = string.Format("Select FoodPrice from Food_tbl where FoodName='{0}'", FoodName);
                connect.SqlCommandObj.CommandText = query;
                SqlDataReader reader = connect.SqlCommandObj.ExecuteReader();
                //Cost = reader.GetString(0);
                while (reader.Read())
                {
                    Cost = reader.GetString(0);
                    FoodId = reader.GetInt32(1);
                }
                connect.SqlConnectionObj.Close();

            }
            catch (Exception Ex)
            {

            }
            return Cost;
        }


        public int getId(string foodName)
        {
            FoodName = foodName;
            DBConnect connect = new DBConnect();

            try
            {
                connect.SqlConnectionObj.Open();
                //string query = string.Format("Select FoodPrice from Food_tbl where FoodName={0}", e.CommandArgument.ToString());
                string query = string.Format("Select FoodId from Food_tbl where FoodName='{0}'", FoodName);
                //string query = string.Format("Select FoodPrice from Food_tbl where FoodName='{0}'", FoodName);
                connect.SqlCommandObj.CommandText = query;
                SqlDataReader reader = connect.SqlCommandObj.ExecuteReader();
                //Cost = reader.GetString(0);
                while (reader.Read())
                {
                    FoodId = reader.GetInt32(0);
                }
                connect.SqlConnectionObj.Close();
            }
            catch (Exception Ex)
            {

            }
            return FoodId;
        }

        public int getUserId(string userName)
        {

            DBConnect connect = new DBConnect();
            int userId=0;
            try
            {
                connect.SqlConnectionObj.Open();
                string query = string.Format("Select UserId from User_tbl where UserName='{0}'", userName);
                connect.SqlCommandObj.CommandText = query;
                SqlDataReader reader = connect.SqlCommandObj.ExecuteReader();
                while (reader.Read())
                {
                    userId = reader.GetInt32(0);
                }
                connect.SqlConnectionObj.Close();
            }
            catch (Exception Ex)
            {

            }
            
            return userId;
        }


        public string getDeliveryAddress(string userName)
        {

            DBConnect connect = new DBConnect();
            string deliveryAddress="";
            try
            {
                connect.SqlConnectionObj.Open();
                string query = string.Format("Select UserAddress from User_tbl where UserName='{0}'", userName);
                connect.SqlCommandObj.CommandText = query;
                SqlDataReader reader = connect.SqlCommandObj.ExecuteReader();
                while (reader.Read())
                {
                    deliveryAddress = reader.GetString(0);
                }
                connect.SqlConnectionObj.Close();
            }
            catch (Exception Ex)
            {

            }

            return deliveryAddress;
        }


    }
}