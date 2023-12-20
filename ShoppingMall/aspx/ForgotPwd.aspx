<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPwd.aspx.cs" Inherits="ShoppingMall.aspx.ForgotPwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>重設密碼</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="../js/AllJs.js" type="text/javascript"></script>
    <script src="../js/ForgotPwd.js" type="text/javascript"></script>
    <link href="../css/AllStyle.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div id="labAllWebTitle">重設密碼</div>
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
                            <button>登出</button>
                        </div>
                </div>
                    <a href=""><img src="../image/icons/cart.png" alt="購物車"/></a>
                    <a href=""><img src="../image/icons/search.png" alt="搜尋"/></a>
            </div>
        </div>
        <div id= "AllContainer">
            <div class="txbAllInputBox">
                <p>電子信箱：</p>
                <p><input type="email"id="Mail" placeholder="example@example.com" oninput="MailInput(this)" maxlength="50" required /></p>
                <div><input value="發送驗證碼" id="btnAllSub" onclick="Sumbtion()"/></div>
            </div>
        </div>
</body>
</html>
