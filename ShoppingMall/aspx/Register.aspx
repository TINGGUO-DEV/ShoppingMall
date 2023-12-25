<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "Register.aspx.cs" Inherits = "ShoppingMall.aspx.Register" MasterPageFile="Frame.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>註冊會員</title>
    <script src = "../js/Register.js" type = "text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id =  "allContainer">
        <div class = "txbAllInputBox">
            <p><span>創建帳號：</span>
            <input type = "text" id = "acc" oninput = "AccInput(this)" onblur = "AccBlur(event)" placeholder = "請以至少1個英文字母及1個數字做為帳號的命名" title = "請確認是否包含至少1個英文字母及1個數字" maxlength = "20"/></p>
            <p><span>輸入密碼：</span>
            <input type = "password" id = "pwd1" oninput = "PwdInput(this)" placeholder = "請以大小寫字母各1及1個數字組成6-20個混和字符" onblur = "Pwd1Blur(event)" title = "請確認密碼是否為大小寫字母各1及1個數字組成的6-20個混和字符" maxlength = "20"/>
            <img class = "togCursor" src = "../image/icons/eye-close.png" alt = "Hide Password" onclick = "PasswordEye(this)"/></p>
            <p><span>密碼確認：</span>
            <input type = "password" id = "pwd2" oninput = "PwdInput(this)" placeholder = "請再輸入一次密碼" onblur = "Pwd2Blur(event)" title = "請確認您輸入的密碼是否與上一列設定的密碼相同" maxlength = "20"/>
            <img class = "togCursor" src = "../image/icons/eye-close.png" alt = "Hide Password" onclick = "PasswordEye(this)"/></p>
            <p><span>電子信箱：</span>
            <input type = "email"id = "mail" oninput = "MailInput(this)" onblur = "MailBlur(event)" placeholder = "example@example.com" title = "請確認您輸入的信箱格式是否正確" maxlength = "50"/></p>
            <p><span>手機號碼：</span>
            <input type = "tel" id = "phone" onblur = "PhoneBlur(event)" placeholder = "0912345678" oninput = "PhoneInput(this)" maxlength = "10" title = "請確保您輸入的是09開頭的十位電話號碼"/></p>
            <div><input value = "立即註冊" id = "btnAllSub" onclick = "Sumbtion()"/><a href = "login.aspx" class="txbAllInputBoxBtn">已有帳號(點擊登入)</a></div>        
        </div>       
    </div>
</asp:Content>
