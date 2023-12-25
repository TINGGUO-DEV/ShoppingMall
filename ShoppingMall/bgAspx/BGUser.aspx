<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "BGUser.aspx.cs" Inherits = "ShoppingMall.aspx.BGUser" %>

<!DOCTYPE html>

<html xmlns = "http://www.w3.org/1999/xhtml">
<head runat = "server">
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8"/>
    <title>會員管理</title>
    <script src = "https://code.jquery.com/jquery-3.4.1.js" integrity = "sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin = "anonymous"></script>
    <script src = "../bgJS/BGAllJs.js" type = "text/javascript"></script>
    <script src = "../bgJS/BGUser.js" type = "text/javascript"></script>
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
            <div id = "labBGRightSpaceTitle">會員管理</div>
            <div class = "bgRightSpaceIcons">
                <input type = "text"id = "" placeholder = "尋找"/>
                <div class = "bgRightSpaceIcons img" onclick = "">
                    <img src = "../image/icons/search.png" alt = "搜尋"/>
                </div>
            </div>
            <div class = "bgRightSpaceFrame">         <!-- 右邊內部框的容器-->
                <div class="TableStytle">
                    <table>
                        <thead>
                            <tr>
                                <th>
                                    <select name="languages" id="lang">
                                        <option value="javascript">Select a language</option>
                                        <option value="javascript">Select a language</option>
                                    </select>
                                </th>
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
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>小王</th>
                                <th>a12</th>
                                <th>a12@12.com</th>
                                <th>0987465123</th>
                                <th></th>
                                <th>VIP</th>
                                <th>否</th>
                                <th>112/10/05 07:00:31</th>
                                <th>112/12/09 06:05:08</th>
                            </tr>
                            <tr>
                                <th>老張</th>
                                <th>BK65</th>
                                <th>bk2@12.com</th>
                                <th>0985565123</th>
                                <th></th>
                                <th>一般</th>
                                <th>否</th>
                                <th>112/09/13 21:00:45</th>
                                <th>112/12/16 19:35:18</th>
                            </tr>
                        </tbody>
                            </table>
                             
                    <button id="sortButton">排序</button>
                         <div class="abc">                        
                         <ul class="column">
                             <li>帳號</li>
                             <li>建立時間</li>
                             <li>權限</li>
                             <li>停權</li>
                             <li>備註</li>
                         </ul>
                         <ul class="column" id="CallBackData">
                           <!-- Dynamic data will be inserted here -->
                         </ul>
                       </div>

</body>
</html>
