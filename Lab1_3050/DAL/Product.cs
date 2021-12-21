using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using Lab1_3050.Models;

namespace Lab1_3050.DAL
{
    public class Product
    {
        public static int pAdd(string Name, decimal price, string details, string image,string type)
        {



            SqlConnection con = new SqlConnection(
                            System.Configuration.ConfigurationManager.ConnectionStrings["WebShoppingEntities"].ToString());

            con.Open();
            string sql = "insert Product values('" + Name + "','" + price + "','" + details + "','" + image + "','" + type + "')";
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
        SQLHelper db = new SQLHelper();
        

        /// <summary>
        /// 添加商品 -- 数据访问层
        /// </summary>
        /// <param name="gm">商品对象</param>
        /// <returns></returns>
        

        /// <summary>
        /// 修改商品 -- 数据访问层
        /// </summary>
        /// <param name="gm">商品对象</param>
        /// <returns></returns>
        public int Update(ProductModels gm)
        {
            string sql = string.Format("update Product set Name = '{0}',Price='{1}', details = '{2}', img = '{3}', type = '{4}'", gm.Name, gm.Price, gm.details,gm.img,  gm.type);
            int count = db.ExecuteNonQuery(sql);
            return count;
        }


        /// <summary>
        /// 删除商品 -- 数据访问层
        /// </summary>
        /// <param name="id">商品编号</param>
        /// <returns></returns>
        public int Del(string name)
        {
            //string sql = "delete from goodsInfo g_id = '"+id+"'";
            string sql = string.Format("delete from Product where Name = '{0}'", name);
            int count = db.ExecuteNonQuery(sql);
            return count;
        }
         
        /// <summary>
        /// 统计记录总行数 -- 数据访问层
        /// </summary>
        /// <returns></returns>
        public int RecordCount()
        {
            string sql = "select count(*) from Product";
            int count = db.ExecuteScalar(sql);
            return count;
        }

        /// <summary>
        /// 根据商品编号获取商品信息 -- 数据访问层
        /// </summary>
        /// <returns></returns>
        public List<ProductModels> GetGoodsByName(string strName)
        {
            //定义查询语句
            string sql = string.Format("select * from Product where Name = '{0}'", strName);
            //得到查询后的结果
            SqlDataReader reader = (SqlDataReader)db.ExecuteReader(sql);
            //定义商品集合
            List<ProductModels> glist = new List<ProductModels>();
            //遍历结果，给集合赋值
            while (reader.Read())
            {
                ProductModels gm = new ProductModels()
                {
                    Name = reader[0].ToString(),
                    Price = decimal.Parse(reader[1].ToString()),
                    details = reader[2].ToString(),
                    img = reader[3].ToString(),
                    type = reader[4].ToString(),

                };

                glist.Add(gm);
            }
            return glist;
        }

        /// <summary>
        /// 获取所有商品信息 -- 数据访问层
        /// </summary>
        /// <returns></returns>
        public List<ProductModels> GetGoods()
        {
            //定义查询语句
            string sql = "select * from goodsInfo order by g_id desc";
            //得到查询后的结果
            SqlDataReader reader = (SqlDataReader)db.ExecuteReader(sql);
            //定义商品集合
            List<ProductModels> glist = new List<ProductModels>();
            //遍历结果，给集合赋值
            while (reader.Read())
            {
                ProductModels gm = new ProductModels()
                {
                    Name = reader[0].ToString(),
                    Price = decimal.Parse(reader[1].ToString()),
                    details = reader[2].ToString(),
                    img = reader[3].ToString(),
                    type = reader[4].ToString(),
                };

                glist.Add(gm);
            }
            return glist;
        }

    }


}
