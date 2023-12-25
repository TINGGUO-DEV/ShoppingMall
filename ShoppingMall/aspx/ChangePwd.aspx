<%@ Page Language  =  "C#" AutoEventWireup = "true" CodeBehind = "ChangePwd.aspx.cs" Inherits = "ShoppingMall.aspx.ChangPwd" MasterPageFile="Frame.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>更改密碼</title>
    <script src = "../js/ChangePwd.js" type = "text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
</asp:Content>      
