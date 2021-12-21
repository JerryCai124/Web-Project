using Lab1_3050.BL;
using Lab1_3050.DAL;
using Lab1_3050.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_3050.UL
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["admin"] == null)
                {
                    Response.Write("<script>alert('Please Login in ！');</script>");
                    Server.Transfer("s-staffLogin.aspx");
                }


            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            decimal price = Convert.ToDecimal(txtPrice.Text);
            string detail = Textdetail.Text;
            string image = TextImg.Text;
            string type = TextType.Text;
            BL_Product.insert(name, price, detail, image, type);
            Response.Write("<script>alert(\"successful\")</script>");
        }

        Product gb = new Product();

        /// <summary>
        /// 分页方法
        /// </summary>
        private void Pager()
        {

            //页面加载时为第一页
            int CurrentPage = 1;
            //获取URL里面的页码数
            CurrentPage = Convert.ToInt32(Request.QueryString["page"]);

            //记录总行数
            double Record = gb.RecordCount();
            //计算总共几页
            double PageCount = Math.Ceiling(Record / 5);


            //如果当前页小于1，那么当前为第一页
            if (CurrentPage < 1)
            {
                CurrentPage = 1;
            }
            //如果当前页大于最后一页，那么当前页为最后一页
            if (CurrentPage > PageCount)
            {
                CurrentPage = (int)PageCount;
            }

            //设置分页数据源,允许分页,每页显示条数,当前页
            PagedDataSource pd = new PagedDataSource();
            pd.DataSource = gb.GetGoods();
            pd.AllowPaging = true;
            pd.PageSize = 5;
            pd.CurrentPageIndex = CurrentPage - 1;
            //数据绑定
            RepGoods.DataSource = pd;
            RepGoods.DataBind();

            //首页,上一页(-1),下一页(+1),末页，当前页码,
            hlFirst.NavigateUrl = "s-staffItemsMgt.aspx?page=1";
            hlUp.NavigateUrl = "s-staffItemsMgt.aspx?page=" + (CurrentPage - 1);
            hlDown.NavigateUrl = "s-staffItemsMgt.aspx?page=" + (CurrentPage + 1);
            hlLast.NavigateUrl = "s-staffItemsMgt.aspx?page=" + PageCount;
            labCurrentPage.Text = CurrentPage.ToString();
        }

        protected void RepGoods_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //如果命令名字为  “del” ，做删除操作
            if (e.CommandName == "del")
            {
                //获取当前选中行（绑定了商品编号）
                string name = e.CommandArgument.ToString();
                int count = gb.Del(name);
                //如果删除成功，重新定向到首页
                if (count > 0)
                {
                    Response.Redirect("s-staffItemsMgt.aspx");
                }
            }
        }

        
    }
}