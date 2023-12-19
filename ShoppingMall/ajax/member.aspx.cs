using System;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text.RegularExpressions;

public partial class member : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckAjaxRequest();

        string method = Request.Form["method"]; //不需去除空白
        method = "register";
        switch (method)
        {
            case "register":
                Register();
                break;
            default:
                //do nothing
                break;
        }
    }

    /// <summary>
    /// 註冊會員
    /// </summary>
    private void Register()
    {
        int result = 0;

        string acc = Request.Form["acc"];
        string pwd = Request.Form["pwd"];
        string pwdSec = Request.Form["pwdSec"];
        string mail = Request.Form["mail"];
        int phone = 0;
        int.TryParse(Request.Form["phone"], out phone);

        /*acc = "sasaki01";
        pwd = "asdf";
        pwdSec = "asdf";
        mail = "asdf@gmial.com";
        phone = 0971222333;*/

        //驗證帳號
        if (string.IsNullOrEmpty(acc) || new Regex("[a-zA-Z\\d]{8,20}").IsMatch(acc) == false)
        {
            result += 1;
        }
        //驗證密碼
        string md5Pwd = Md5Encode(pwd);
        if (string.IsNullOrEmpty(pwd) || string.IsNullOrEmpty(pwdSec) || md5Pwd != Md5Encode(pwdSec))
        {
            result += 2;
        }
        //驗證信箱
        if (ValidMail(mail) == false)
        {
            result += 4;
        }
        //驗證手機
        if (phone == 0 || new Regex("^[09]\\d{8}").IsMatch(phone.ToString()) == false)
        {
            result += 8;
        }

        if (result == 0)
        {
            SqlCommand cmd = new SqlCommand(); //宣告SqlCommand物件
            cmd.Connection = new SqlConnection(this.ConnStr); //設定連線字串

            //以下try catch finally為固定寫法，且釋放資源必定要寫在finally裡
            //偵錯
            try
            {
                //這是呼叫SP的方式，與上面的其實大同小異，可以當做是直接在SQL的查詢工具那邊下命令
                cmd.CommandText = "EXEC pro_fr_registerMember @acc, @pwd, @mail, @phone";

                //參數化查詢條件，可以有效防止SQL injection(資料隱碼攻擊)
                cmd.Parameters.Add("@acc", SqlDbType.VarChar).Value = acc;
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar).Value = md5Pwd;
                cmd.Parameters.Add("@mail", SqlDbType.VarChar).Value = mail;
                cmd.Parameters.Add("@phone", SqlDbType.Int).Value = phone;

                cmd.Connection.Open(); //開啟資料庫連線

                int.TryParse(cmd.ExecuteScalar().ToString(), out result); //執行並取回資料
            }
            //錯誤捕獲區塊
            catch (Exception e) //e用於除錯時方便查看用 ，正式上線時請務必不要直接顯示ex於畫面上
            {
                //紀錄日誌
                //NLog.Write("register", e.Message);
                result = 0;
            }
            //最終無論如何 必定會執行的區塊　用來放置釋放或關閉資源
            finally
            {
                cmd.Parameters.Clear();
                cmd.Connection.Close();
            }
        }

        Response.Write("{\"status\": " + result + "}");
    }

    /// <summary>
    /// 驗證信箱格式
    /// </summary>
    /// <param name="mail">會員輸入的mail</param>
    /// <returns></returns>
    private bool ValidMail(string mail)
    {
        try
        {
            MailAddress m = new MailAddress(mail);

            return true;
        }
        catch (Exception e)
        {
            //紀錄日誌
            //NLog.Write("register", e.Message);
            return false;
        }

    }

}