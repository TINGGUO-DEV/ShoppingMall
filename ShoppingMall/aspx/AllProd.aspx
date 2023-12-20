<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "AllProd.aspx.cs" Inherits = "ShoppingMall.aspx.AllProd" %>

<!DOCTYPE html>

<html xmlns = "http://www.w3.org/1999/xhtml">
<head runat = "server">
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8"/>
    <title>全部商品</title>
    <script src = "https://code.jquery.com/jquery-3.4.1.js" integrity = "sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin = "anonymous"></script>
    <script src = "../js/AllJs.js" type = "text/javascript"></script>
    <script src = "../js/AllProd.js" type = "text/javascript"></script>
    <link href = "../css/AllStyle.css" rel = "stylesheet" type = "text/css"/>
</head>
<body>
    <div id = "labAllWebTitle">全部商品</div>
        <div  id = "navContainer">
            <div class = "btnNavs">
                <a href = "Home.aspx">首頁</a>
                <a href = "">所有商品</a>
                <a href = "" >3C家電</a>
                <a href = "">化妝品</a>
                <a href = "">喜好商品</a>
            </div>
            <div class = "nvaIcons">
                <div class = "nvaIconsUser" onmouseover = "OpenPopUp('popUp')" onmouseout = "ClosePopUp('popUpUser')">
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
</body>
</html>
