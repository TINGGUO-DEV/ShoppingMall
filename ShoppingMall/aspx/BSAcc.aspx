<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "BSAcc.aspx.cs" Inherits = "ShoppingMall.aspx.BSAcc" %>

<!DOCTYPE html>

<html xmlns = "http://www.w3.org/1999/xhtml">
<head runat = "server">
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8"/>
    <title>帳號管理</title>
    <script src = "https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src = "../js/BSAllJs.js" type = "text/javascript"></script>
    <script src = "../js/BSAcc.js" type = "text/javascript"></script>
    <link href = "../css/BSAllStyle.css" rel = "stylesheet" type = "text/css"/>
    
</head>
<body>
    <div id = "bSWeb">  
        <div id = "bSNavContainer">
            <div class = "btnBSNavs">
                <a href = "BSAcc.aspx">帳號</a>
                <a href = "BSUser.aspx">會員</a>
                <a href = "BSProduct.aspx" >商品</a>
                <a href = "BSOrder.aspx">訂單</a>
            </div>
        </div>
        <div id = "bSRightSpace">
            <div id = "labBSRightSpaceTitle">帳號管理</div>
            <div class = "bSRightSpaceIcons">
                <input type = "text"id = "" placeholder = "尋找"/>
                <div class = "bSRightSpaceIcons img" onclick = "">
                    <img src = "../image/icons/search.png" alt = "搜尋"/>
                </div>
            </div>
            <div class = "bSRightSpaceFrame">         <!-- 右邊內部框的容器-->

            </div>
        </div>
    </div>
</body>
</html>
