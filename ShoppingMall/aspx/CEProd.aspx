<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CEProducts.aspx.cs" Inherits="ShoppingMall.aspx.CEProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>3C家電</title>
</head>
<body>
    <div id="AllWebTitle">3C家電</div>
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
    <script src="../js/CEProd.js"></script>
    <script src="../js/PopUp.js"></script>
    <script src="../js/AllJs.js"></script>
</body>
</html>
