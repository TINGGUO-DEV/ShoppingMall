<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPwd.aspx.cs" Inherits="ShoppingMall.aspx.ResetPwd1" MasterPageFile="Frame.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>重設密碼</title>
    <script src="../js/ResetPwd.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="allContainer">
        <div class="txbAllInputBox">
            <p>
                <span>輸入密碼：</span>
                <input type="password" id="pwd1" oninput="PwdInput(this)" placeholder="請以大小寫字母各1及1個數字組成6-20個混和字符" onblur="Pwd1Blur(event)" title="請確認密碼是否為大小寫字母各1及1個數字組成的6-20個混和字符" maxlength="20" />
                <img class="togCursor" src="../image/icons/eye-close.png" alt="Hide Password" onclick="PasswordEye(this)" />
            </p>
            <p>
                <span>密碼確認：</span>
                <input type="password" id="pwd2" oninput="PwdInput(this)" placeholder="請再輸入一次密碼" onblur="Pwd2Blur(event)" title="請確認您輸入的密碼是否與上一列設定的密碼相同" maxlength="20" />
                <img class="togCursor" src="../image/icons/eye-close.png" alt="Hide Password" onclick="PasswordEye(this)" />
            </p>
            <div>
                <input value="確認" id="btnAllSub" onclick="Sumbtion()" /></div>
        </div>
    </div>
</asp:Content>

