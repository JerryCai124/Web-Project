using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Lab1_3050.DAL
{
    public class Alogin
    {
        public static int userCheck(string strUserName, string strPassword)
        {
            int Iresult = 0;


            SqlConnection con = new SqlConnection(
                            System.Configuration.ConfigurationManager.ConnectionStrings["WebShoppingEntities"].ToString());

            con.Open();


            SqlCommand sqlComGet = new SqlCommand();
            sqlComGet.Connection = con;

            sqlComGet.CommandText = "select * from Staff where UserName='" + strUserName + "' and Password='" + strPassword + "'";
            SqlDataReader sqlDr = sqlComGet.ExecuteReader();
            if (sqlDr.HasRows)
            {

                Iresult = 1;
            }
            else
            {
                Iresult = 0;
            }
            return Iresult;

            con.Close();
        }
    }
}