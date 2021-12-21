using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Lab1_3050.DAL
{
    public class Register
    {

        public static int cReg(string strUserName, string strPassword,string strName,string strEmail,string strAddress,string strMobile,int iSuspend,int iDel)
        {
         


            SqlConnection con = new SqlConnection(
                            System.Configuration.ConfigurationManager.ConnectionStrings["WebShoppingEntities"].ToString());

            con.Open();
            string sql = "insert Customer values('" + strUserName + "','" + strPassword + "','" + strName + "','" + strEmail + "','" + strAddress + "','" + strMobile + "','" + iSuspend + "','" + iDel + "')";
            SqlCommand cmd = new SqlCommand(sql,con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (SqlException) { 
            
            }
                
           
            
            con.Close();
            return 0;
        }

        public static int aReg(string strUserName, string strPassword, string strName, string strEmail, string strAddress, string strMobile)
        {


            SqlConnection con = new SqlConnection(
                            System.Configuration.ConfigurationManager.ConnectionStrings["WebShoppingEntities"].ToString());

            con.Open();
            string sql = "insert Staff values('" + strUserName + "','" + strPassword + "','" + strName + "','" + strEmail + "','" + strAddress + "','" + strMobile + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (SqlException)
            {

            }



            con.Close();
            return 0;
        }
    }
}