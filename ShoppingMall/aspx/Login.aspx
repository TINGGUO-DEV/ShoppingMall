﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingMall.aspx.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登入帳號</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="../js/AllJs.js" type="text/javascript"></script>
    <script src="../js/Login.js" type="text/javascript"></script>
    <link href="../css/AllStyle.css" rel="stylesheet" type="text/css"/>
</head>
<body>
        <div id="AllWebTitle">登入帳號</div>
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
        <div id= "AllContainer">
            <div class="AllInputBox">
                <p><span>帳號：</span>
                <input type="text" id="Acc" onblur="AccBlur(event)" placeholder="請輸入您的帳號" oninput="AccInput(this)" title="請注意大小寫是否正確" maxlength="20"/></p>
                <p><span>密碼：</span>
                <input type="password" id="PwdLog"onblur="PwdLogBlur(event)" placeholder="請輸入您的密碼" oninput="PwdLogInput(this)" title="請注意大小寫是否正確" maxlength="20"/>
                    <img id="eyeIconLog" class="TogCursor" src="../image/icons/eye-close.png" alt="Hide Password" onclick="PasswordEye('PwdLog', 'eyeIconLog')" /></p>
                <div>
                    <input value="登入" id="AllSubmission" onclick="Sumbtion()"/>
                    <a href="Register.aspx">立即註冊</a>
                    <a href="ForgotPwd.aspx">忘記密碼</a>
                </div>
            </div>
        </div>
</body>
</html>
