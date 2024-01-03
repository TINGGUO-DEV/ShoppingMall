<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BGAddMenger.aspx.cs" Inherits="ShoppingMall.bgAspx.BGAddMenger" MasterPageFile="BGFrame.master" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src = "../bgJS/BGAddMenger.js" type = "text/javascript"></script>
    <title>新增管理員</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class = "txbAllInputBox">
        <p><span>新增帳號：</span>
        <input type = "text" id = "acc" oninput = "AccInput(this)" onblur = "AccBlur(event)" placeholder = "請以至少1個英文字母及1個數字做為帳號的命名" title = "請確認是否包含至少1個英文字母及1個數字" maxlength = "20"/></p>
        <p><span>輸入密碼：</span>
        <input type = "password" id = "pwd1" oninput = "PwdInput(this)" placeholder = "請以大小寫字母各1及1個數字組成6-20個混和字符" onblur = "Pwd1Blur(event)" title = "請確認密碼是否為大小寫字母各1及1個數字組成的6-20個混和字符" maxlength = "20"/>
        <img class = "togCursor" src = "../image/icons/eye-close.png" alt = "Hide Password" onclick = "PasswordEye(this)"/></p>
        <p><span>密碼確認：</span>
            <input type = "password" id = "pwd2" oninput = "PwdInput(this)" placeholder = "請再輸入一次密碼" onblur = "Pwd2Blur(event)" title = "請確認您輸入的密碼是否與上一列設定的密碼相同" maxlength = "20"/>
            <img class = "togCursor" src = "../image/icons/eye-close.png" alt = "Hide Password" onclick = "PasswordEye(this)"/></p>
        <p><span>管理權限：</span>

        <div><input value = "取消" id = "btnAllSubCancel" onclick = "CancelSumbtion()"/><input value = "確認修改" id = "btnAllSub" onclick = "OpenPopUp('popUpConfirm')" />
            <div class = "popUpConfBox" id = "popUpConfirm">
                <div class = "popUpConfP">確定要保存您的資料變更嗎?</div>
                <div class = "btnsBox">
                    <button class = "btnCancel" onclick = "CancelSumbtion()">取消</button>
                    <button class = "btnConf" onclick = "Sumbtion()">確定</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>