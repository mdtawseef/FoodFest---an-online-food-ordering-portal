using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;

namespace FoodFest
{
    /// <summary>
    /// Summary description for HandlerImg
    /// </summary>
    public class HandlerImg : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            DBConnect conn = new DBConnect();

            try
            {
                conn.SqlConnectionObj.Open();
                string query = String.Format("Select LogoImg from Restaurant_tbl where RestaurantId={0}", context.Request.QueryString["restId"]);
                conn.SqlCommandObj.CommandText = query;
                SqlDataReader reader = conn.SqlCommandObj.ExecuteReader();

                while (reader.Read())
                {
                    context.Response.ContentType = "image/jpg";
                    context.Response.BinaryWrite((byte[])reader["LogoImg"]);
                }

                if (reader != null)
                {
                    conn.SqlConnectionObj.Close();
                }
            }
            finally
            {
                if (conn != null)
                {
                    conn.SqlConnectionObj.Close();
                }
            }

            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}