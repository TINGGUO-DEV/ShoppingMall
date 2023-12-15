<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ShoppingMall.aspx.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset="utf-8"/>
    <title>註冊會員</title>
    <link rel="stylesheet" href="../css/AllStyle.css" />
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
</head>
<body>
    <div id="AllWebTitle">註冊會員</div>
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
            <p><span>創建帳號：</span>
            <input type="text" id="Acc" onblur="AccBlur(event)" placeholder="請以至少1個英文字母及1個數字做為帳號的命名" oninput="AccInput(this)" maxlength="20" required /></p>
            <p><span>輸入密碼：</span>
            <input type="password" id="Pwd1"placeholder="請輸入由大小寫英文及數字組成的6-20個混和字符" oninput="PwdIdInput(this); " maxlength="20" required />
            <img id="eyeIcon1" class="TogCursor" src="../image/icons/eye-close.png" alt="Hide Password" onclick="PasswordEye('Pwd1', 'eyeIcon1')" /></p>
            <p><span>密碼確認：</span>
            <input type="password" id="Pwd2" placeholder="請再輸入一次密碼" oninput="PwdIdInput(this); Check2Pwd();" title="請確認您輸入的密碼是否與上一列設定的密碼相同" maxlength="20" required />
            <img id="eyeIcon2"  class="TogCursor" src="../image/icons/eye-close.png" alt="Hide Password" onclick="PasswordEye('Pwd2', 'eyeIcon2')" /></p>
            <p><span>電子信箱：</span>
            <input type="email"id="Mail" placeholder="example@example.com" oninput="MailInput(this)" maxlength="50" required /></p>
            <p><span>手機號碼：</span>
            <input type="tel" id="Phone" name="phone" placeholder="0912345678" oninput="PhoneInput(this)" maxlength="10" pattern="^09\d{8}" title="請確保您輸入的是09開頭的十位電話號碼" required /></p>
            <div><input value="立即註冊" id="AllSubmission" onclick="Sumbtion()"/><a href="login.aspx">已有帳號(點擊登入)</a></div>        
        </div>       
    </div>
    <script src="../js/Register.js"></script>
    <script src="../js/PopUp.js"></script>
    <script src="../js/AllJs.js"></script>
</body>
</html>
