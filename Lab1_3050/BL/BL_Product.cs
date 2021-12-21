using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Lab1_3050.DAL;
using Lab1_3050.Models;

namespace Lab1_3050.BL
{
    public class BL_Product
    {
        public static int insert(string Name, decimal price, string details, string image,string type)
        {
            DAL.Product.pAdd(Name, price, details, image,type);


            return 0;
        }
        Product gd = new Product();
        public int Update(ProductModels gm)
        {
            return gd.Update(gm);
        }


        /// <summary>
        /// 根据商品编号获取商品信息 -- 数据访问层
        /// </summary>
        /// <returns></returns>
        public List<ProductModels> GetGoodsByName(string strName)
        {
            return gd.GetGoodsByName(strName);
        }


        /// <summary>
        /// 删除商品 -- 业务逻辑层
        /// </summary>
        /// <param name="id">商品编号</param>
        /// <returns></returns>
        public int Del(string name)
        {
            return gd.Del(name);
        }

        /// <summary>
        /// 统计记录总行数 -- 业务逻辑层
        /// </summary>
        /// <returns></returns>
        public int RecordCount()
        {
            return gd.RecordCount();
        }

        /// <summary>
        /// 获取所有商品信息 -- 业务逻辑层
        /// </summary>
        /// <returns></returns>
        public List<ProductModels> GetGoods()
        {
            return gd.GetGoods();
        }

    }
}
