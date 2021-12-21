using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Lab1_3050.DAL
{
    public class SQLHelper
    {
        public SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebShoppingEntities"].ConnectionString);

        /// <summary>
        /// 统计方法
        /// </summary>
        /// <param name="sql">传递过来的sql语句</param>
        /// <returns></returns>
        public int ExecuteScalar(string sql)
        {
            int count = 0;

            SqlCommand cmd = new SqlCommand(sql, conn);
            try
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }
                count = Convert.ToInt32(cmd.ExecuteScalar());
            }
            catch (Exception exp)
            {
                throw exp;
            }
            finally
            {
                conn.Close();
            }

            return count;
        }

        /// <summary>
        /// 增，删，改方法
        /// </summary>
        /// <param name="sql">传递过来的sql语句</param>
        /// <returns></returns>
        public int ExecuteNonQuery(string sql)
        {
            int count = 0;
            SqlCommand cmd = new SqlCommand(sql, conn);
            try
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }
                count = cmd.ExecuteNonQuery();
            }
            catch (Exception exp)
            {
                throw exp;
            }
            finally
            {
                conn.Close();
            }
            return count;
        }


        /// <summary>
        /// 查询方法
        /// </summary>
        /// <param name="sql">传递过来的sql语句</param>
        /// <returns></returns>
        public IDataReader ExecuteReader(string sql)
        {
            SqlDataReader reader = null;
            SqlCommand cmd = new SqlCommand(sql, conn);
            try
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }
                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch (Exception exp)
            {
                throw exp;
            }
            return reader;
        }


    }
}
