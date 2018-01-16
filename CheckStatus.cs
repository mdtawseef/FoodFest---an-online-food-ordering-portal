using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace FoodFest
{
    public class CheckStatus
    {
        DBConnect connect = new DBConnect();

        public bool CheckUser(string id)
        {

            Int32 CurrentHour = 0;
            Int32 CurrentMin = 0;
            Int32 OpenHour = 0;
            Int32 OpenMin = 0;
            Int32 CloseHour = 0;
            Int32 CloseMin = 0;


            try
            {
                connect.SqlConnectionObj.Open();
                string query = string.Format("select DATEPART(HOUR,GETDATE()) as 'Current hour', DATEPART(MINUTE,GETDATE()) as 'Current min', DATEPART(HOUR,OpeningHour) as 'openhour', DATEPART(MINUTE,OpeningHour) as 'openmin', DATEPART(HOUR,ClosingHour) as 'closehour', DATEPART(MINUTE,ClosingHour) as 'closemin' from Restaurant_tbl where RestaurantId='{0}'", id);
                connect.SqlCommandObj.CommandText = query;
                SqlDataReader reader = connect.SqlCommandObj.ExecuteReader();
                while (reader.Read())
                {
                    CurrentHour = reader.GetInt32(0);
                    CurrentMin = reader.GetInt32(1);
                   OpenHour = reader.GetInt32(2);
                    OpenMin = reader.GetInt32(3);
                    CloseHour = reader.GetInt32(4);
                     CloseMin = reader.GetInt32(5);
                }

                if ((OpenHour < CurrentHour) && (CloseHour > CurrentHour))
                {
                    return true;
                }

                else if ((OpenHour == CurrentHour && OpenMin <= CurrentMin) && (CloseHour == CurrentHour && CloseMin >= CurrentMin))
                {
                    return true;
                }

                else
                    return false;




            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred during DB operation. Try again", ex);
            }
            finally
            {
                if (connect.SqlConnectionObj != null && connect.SqlConnectionObj.State == ConnectionState.Open)
                {
                    connect.SqlConnectionObj.Close();
                }
            }

            
        }
    }
}