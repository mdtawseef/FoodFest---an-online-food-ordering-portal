using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace FoodFest
{
    public class DBConnect
    {
        private SqlConnection connectionObj;
        private SqlCommand commandObj;

        public DBConnect()
        {
            connectionObj = new SqlConnection(ConfigurationManager.ConnectionStrings["FoodFestConn"].ConnectionString);
            commandObj = new SqlCommand();      
        }

        public SqlConnection SqlConnectionObj
        {
            get
            {
                return connectionObj;
            }
        }

        public SqlCommand SqlCommandObj
        {
            get
            {
                commandObj.Connection = connectionObj;
                return commandObj;
            }
        }


    }
}