<<<<<<< HEAD
﻿<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "FavProd.aspx.cs" Inherits = "ShoppingMall.aspx.FavProd" %>
=======
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FavProd.aspx.cs" Inherits="ShoppingMall.aspx.FavProd" %>
>>>>>>> ae884e027a25a74c1de58b0dd14a6d02f1b91941

<!DOCTYPE html>

<html xmlns = "http://www.w3.org/1999/xhtml">
<head runat = "server">
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8"/>
    <title>喜好商品</title>
    <script src = "https://code.jquery.com/jquery-3.4.1.js" integrity = "sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin = "anonymous"></script>
    <script src = "../js/AllJs.js" type = "text/javascript"></script>
    <script src = "../js/FavProd.js" type = "text/javascript"></script>
    <link href = "../css/AllStyle.css" rel = "stylesheet" type = "text/css"/>
</head>
<body>
<<<<<<< HEAD
    <div id = "labAllWebTitle">喜好商品</div>
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
=======
    <div id="labAllWebTitle">喜好商品</div>
        <div  id="NavContainer">
            <div class="btnNavs">
                <a href="Home.aspx">首頁</a>
                <a href="">所有商品</a>
                <a href="" >3C家電</a>
                <a href="">化妝品</a>
                <a href="">喜好商品</a>
            </div>
            <div class="NvaIcons">
                <div class="NvaIconsUser" onmouseover="OpenPopUp('PopUpUser')" onmouseout="ClosePopUp('PopUpUser')">
                    <a href="Login.aspx"><img src="../image/icons/user.png" alt="會員"/></a>
                        <div class="NvaIconsPopUp" id="PopUpUser">
                            <button onclick="window.location.href='User.aspx'">會員中心</button>
>>>>>>> ae884e027a25a74c1de58b0dd14a6d02f1b91941
                            <button>登出</button>
                        </div>
                </div>
                    <a href = ""><img src = "../image/icons/cart.png" alt = "購物車"/></a>
                    <a href = ""><img src = "../image/icons/search.png" alt = "搜尋"/></a>
            </div>
        </div>
</body>
</html>
