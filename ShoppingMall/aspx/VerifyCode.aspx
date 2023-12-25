<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "VerifyCode.aspx.cs" Inherits = "ShoppingMall.aspx.VerifyCode" MasterPageFile="Frame.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>驗證信箱</title>
    <script src = "../js/AllProd.js" type = "text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id =  "allContainer">
        <div class = "txbAllInputBox">
            <p>請輸入信箱收到的六位數驗證碼：</p>
            <p><input type = "email"id = "vfyCode" placeholder = "ex.123456" oninput = "NumInput(this)" onblur = "NumBlur(event)" maxlength = "6"/></p>
            <div><input value = "確認" id = "btnAllSub" onclick = "Sumbtion()" />
                <span class ="txbAllInputBoxBtn" onclick = "">重新發送驗證碼</span>
            </div>     
        </div>
            
    </div>
</asp:Content>
