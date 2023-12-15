using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingMall.ajax
{
    public partial class AjaxMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Response.Write("{\"status\":0}");
            
            Session["UserInfo"] = "123";
            string method = "";
            method = Request.Form["method"];

            switch (method)
            {
                case "Register":
                    Register();
                    break;

                case "Login":
                    Login();
                    break;

                case "ResetPwd":
                    ResetPwd();
                    break;

                case "SendCode":
                    SendCode();
                    break;

            }
        }

        private void Login()
        {
            throw new NotImplementedException();
        }

        private void Register()
        {
            throw new NotImplementedException();
        }
        private void ResetPwd()
        {
            throw new NotImplementedException();
        }
        private void SendCode()
        {
            throw new NotImplementedException();
        }
        public void Register(string acc, string pwd, string pwdSec, string mail, int phone)
        {
            acc = Request.Form["acc"];
            pwd = Request.Form["pwd"];
            pwdSec = Request.Form["pwdSec"];
            mail = Request.Form["mail"];
            phone = Convert.ToInt32(Request.Form["phone"]);

            Session["UserInfo"] = new UserInfo() // 方法1( 是相同的東西 )
            {
                Account = "123",
                Password = "a123546B"
            };

            UserInfo user = new UserInfo(); // 方法2 ( 是相同的東西 )
            user.Account = "123";
            user.Password = "a123546B";
            Session["UserInfo"] = user;
        }

        public void Login(string acc, string pwd)
        {
            acc = Request.Form["acc"];
            pwd = Request.Form["pwd"];

            UserInfo userInfo = Session["UserInfo"] as UserInfo;
            
        }
        public void ResetPwd(string pwd, string pwdSec)
        {
            pwd = Request.Form["pwd"];
            pwdSec = Request.Form["pwdSec"];

            UserInfo userInfo = Session["UserInfo"] as UserInfo;

        }
        public void SendCode(string mail)
        {
            mail = Request.Form["mail"];

            UserInfo userInfo = Session["UserInfo"] as UserInfo;

        }
    }

    public class UserInfo
    {
        public string Account { get; set; }

        public string Password { get; set; }
    }
}
