<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderInquiry.aspx.cs" Inherits="ShoppingMall.aspx.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>訂單查詢</title>
    <link rel="stylesheet" href="../css/AllStyle.css" />
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
</head>
<body>
    <div id="AllWebTitle">會員中心</div>
        <div  id="NavContainer">
        <div class="NavBars">
            <a href="Home.aspx">首頁</a>
            <a href="">所有商品</a>
            <a href="" >3C家電</a>
            <a href="">化妝品</a>
            <a href="">喜好商品</a>
        </div>
        <div class="NvaIcons">
            <div class="NvaIconsUser" onmouseover="OpenPopUp('PopUpUser')" onmouseout="ClosePopUp('PopUpUser')">
                <a href="Login.aspx"><img src="../image/icons/user.png" alt="註冊會員"/></a>
                    <div class="NvaIconsPopUp" id="PopUpUser">
                        <button onclick="window.location.href='Member.aspx'">會員中心</button>
                        <button>登出</button>
                    </div>
            </div>
                <a href=""><img src="../image/icons/cart.png" alt="購物車"/></a>
                <a href=""><img src="../image/icons/search.png" alt="搜尋"/></a>
        </div>
    </div>          
    <div id="MbrContainer">
        <div id="MbrNavContainer">
            <div class="MbrNavBars">
                <p>訂單查詢</p>
                <a href="Member.aspx">會員資料</a>
                <a href="ChangePwd.aspx">更改密碼</a>
                <a href="">訂單查詢</a>
                <a href="ShopCash.aspx">購物金</a>
            </div>
        </div>
        <div id="MbrRightSpace">
              
        </div>
    </div>
    <script src="../js/OrderInquiry.js"></script>
    <script src="../js/PopUp.js"></script>
    <script src="../js/AllJs.js"></script>
</body>
</html>
