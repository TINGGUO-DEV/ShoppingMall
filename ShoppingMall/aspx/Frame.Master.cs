using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingMall.aspx
{
    public partial class Frame : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //有登入狀態
            if (Session["UserInfo"] != null && Session["UserInfo"].GetType().Name == "UserInfo")
            {
                UserInfo userInfo = Session["UserInfo"] as UserInfo;
                labUser.Text = userInfo.userId.ToString();
            }
            if (!string.IsNullOrEmpty(Request.QueryString.Get("token")) && !string.IsNullOrEmpty(Request.QueryString.Get("token")))
            {
                labUser.Text = "999";
            }
        }
    }
}