<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="ShoppingMall.aspx.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>會員資料</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="../js/AllJs.js" type="text/javascript"></script>
    <script src="../js/Member.js" type="text/javascript"></script>
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
        <div id="MbrContainer">
            <div id="MbrNavContainer">
                <div class="MbrNavBars">
                    <p>會員資料</p>
                    <a href="Member.aspx">會員資料</a>
                    <a href="ChangePwd.aspx">更改密碼</a>
                    <a href="">訂單查詢</a>
                    <a href="ShopCash.aspx">購物金</a>
                </div>
        </div>
            <div id="MbrRightSpace">
                <div class="AllInputBox">
                    <p><span>帳號：</span>
                    text</p>
                    <p><span>姓名：</span>
                    <input type="text"placeholder="請輸入真實姓名" oninput="NameInput(this)" maxlength="10" title="以利商品寄送及中獎資訊告知" required /></p>
                    <p><span>地址：</span>
                    <input type="text" placeholder="請輸入正確的通訊地址，以利商品寄送" maxlength="100" required /></p>
                    <p><span>信箱：</span>
                    <input type="email"id="Mail" placeholder="example@example.com" oninput="MailInput(this)" maxlength="50" required />
                        <button class="AllLittleBtn" onclick="">驗證</button>
                    </p>
                    <p><span>手機：</span>
                    <input type="tel" id="Phone" name="phone" placeholder="0912345678" oninput="PhoneInput(this)" maxlength="10" pattern="^09\d{8}" title="請確保您輸入的是09開頭的十位電話號碼" required /></p>
                    <div><input value="取消" id="AllSubmissionCancel" onclick="Sumbtion()"/><input value="確認修改" id="AllSubmission" onclick="Sumbtion()"/></div>
                </div>
            </div>
        </div>   
</body>
</html>
