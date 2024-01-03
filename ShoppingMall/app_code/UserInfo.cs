#region 功能與歷史修改描述
/*
    描述: 登入者資訊
    日期: 2023-12-22
*/
#endregion
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public class UserInfo
{
    /// <summary>
    /// 會員ID
    /// </summary>
    public int userId { get; set; }
    
    /// <summary>
    /// 會員帳號
    /// </summary>
    public string userAcc { get; set; }

    /// <summary>
    /// 會員等級
    /// </summary>
    public int level { get; set; }

    /// <summary>
    /// 會員餘額
    /// </summary>
    public int balance { get; set; }

}