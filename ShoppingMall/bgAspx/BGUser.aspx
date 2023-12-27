﻿<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "BGUser.aspx.cs" Inherits = "ShoppingMall.aspx.BGUser" %>

<!DOCTYPE html>

<html xmlns = "http://www.w3.org/1999/xhtml">
<head runat = "server">
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8"/>
    <title>會員管理</title>
    <script src = "https://code.jquery.com/jquery-3.4.1.js" integrity = "sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin = "anonymous"></script>
    <script src = "../js/Member.js" type = "text/javascript"></script>
    <link href = "../css/Member.css" rel = "stylesheet" type = "text/css"/>
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
            <div id = "labBGRightSpaceTitle">會員管理</div>
            <div class = "bgRightSpaceIcons">
                <input type = "text"id = "" placeholder = "尋找"/>
                <div class = "bgRightSpaceIcons img" onclick = "">
                    <img src = "../image/icons/search.png" alt = "搜尋"/>
                </div>
            </div>
            <div class = "bgRightSpaceFrame">         <!-- 右邊內部框的容器-->
               <div class = "tableContainer">
                <div id ="sortItem" class ="sortItem">
                    <select id = "SelectItem">
                        <option value = "建立時間">建立時間</option>
                        <option value = "最後登入時間">最後登入時間</option>
                    </select>
                    <img src ="../image/icons/cil-sort-descending.png" id = "sortButton" class = "sort"/>
                </div>

                   <table id = "listAccount">
                     <thead>
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
                       </tr>
                     </thead>
                   <tbody/>
                 </table>
             </div>

          </div>
        </div>
    </div>
</body>
</html>