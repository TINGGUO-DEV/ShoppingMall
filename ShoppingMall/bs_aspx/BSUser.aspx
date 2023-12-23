<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "BSUser.aspx.cs" Inherits = "ShoppingMall.aspx.BSUser" %>

<!DOCTYPE html>

<html xmlns = "http://www.w3.org/1999/xhtml">
<head runat = "server">
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8"/>
    <title>會員管理</title>
    <script src = "https://code.jquery.com/jquery-3.4.1.js" integrity = "sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin = "anonymous"></script>
    <script src = "../bs_js/BSAllJs.js" type = "text/javascript"></script>
    <script src = "../bs_js/BSUser.js" type = "text/javascript"></script>
    <link href = "../css/BSAllStyle.css" rel = "stylesheet" type = "text/css"/>
</head>
<body>
    <div id = "bSWeb">  
        <div id = "bSNavContainer">
            <div class = "btnBSNavs">
                <a href = "BSAcc.aspx">帳號</a>
                <a href = "BSUser.aspx">會員</a>
                <a href = "BSProd.aspx" >商品</a>
                <a href = "BSOrder.aspx">訂單</a>
            </div>
        </div>
        <div id = "bSRightSpace">
            <div id = "labBSRightSpaceTitle">會員管理</div>
            <div class = "bSRightSpaceIcons">
                <input type = "text"id = "" placeholder = "尋找"/>
                <div class = "bSRightSpaceIcons img" onclick = "">
                    <img src = "../image/icons/search.png" alt = "搜尋"/>
                </div>
            </div>
            <div class = "bSRightSpaceFrame">         <!-- 右邊內部框的容器-->
                <div class="TableStytle">
                    <table>
                        <thead>
                            <tr>
                                <th><img src ="../image/icons/cil-sort-descending.png" class="sort" onclick="Sort()"/></th>
                            </tr>
                            <tr>
                                <th>姓名</th>
                                <th>帳號</th>
                                <th>信箱</th>
                                <th>手機</th>
                                <th>地址</th>
                                <th>等級</th>
                                <th>停權</th>
                                <th>建立時間</th>
                                <th>最後登入時間</th>
                                <th>備註</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                             
                            </tr>
                            <tr>
                              
                            </tr>
                            <tr>
                     
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
