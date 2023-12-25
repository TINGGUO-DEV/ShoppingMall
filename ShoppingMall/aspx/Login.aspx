<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "Login.aspx.cs" Inherits = "ShoppingMall.aspx.Login"  MasterPageFile="Frame.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src = "../js/Login.js" type = "text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
    <div id =  "allContainer">
        <div class = "txbAllInputBox">
            <p><span>帳號：</span>
            <input type = "text" id = "acc" oninput = "AccInput(this)" onblur = "AccBlur(event)" placeholder = "請輸入您的帳號" title = "請注意大小寫是否正確" maxlength = "20"/></p>
            <p><span>密碼：</span>
            <input type = "password" id = "pwd" oninput = "PwdInput(this)" onblur = "PwdBlur(event)" placeholder = "請輸入您的密碼" title = "請注意大小寫是否正確" maxlength = "20"/>
                <img class = "togCursor" src = "../image/icons/eye-close.png" alt = "Hide Password" onclick = "PasswordEye(this)" /></p>
            <div>
                <input value = "登入" id = "btnAllSub" onclick = "Sumbtion()"/>
                <a href = "Register.aspx" class = "txbAllInputBoxBtn">立即註冊</a>
                <a href = "ForgotPwd.aspx" class = "txbAllInputBoxBtn">忘記密碼</a>
            </div>
        </div>
    </div>
</asp:Content>