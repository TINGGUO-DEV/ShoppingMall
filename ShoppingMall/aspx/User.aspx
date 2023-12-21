<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "User.aspx.cs" Inherits = "ShoppingMall.aspx.User" %>

<!DOCTYPE html>

<html xmlns = "http://www.w3.org/1999/xhtml">
<head runat = "server">
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8"/>
    <title>會員資料</title>
    <script src = "https://code.jquery.com/jquery-3.4.1.js" integrity = "sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin = "anonymous"></script>
    <script src = "../js/AllJs.js" type = "text/javascript"></script>
    <script src = "../js/User.js" type = "text/javascript"></script>
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
                    <p>會員資料</p>
                    <a href = "User.aspx">會員資料</a>
                    <a href = "ChangePwd.aspx">更改密碼</a>
                    <a href = "">訂單查詢</a>
                    <a href = "ShopCash.aspx">購物金</a>
                </div>
        </div>
            <div id = "mbrRightSpace">
                <div class = "txbAllInputBox">
                    <p><span>帳號：</span>
                    text</p>
                    <p><span>姓名：</span>
                    <input type = "text"placeholder = "請輸入真實姓名" oninput = "NameInput(this)" maxlength = "10" title = "以利商品寄送及中獎資訊告知" required /></p>
                    <p><span>地址：</span>
                    <input type = "text" placeholder = "請輸入正確的通訊地址，以利商品寄送" maxlength = "100"/></p>
                    <p><span>信箱：</span>
                    <input type = "email"id = "mail" oninput = "MailInput(this)" onblur = "MailBlur(event)" placeholder = "example@example.com" title = "請確認您輸入的信箱格式是否正確" maxlength = "50"/>
                        <span class = "popUps" onmouseover = "OpenPopUp('popUpHint')" onmouseout = "ClosePopUp('popUpHint')" >
                            <button class = "btnAllSml " onclick = "" > 驗證</button >
                                <span class = "popUpBox" id = "popUpHint" >
                                    <span class = "labpopUpBoxP" > 完成信箱驗證才能進行購物唷!</span >
                                </span >
                        </span >
                    </p>
                    <p><span>手機：</span>
                    <input type = "tel" id = "phone" onblur = "PhoneBlur(event)" placeholder = "0912345678" oninput = "PhoneInput(this)" maxlength = "10" title = "請確保您輸入的是09開頭的十位電話號碼"/></p>
                    <div><input value = "取消" id = "btnAllSubCancel" onclick = "CancelSumbtion()"/><input value = "確認修改" id = "btnAllSub" onclick = "OpenPopUp('popUpConfirm')"/>
                        <div class = "popUpConfBox" id = "popUpConfirm">
                            <div class="popUpConfP">確定要保存您的資料變更嗎?</div>
                            <div class="btnsBox">
                                <button class="btnCancel" onclick = "CancelSumbtion()">取消</button><button class="btnConf" onclick = "Sumbtion()">確定</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>   
</body>
</html>
