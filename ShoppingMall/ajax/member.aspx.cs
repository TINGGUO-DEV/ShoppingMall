﻿#region 功能與歷史修改描述
/*
    描述: 會員相關ajax function
    日期: 2023-12-22
*/
#endregion

using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text.RegularExpressions;

public partial class Member : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckAjaxRequest();

        string method = Request.Form["method"]; //不需去除空白
    
        switch (method)
        {
            case "register":
                Register();
                break;
            case "login":
                Login();
                break;
            case "verifyCode":
                SendCodeToMail();
                break;
            case "authVerifyCode":
                AuthMemberMail();
                break;
            case "RequestResetPwd":
                SendResetPwdToken();
                break;
            case "resetPwd":
                ResetPwd();
                break;
            case "getUserData":
                GetUserData();
                break;
            case "changeInfo":
                UpdateUserData();
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
        string phone = Request.Form["phone"];

        /*acc = "sasaki01";
        pwd = "asdf";
        pwdSec = "asdf";
        mail = "asdf@gmial.com";
        phone = 0971222333;*/

        //驗證帳號
        if (ValidAccount(acc) == false)
        {
            result += 1;
        }
        //驗證密碼
        string md5Pwd = Md5Encode(pwd);
        if (ValidPwd(pwd) == false || ValidPwd(pwdSec) == false || md5Pwd != Md5Encode(pwdSec))
        {
            result += 2;
        }
        //驗證信箱
        if (ValidMail(mail) == false)
        {
            result += 4;
        }
        //驗證手機
        if (string.IsNullOrEmpty(phone) || new Regex("^[09]\\d{8}").IsMatch(phone) == false)
        {
            result += 8;
        }

        if (result == 0)
        {
            string vfyCode = RandomCode();
            SqlCommand cmd = new SqlCommand(); //宣告SqlCommand物件
            cmd.Connection = new SqlConnection(this.ConnStr); //設定連線字串
            //以下try catch finally為固定寫法，且釋放資源必定要寫在finally裡
            //偵錯
            try
            {
                //這是呼叫SP的方式，與上面的其實大同小異，可以當做是直接在SQL的查詢工具那邊下命令
                cmd.CommandText = "EXEC pro_fr_registerMember @acc, @pwd, @mail, @phone, @verifyCode";

                //參數化查詢條件，可以有效防止SQL injection(資料隱碼攻擊)
                cmd.Parameters.Add("@acc", SqlDbType.VarChar).Value = acc;
                cmd.Parameters.Add("@pwd", SqlDbType.Char).Value = md5Pwd;
                cmd.Parameters.Add("@mail", SqlDbType.VarChar).Value = mail;
                cmd.Parameters.Add("@phone", SqlDbType.Char).Value = phone;
                cmd.Parameters.Add("@verifyCode", SqlDbType.Char).Value = vfyCode;
                
                cmd.Connection.Open(); //開啟資料庫連線

                int.TryParse(cmd.ExecuteScalar().ToString(), out result); //執行並取回資料

                Session["MemberMail"] = mail;
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
    /// 會員登入
    /// </summary>
    private void Login()
    {
        int result = 0;

        string acc = Request.Form["acc"] == null ? null : Request.Form["acc"].Trim();
        string pwd = Request.Form["pwd"] == null ? null : Request.Form["pwd"].Trim();

        //驗證帳號&密碼
        if (!ValidAccount(acc) || !ValidPwd(pwd))
        {
            result += 1;
        }

        if (result == 0)
        {
            //密碼加密
            string md5Pwd = Md5Encode(pwd);
            string sId = Session.SessionID;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = new SqlConnection(this.ConnStr);
            SqlDataAdapter da = new SqlDataAdapter(); 
            DataTable dt = new DataTable();

            try
            {
                cmd.CommandText = "EXEC pro_fr_loginMember @acc, @pwd, @sId";

                cmd.Parameters.Add("@acc", SqlDbType.VarChar).Value = acc;
                cmd.Parameters.Add("@pwd", SqlDbType.Char).Value = md5Pwd;
                cmd.Parameters.Add("@sId", SqlDbType.Char).Value = sId;

                cmd.Connection.Open(); //開啟資料庫連線

                da.SelectCommand = cmd; //執行
                da.Fill(dt); //結果存放至DataTable

                cmd.Connection.Close(); //關閉連線

                int.TryParse(dt.Rows[0][0].ToString(), out result);

                if (result == 1024)
                {
                    //紀錄登入狀態
                    userInfo = new UserInfo()
                    {
                        userId = int.Parse(dt.Rows[0]["f_userId"].ToString()),
                        userAcc = acc,
                        level = int.Parse(dt.Rows[0]["f_level"].ToString()),
                        balance = int.Parse(dt.Rows[0]["f_balance"].ToString())
                    };
                    Session["UserInfo"] = userInfo;
                }
            }
            catch (Exception e) 
            {
                //紀錄日誌
                //NLog.Write("register", e.Message);
                result = 0;
            }
            finally
            {
                cmd.Parameters.Clear();
                //判斷是否已關閉
                if (cmd.Connection.State != ConnectionState.Closed)
                    cmd.Connection.Close();
            }
        }

        Response.Write("{\"status\": " + result + "}");
    }
    
    /// <summary>
    /// 發送驗證碼到會員信箱
    /// </summary>
    private void SendCodeToMail()
    {
        int result = 0;

        string mail = Request.Form["mail"];

        //驗證信箱
        if (ValidMail(mail) == false)
        {
            result += 1;
        }

        if (result == 0)
        {
            string code = RandomCode();
            SqlCommand cmd = new SqlCommand(); 
            cmd.Connection = new SqlConnection(this.ConnStr); 

            try
            {
                cmd.CommandText = "EXEC pro_fr_sendCodeToMail @mail, @code";
                cmd.Parameters.Add("@mail", SqlDbType.VarChar).Value = mail;
                cmd.Parameters.Add("@code", SqlDbType.Char).Value = code;

                cmd.Connection.Open(); 
                int.TryParse(cmd.ExecuteScalar().ToString(), out result);
            }
            catch (Exception e)
            {
                //NLog.Write("register", e.Message);
                result = 0;
            }
            finally
            {
                cmd.Parameters.Clear();
                cmd.Connection.Close();
            }
        }

        Response.Write("{\"status\": " + result + "}");
    }

    /// <summary>
    /// 亂數6碼驗證碼
    /// </summary>
    /// <returns></returns>
    private string RandomCode()
    {
        //未完成
        return "123456";
    }

    /// <summary>
    /// 認證信箱驗證碼
    /// </summary>
    private void AuthMemberMail()
    {
        int result = 0;
        string vfyCode = Request.Form["vfyCode"];


        if (string.IsNullOrEmpty(vfyCode) || new Regex("\\d{6}").IsMatch(vfyCode) == false)
        {
            result += 1;
        }

        //未完成 已登入的要拿UserInfo的mail
        string mail = Session["MemberMail"] != null ? Session["MemberMail"].ToString() : null;

        if (string.IsNullOrEmpty(mail)== false && result == 0)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = new SqlConnection(this.ConnStr);

            try
            {
                cmd.CommandText = "EXEC pro_fr_verifyCode @mail, @vfyCode";
                cmd.Parameters.Add("@mail", SqlDbType.VarChar).Value = mail;
                cmd.Parameters.Add("@vfyCode", SqlDbType.Char).Value = vfyCode;

                cmd.Connection.Open();
                int.TryParse(cmd.ExecuteScalar().ToString(), out result);
            }
            catch (Exception e)
            {
                //NLog.Write("register", e.Message);
                result = 0;
            }
            finally
            {
                cmd.Parameters.Clear();
                cmd.Connection.Close();
            }
        }

        Response.Write("{\"status\": " + result + "}");
    }

    /// <summary>
    /// 發送密碼重置
    /// </summary>
    private void SendResetPwdToken()
    {
        int result = 0;

        string mail = Request.Form["mail"];

        //驗證信箱
        if (ValidMail(mail) == false)
        {
            result += 1;
        }

        if (result == 0)
        {
            string token = RandomToken();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = new SqlConnection(this.ConnStr);

            try
            {
                cmd.CommandText = "EXEC pro_fr_addResetPwdToken @mail, @token";
                cmd.Parameters.Add("@mail", SqlDbType.VarChar).Value = mail;
                cmd.Parameters.Add("@token", SqlDbType.Char).Value = token;

                cmd.Connection.Open();
                int.TryParse(cmd.ExecuteScalar().ToString(), out result);
            }
            catch (Exception e)
            {
                //NLog.Write("register", e.Message);
                result = 0;
            }
            finally
            {
                cmd.Parameters.Clear();
                cmd.Connection.Close();
            }
        }

        Response.Write("{\"status\": " + result + "}");
    }

    /// <summary>
    /// 亂數生成Token
    /// </summary>
    /// <returns>token</returns>
    private string RandomToken()
    {
        return Md5Encode(Guid.NewGuid().ToString());
    }

    /// <summary>
    /// 重置密碼
    /// </summary>
    private void ResetPwd()
    {
        int result = 0;

        string pwd = Request.Form["pwd"] == null ? null : Request.Form["pwd"].Trim();
        string pwdSec = Request.Form["pwdSec"] == null ? null : Request.Form["pwdSec"].Trim();

        //驗證密碼
        string md5Pwd = Md5Encode(pwd);
        string md5PwdSec = Md5Encode(pwdSec);
        if (ValidPwd(pwd) == false || ValidPwd(pwdSec) == false || md5Pwd != md5PwdSec)
        {
            result += 1;
        }

        if (result == 0)
        {
            string mail = Session["UserMail"] != null ? Session["UserMail"].ToString() : null;
            
            SqlCommand cmd = new SqlCommand(); //宣告SqlCommand物件
            cmd.Connection = new SqlConnection(this.ConnStr); //設定連線字串

            try
            {
                cmd.CommandText = "EXEC pro_fr_resetMemberPwd @mail, @pwd";

                //參數化查詢條件，可以有效防止SQL injection(資料隱碼攻擊)
                cmd.Parameters.Add("@mail", SqlDbType.VarChar).Value = mail;
                cmd.Parameters.Add("@pwd", SqlDbType.Char).Value = md5Pwd;

                cmd.Connection.Open(); //開啟資料庫連線

                int.TryParse(cmd.ExecuteScalar().ToString(), out result); //執行並取回資料
            }
            catch (Exception e)
            {
                //紀錄日誌
                //NLog.Write("register", e.Message);
                result = 0;
            }
            finally
            {
                cmd.Parameters.Clear();
                cmd.Connection.Close();
            }
        }

        Response.Write("{\"status\": " + result + "}");
    }

    /// <summary>
    /// 取得會員基本資料
    /// </summary>
    private void GetUserData()
    {
        JObject json = new JObject() { { "status", 0 }, { "data", new JObject() } };

        //未登入直接返回
        if (userInfo != null)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = new SqlConnection(this.ConnStr);
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            try
            {
                cmd.CommandText = "EXEC pro_fr_getUserData @userId";

                cmd.Parameters.Add("@userId", SqlDbType.Int).Value = userInfo.userId;

                cmd.Connection.Open(); 

                da.SelectCommand = cmd; 
                da.Fill(dt);

                cmd.Connection.Close();


                if (dt.Rows.Count > 0)
                {
                    int result = 0;
                    int.TryParse(dt.Rows[0][0].ToString(), out result);
                    if (result == 1024)
                    {
                        json["status"] = result;
                        json["data"] = new JObject()
                        {
                            { "acc" , userInfo.userAcc },
                            { "name" , dt.Rows[0]["f_name"].ToString() },
                            { "address" , dt.Rows[0]["f_address"].ToString() },
                            { "mail" , dt.Rows[0]["f_mail"].ToString() },
                            { "phone" , dt.Rows[0]["f_phone"].ToString() },
                            { "mailCheck" , bool.Parse(dt.Rows[0]["f_mailCheck"].ToString()) }
                        };
                    }
                }
            }
            catch (Exception e)
            {
                //紀錄日誌
                //NLog.Write("register", e.Message);
                json["status"] = 0;
            }
            finally
            {
                cmd.Parameters.Clear();
                //判斷是否已關閉
                if (cmd.Connection.State != ConnectionState.Closed)
                    cmd.Connection.Close();
            }
        }

        Response.Write(JsonConvert.SerializeObject(json));
    }

    /// <summary>
    /// 更新會員基本資料
    /// </summary>
    private void UpdateUserData()
    {
        int result = 0;
        //未登入直接返回
        if (userInfo == null)
        {
            Response.Write("{\"status\": " + result + "}");
            return;
        }

        string name = Request.Form["name"];
        string address = Request.Form["address"];
        string mail = Request.Form["mail"];
        string phone = Request.Form["phone"];

        //驗證姓名
        if (string.IsNullOrEmpty(name) || name.Length > 10)
        {
            result += 1;
        }
        //驗證地址
        if (string.IsNullOrEmpty(address) || address.Length > 100)
        {
            address += 2;
        }
        //驗證信箱
        if (ValidMail(mail) == false)
        {
            result += 4;
        }
        //驗證手機
        if (string.IsNullOrEmpty(phone) || new Regex("^[09]\\d{8}").IsMatch(phone) == false)
        {
            result += 8;
        }

        if (result == 0)
        {
            SqlCommand cmd = new SqlCommand(); 
            cmd.Connection = new SqlConnection(this.ConnStr);

            try
            {
                cmd.CommandText = "EXEC pro_fr_editMember @userId, @name, @address, @mail, @phone";

                cmd.Parameters.Add("@userId", SqlDbType.Int).Value = userInfo.userId;
                cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = name;
                cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = address;
                cmd.Parameters.Add("@mail", SqlDbType.VarChar).Value = mail;
                cmd.Parameters.Add("@phone", SqlDbType.Char).Value = phone;

                cmd.Connection.Open(); 

                int.TryParse(cmd.ExecuteScalar().ToString(), out result);
            }
            catch (Exception e) 
            {
                //紀錄日誌
                //NLog.Write("register", e.Message);
                result = 0;
            }
            finally
            {
                cmd.Parameters.Clear();
                cmd.Connection.Close();
            }
        }

        Response.Write("{\"status\": " + result + "}");
    }

    /// <summary>
    /// 驗證帳號規則
    /// </summary>
    /// <param name="acc">帳號</param>
    /// <returns></returns>
    private bool ValidAccount(string acc)
    {
        if (!string.IsNullOrEmpty(acc) && new Regex("[a-zA-Z\\d]{2,20}").IsMatch(acc))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    /// <summary>
    /// 驗證密碼規則
    /// </summary>
    /// <param name="pwd">密碼</param>
    /// <returns></returns>
    private bool ValidPwd(string pwd)
    {
        //英數字大小寫至少各一碼，且長度介於6~20之間
        if (!string.IsNullOrEmpty(pwd) && new Regex("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{6,20}$").IsMatch(pwd))
        {
            return true;
        }
        else
        {
            return false;
        }
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