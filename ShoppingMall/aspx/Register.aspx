<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ShoppingMall.aspx.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset="utf-8"/>
    <title>註冊會員</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="../js/AllJs.js" type="text/javascript"></script>
    <script src="../js/Register.js" type="text/javascript"></script>
    <link href="../css/AllStyle.css" rel="stylesheet" type="text/css"/>
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
            <p><span>創建帳號：</span>
            <input type="text" id="Acc" onblur="AccBlur(event)" placeholder="請以至少1個英文字母及1個數字做為帳號的命名" oninput="AccInput(this)" title="請確認是否包含至少1個英文字母及1個數字" maxlength="20"/></p>
            <p><span>輸入密碼：</span>
            <input type="password" id="Pwd1"onblur="Pwd1Blur(event)" placeholder="請以大小寫字母各1及1個數字組成6-20個混和字符" oninput="PwdIdInput(this)" title="請確認密碼是否為大小寫字母各1及1個數字組成的6-20個混和字符" maxlength="20"/>
            <img id="eyeIcon1" class="TogCursor" src="../image/icons/eye-close.png" alt="Hide Password" onclick="PasswordEye('Pwd1', 'eyeIcon1')" /></p>
            <p><span>密碼確認：</span>
            <input type="password" id="Pwd2" onblur="Pwd2Blur(event)" placeholder="請再輸入一次密碼" oninput="PwdIdInput(this)" title="請確認您輸入的密碼是否與上一列設定的密碼相同" maxlength="20"/>
            <img id="eyeIcon2"  class="TogCursor" src="../image/icons/eye-close.png" alt="Hide Password" onclick="PasswordEye('Pwd2', 'eyeIcon2')" /></p>
            <p><span>電子信箱：</span>
            <input type="email"id="Mail" onblur="MailBlur(event)" placeholder="example@example.com" oninput="MailInput(this)" title="請確認您輸入的信箱格式是否正確" maxlength="50"/>
                <button class="AllLittleBtn" onclick="">驗證</button>
            </p>
            <p><span>手機號碼：</span>
            <input type="tel" id="Phone" onblur="PhoneBlur(event)" placeholder="0912345678" oninput="PhoneInput(this)" maxlength="10" title="請確保您輸入的是09開頭的十位電話號碼"/></p>
            <div><input value="立即註冊" id="AllSubmission" onclick="Sumbtion()"/><a href="login.aspx">已有帳號(點擊登入)</a></div>        
        </div>       
    </div>
</body>
</html>
