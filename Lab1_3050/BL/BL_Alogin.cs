using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab1_3050.BL
{
    public class BL_Alogin
    {

        public static int LoginCheck(string strUserName, string strPassword)
        {
            int intDAL = 0;

            intDAL = DAL.Alogin.userCheck(strUserName, strPassword);

            return intDAL;
        }
    }
}