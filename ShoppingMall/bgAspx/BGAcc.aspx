<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "BGAcc.aspx.cs" Inherits = "ShoppingMall.aspx.BGAcc" %>

<!DOCTYPE html>

<html xmlns = "http://www.w3.org/1999/xhtml">
<head runat = "server">
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8"/>
    <title>帳號管理</title>
    <script src = "https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src = "../bgJS/BGAllJs.js" type = "text/javascript"></script>
    <script src = "../bgJS/BGAcc.js" type = "text/javascript"></script>
    <link href = "../css/BGAllStyle.css" rel = "stylesheet" type = "text/css"/>
    
</head>
<body>
    <div id = "bgWeb">  
        <div id = "bgNavContainer">
            <div class = "btnBGNavs">
                <a href = "BGAcc.aspx">帳號</a>
                <a href = "BGUser.aspx">會員</a>
                <a href = "BGProd.aspx" >商品</a>
                <a href = "BGOrder.aspx">訂單</a>
            </div>
        </div>
        <div id = "bgRightSpace">
            <div id = "bgRightSpaceTitle">帳號管理</div>
            <div class = "bgRightSpaceIcons">
                <input type = "text"id = "" placeholder = "尋找"/>
                <div class = "bgRightSpaceIcons img" onclick = "">
                    <img src = "../image/icons/search.png" alt = "搜尋"/>
                </div>
            </div>
            <div class = "bgRightSpaceFrame">         <!-- 右邊內部框的容器-->
                <div class ="sheet" >
                    <ul class = "column">

                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
