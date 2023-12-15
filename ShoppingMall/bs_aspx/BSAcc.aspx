<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BSAcc.aspx.cs" Inherits="ShoppingMall.Backstage.BackstageHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>帳號管理</title>
    <link rel="stylesheet" href="../css/BSAllStyle.css" />
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
</head>
<body>
    <div id="BSWeb">  
        <div id="BSNavContainer">
            <div class="BSNavBars">
                <a href="BSAcc.aspx">帳號</a>
                <a href="BSMember.aspx">會員</a>
                <a href="BSProduct.aspx" >商品</a>
                <a href="BSOrder.aspx">訂單</a>
            </div>
        </div>
            <div id="BSRightSpace">
                <div id="BSRightSpaceTitle">帳號管理</div>
                <div class="BSRightSpaceIcons">
                    <input type="text"id="" placeholder="尋找"/>
                    <div class="BSRightSpaceIcons img" onclick="">
                        <img src="../image/icons/search.png" alt="搜尋"/>
                    </div>
                </div>
                <div class="BSRightSpaceFrame">         <!-- 右邊內部框的容器-->

                </div>
            </div>
    </div>
    <script src="../bs_js/BSLogin.js"></script>
    <script src="../bs_js/BSPopUp.js"></script>
    <script src="../bs_js/BSAllJs.js"></script>
</body>
</html>
