using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using Lab1_3050.Models;

namespace Lab1_3050.DAL
{
    public class Cinforn
    {
        public static string GetInfornByName(string strName)
        {
            String emailDetail = "";
            SQLHelper db = new SQLHelper();
            //定义查询语句
            string sql = string.Format("select * from Customer where Name = '{0}'", strName);
            SqlConnection conn = new SqlConnection(
                           System.Configuration.ConfigurationManager.ConnectionStrings["WebShoppingEntities"].ToString());

            conn.Open();
            SqlCommand comm = new SqlCommand(sql, conn);
            
            SqlDataReader dr = comm.ExecuteReader();
            if (dr.Read())
            {

             emailDetail = dr.GetString(dr.GetOrdinal("Email"));
                
            }
            
            dr.Close();
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            return emailDetail;
        }
    }
}