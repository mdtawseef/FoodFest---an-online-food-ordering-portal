using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace FoodFest
{
    public class FoodSelectDB
    {
        public string GetFood(String FoodName)
        {
            DBConnect db = new DBConnect();
            string Cost="";
            try 
            {
                db.SqlConnectionObj.Open();
                string query = string.Format("Select FoodPrice from food_tbl where FoodName={0}",FoodName);
                db.SqlCommandObj.CommandText = query;
                SqlDataReader reader = db.SqlCommandObj.ExecuteReader();
                while (reader.Read())
                {
                    Cost = reader.GetString(0);

                }
            }
            catch(Exception Ex)
            {

            }
            return Cost;
        }
    }
}



//string query2 = String.Format("Select FoodPrice from food_tbl where FoodId={0}", FoodId);
//db.SqlCommandObj.CommandText = query2;
//SqlDataReader reader2 = db.SqlCommandObj.ExecuteReader();
//while (reader2.Read())
//{
//    Cost = Convert.ToDouble(reader2.GetString(0));
//}

//FoodSelectDB2 obj = new FoodSelectDB2();
//obj.getFood(FoodId);

