<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "ForgotPwd.aspx.cs" Inherits = "ShoppingMall.aspx.ForgotPwd" MasterPageFile="Frame.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>全部商品</title>
    <script src = "../js/AllProd.js" type = "text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id =  "allContainer">
    <div class = "txbAllInputBox">
        <p>電子信箱：</p>
        <p><input type = "email"id = "mail" oninput = "MailInput(this)" onblur = "MailBlur(event)" placeholder = "example@example.com" title = "請確認您輸入的信箱格式是否正確" maxlength = "50"/></p>
        <div><input value = "重設密碼" id = "btnAllSub" onclick = "Sumbtion()"/></div>
    </div>
</div>
</asp:Content>

