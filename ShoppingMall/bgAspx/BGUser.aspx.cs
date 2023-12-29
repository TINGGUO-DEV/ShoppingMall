using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingMall.aspx
{
    public partial class BGUser : System.Web.UI.Page
    {
        public string InitalSetting { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            UserInfo userInfo = new UserInfo()
            {
                userId = 1234 //假資料
            };
            this.InitalSetting = $"{userInfo.userId}";
        }
    }
}