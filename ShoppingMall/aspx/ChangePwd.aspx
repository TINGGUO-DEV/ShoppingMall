<%@ Page Language  =  "C#" AutoEventWireup = "true" CodeBehind = "ChangePwd.aspx.cs" Inherits = "ShoppingMall.aspx.ChangPwd" %>

<!DOCTYPE html>

<html xmlns = "http://www.w3.org/1999/xhtml">
<head runat = "server">
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8"/>
    <title>更改密碼</title>
    <script src = "https://code.jquery.com/jquery-3.4.1.js" integrity = "sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin = "anonymous"></script>
    <script src = "../js/AllJs.js" type = "text/javascript"></script>
    <script src = "../js/ChangePwd.js" type = "text/javascript"></script>
    <link href = "../css/AllStyle.css" rel = "stylesheet" type = "text/css"/>
</head>
<body>
    <div id = "labAllWebTitle">會員中心</div>
    <div  id = "navContainer">
        <div class = "btnNavs">
            <a href = "Home.aspx">首頁</a>
            <a href = "">所有商品</a>
            <a href = "" >3C家電</a>
            <a href = "">化妝品</a>
            <a href = "">喜好商品</a>
        </div>
        <div class = "nvaIcons">
            <div class = "popUps" onmouseover = "OpenPopUp('popUpIcon')" onmouseout = "ClosePopUp('popUpIcon')">
                <a href = "Login.aspx"><img src = "../image/icons/user.png" alt = "會員"/></a>
                    <div class = "popUpIcons" id = "popUpIcon">
                        <button onclick = "window.location.href = 'User.aspx'">會員中心</button>
                        <button>登出</button>
                    </div>
            </div>
        <a href = ""><img src = "../image/icons/cart.png" alt = "購物車"/></a>
        <a href = ""><img src = "../image/icons/search.png" alt = "搜尋"/></a>
        </div>
    </div>          
    <div id = "mbrContainer">
        <div id = "mbrNavContainer">
            <div class = "btnMbrNavs">
                <p>更改密碼</p>
                <a href = "User.aspx">會員資料</a>
                <a href = "ChangePwd.aspx">更改密碼</a>
                <a href = "">訂單查詢</a>
                <a href = "ShopCash.aspx">購物金</a>
            </div>
        </div>
        <div id = "mbrRightSpace">
            <div class = "txbAllInputBox">
                <p><span>輸入密碼：</span>
                    <input type = "password" id = "pwd1" oninput = "PwdInput(this)" onblur = "Pwd1Blur(event)" placeholder = "請以大小寫字母各1及1個數字組成6-20個混和字符" title = "請確認密碼是否為大小寫字母各1及1個數字組成的6-20個混和字符" maxlength = "20"/>
                        <img class = "togCursor" src = "../image/icons/eye-close.png" alt = "Hide Password" onclick = "PasswordEye(this)"/></p>
                <p><span>密碼確認：</span>
                    <input type = "password" id = "pwd2" oninput = "PwdInput(this)" onblur = "Pwd2Blur(event)" placeholder = "請再輸入一次密碼" title = "請確認您輸入的密碼是否與上一列設定的密碼相同" maxlength = "20"/>
                        <img class = "togCursor" src = "../image/icons/eye-close.png" alt = "Hide Password" onclick = "PasswordEye(this)"/></p>
                <div><input value = "取消" id = "btnAllSubCancel" onclick = "Sumbtion()"/><input value = "確認修改" id = "btnAllSub" onclick = "Sumbtion()"/></div>
             </div>   
        </div>   
    </div>
</body>
</html>
