using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab1_3050.BL
{
    public class BL_Clogin
    {
        public static int LoginCheck(string strUserName, string strPassword)
        {
            int intDAL = 0;

            intDAL = DAL.Clogin.userCheck(strUserName, strPassword);

            return intDAL;
        }

    }
}