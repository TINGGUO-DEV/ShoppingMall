using System;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// BasePage 用於基本的共用項目配置
/// 例如【連線字串】或是【公用方法與屬性】或是【事件】
/// 這邊會有兩個固定的【屬性】與一個固定的【事件】 一個是取得連線字串 另一個是取得使用者資訊物件
/// </summary>
public class BasePage : System.Web.UI.Page
{
    /// <summary>
    /// 取得連線字串
    /// </summary>
    protected string ConnStr
    {
        get { return ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString; }
    }

    /// <summary>
    /// 建構子
    /// </summary>
	public BasePage()
    {
        //添加初始事件
        this.Init += new EventHandler(BasePage_Init);
    }

    //頁面初始事件
    private void BasePage_Init(object sender, EventArgs e)
    {
        //這邊通常會有會員登入狀態的判斷

        //或者是語系檔判斷

        //或是其它的判斷
    }

    /// <summary>
    /// 驗證非同步請求 僅允許post
    /// </summary>
    protected void CheckAjaxRequest()
    {
        //驗證請求方法
        if (Request.HttpMethod.ToUpper() != "POST")
        {
            Session.Abandon();
            Response.End();
        }
    }

    /// <summary>
    /// MD5加密
    /// </summary>
    /// <param name="text"></param>
    /// <returns></returns>
    protected string Md5Encode(string text)
    {
        string encodePwd = string.Empty;
        if (string.IsNullOrEmpty(text) == false)
        {
            MD5 mD5 = MD5.Create();
            byte[] numArray = mD5.ComputeHash(Encoding.Unicode.GetBytes(text));
            for (int i = 0; i < numArray.Length; i++)
            {
                encodePwd = encodePwd + numArray[i].ToString("X2");
            }
        }
        return encodePwd;
    }
}