<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BSLogin.aspx.cs" Inherits="ShoppingMall.backstage_aspx.BSLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>後台登入</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="../js/AllJs.js" type="text/javascript"></script>
    <script src="../js/BSAllJs.js" type="text/javascript"></script>
    <script src="../js/BSLogin.js" type="text/javascript"></script>
    <link href="../css/BSAllStyle.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div id="BSLoginTitle">ShoppingMall 後台管理</div>
    <div id= "BSLoginContainer">
        <div class="BSLoginInputBox">
            <p><span>帳號：</span>
            <input type="text" placeholder="應包含至少1個英文字母及1個數字" pattern="^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{1,20}$" oninput="filterInput(this)" title="填寫時請注意大小寫是否正確" maxlength="20" required /></p>
            <p><span>密碼：</span>
            <input type="password" id="PwdBSLog" placeholder="由大小寫英文及數字組成的6-20個混和字符" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,32}$" oninput="filterInput(this) " title="填寫時請注意大小寫是否正確" maxlength="20" required />
            <img id="eyeIconBSLog" class="TogCursor" src="../image/icons/eye-close.png" alt="Hide Password" onclick="PasswordEye('PwdBSLog', 'eyeIconBSLog')" /></p>
        </div>
        <div class="BSAllSubContainer">
            <input value="登入" class="BSAllSub1" onclick="Sumbtion()"/>
            <a href="Home.aspx"class="BSAllSub2"><span>前往官網</span></a>
        </div> 
    </div>       
</body>
</html>
