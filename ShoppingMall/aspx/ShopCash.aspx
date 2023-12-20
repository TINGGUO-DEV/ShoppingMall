<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "ShopCash.aspx.cs" Inherits = "ShoppingMall.aspx.ShopCash" %>

<!DOCTYPE html>

<html xmlns = "http://www.w3.org/1999/xhtml">
<head runat = "server">
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8"/>
    <title>購物金</title>
    
    <script src = "https://code.jquery.com/jquery-3.4.1.js" integrity = "sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin = "anonymous"></script>
    <script src = "../js/AllJs.js" type = "text/javascript"></script>
    <script src = "../js/ShopCash.js" type = "text/javascript"></script>
    <link href = "../css/AllStyle.css" rel = "stylesheet" type = "text/css"/>
</head>
<body>
    <div id = "labAllWebTitle">會員中心</div>
    <div  id = "navContainer">
        <div class = "btnNavs">
            <a href = "Home.aspx">首頁</a>
            <a href = "">所有商品</a>
            <a href = "" >3C家電</a>
            <a href = "">化妝品</a>
            <a href = "">喜好商品</a>
        </div>
        <div class = "nvaIcons">
            <div class = "nvaIconsUser" onmouseover = "OpenPopUp('popUp')" onmouseout = "ClosePopUp('popUp')">
                <a href = "Login.aspx"><img src = "../image/icons/user.png" alt = "會員"/></a>
                        <div class = "nvaIconsPopUp" id = "popUp">
                        <button onclick = "window.location.href = 'User.aspx'">會員中心</button>
                        <button>登出</button>
                    </div>
            </div>
                <a href = ""><img src = "../image/icons/cart.png" alt = "購物車"/></a>
                <a href = ""><img src = "../image/icons/search.png" alt = "搜尋"/></a>
        </div>
    </div>          
    <div id = "mbrContainer">
        <div id = "mbrNavContainer">
            <div class = "btnMbrNavs">
                <p>購物金 </p>
                <a href = "User.aspx">會員資料</a>
                <a href = "ChangePwd.aspx">更改密碼</a>
                <a href = "">訂單查詢</a>
                <a href = "ShopCash.aspx">購物金</a>
            </div>
        </div>
        <div id = "mbrRightSpace">
            <div class = "txbAllInputBox">
                <p><span>當前可用餘額：</span>text</p>
                <p><span>儲值金額：</span>
                <input type = "text" id = "orderId" name = "orderId" placeholder = "請輸入您要儲值的金額" oninput = "orderIdInput(this)" maxlength = "5" required /></p>
                <div><input value = "儲值" id = "btnAllSub" onclick = "Sumbtion()"/><a href = "">交易紀錄查詢</a></div>
            </div>   
        </div>
    </div>
</body>
</html>
