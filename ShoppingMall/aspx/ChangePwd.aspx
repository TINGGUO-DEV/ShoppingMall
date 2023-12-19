<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePwd.aspx.cs" Inherits="ShoppingMall.aspx.ChangPwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>更改密碼</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="../js/AllJs.js" type="text/javascript"></script>
    <script src="../js/ChangPwd.js" type="text/javascript"></script>
    <link href="../css/AllStyle.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div id="AllWebTitle">會員中心</div>
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
    <div id="MbrContainer">
        <div id="MbrNavContainer">
            <div class="MbrNavBars">
                <p>更改密碼</p>
                <a href="Member.aspx">會員資料</a>
                <a href="ChangePwd.aspx">更改密碼</a>
                <a href="">訂單查詢</a>
                <a href="ShopCash.aspx">購物金</a>
            </div>
        </div>
        <div id="MbrRightSpace">
            <div class="AllInputBox">
                <div>目前密碼：</div>
                <div><input type="password" id="Pwd0"placeholder="請輸入目前設定的密碼" oninput="PwdIdInput(this); " maxlength="20" required />
                <img id="eyeIcon0" class="TogCursor" src="../image/icons/eye-close.png" alt="Hide Password" onclick="PasswordEye('Pwd0', 'eyeIcon0')" /></div>
                <div>新密碼：</div>
                <div><input type="password" id="Pwd1"placeholder="請輸入由大小寫英文及數字組成的6-20個混和字符" oninput="PwdIdInput(this); " maxlength="20" required />
                <img id="eyeIcon1" class="TogCursor" src="../image/icons/eye-close.png" alt="Hide Password" onclick="PasswordEye('Pwd1', 'eyeIcon1')" /></div>
                <div>新密碼確認：</div>
                <div><input type="password" id="Pwd2" placeholder="請再輸入一次密碼" oninput="PwdIdInput(this); Check2Pwd();" title="請確認您輸入的密碼是否與上一列設定的密碼相同" maxlength="20" required />
                <img id="eyeIcon2" class="TogCursor" src="../image/icons/eye-close.png" alt="Hide Password" onclick="PasswordEye('Pwd2', 'eyeIcon2')" /></div>
                <div><input value="取消" id="AllSubmissionCancel" onclick="Sumbtion()"/><input value="確認修改" id="AllSubmission" onclick="Sumbtion()"/></div>
             </div>   
        </div>   
    </div>
</body>
</html>
