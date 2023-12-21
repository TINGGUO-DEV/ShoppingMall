<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "BSLogin.aspx.cs" Inherits = "ShoppingMall.aspx.BSLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8"/>
    <title>後台登入</title>
    <script src = "https://code.jquery.com/jquery-3.4.1.js" integrity = "sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin = "anonymous"></script>
    <script src = "../js/AllJs.js" type = "text/javascript"></script>
    <script src = "../js/BSAllJs.js" type = "text/javascript"></script>
    <script src = "../js/BSLogin.js" type = "text/javascript"></script>
    <link href = "../css/BSAllStyle.css" rel = "stylesheet" type = "text/css"/>
</head>
<body>
    <div id = "labBSLoginTitle">ShoppingMall 後台管理</div>
    <div id = "bSLoginContainer">
        <div class = "txbBSLoginInputBox">
            <p><span>帳號：</span>
                <input type = "text" id = "acc" oninput = "AccInput(this)" onblur = "AccBlur(event)" placeholder = "請輸入您的帳號" title = "請注意大小寫是否正確" maxlength = "20"/></p>
            <p><span>密碼：</span>
                <input type = "password" id = "pwd" oninput = "PwdInput(this)" onblur = "PwdBlur(event)" placeholder = "請輸入您的密碼" title = "請注意大小寫是否正確" maxlength = "20"/>
                    <img class = "togCursor" src = "../image/icons/eye-close.png" alt = "Hide Password" onclick = "PasswordEye(this)" /></p>
        </div>
        <div class = "bSAllSubContainer">
            <input value = "登入" class = "btnBSAllSub1" onclick = "Sumbtion()"/>
            <a href = "Home.aspx"class = "btnBSAllSub2"><span>前往官網</span></a>
        </div> 
    </div>       
</body>
</html>
