<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "ShopCash.aspx.cs" Inherits = "ShoppingMall.aspx.ShopCash" MasterPageFile="Frame.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>查詢購物金</title>
    <script src = "../js/AllProd.js" type = "text/javascript"></script>
</asp:Content>

<asp:Content ContentPlaceHolderID="Title" Runat="Server">
    <div id = "labAllWebTitle">購物金</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id = "mbrContainer">
        <div id = "mbrNavContainer">
            <div class = "btnMbrNavs">
                <p>購物金 </p>
                <a href = "User.aspx">會員資料</a>
                <a href = "ChangePwd.aspx">更改密碼</a>
                <a href = "">訂單查詢</a>
                <a href = "ShopCash.aspx">購物金</a>
            </div>
        </div>
        <div id = "mbrRightSpace">
            <div class = "txbAllInputBox">
                <p><span>當前可用餘額：</span>text</p><!--balance 額度-->
                <p><span>儲值金額：</span>
                <input type = "text" id = "orderId" oninput = "CashInput(this)" onblur = "CashBlur(event)" placeholder = "請輸入您要儲值的金額" maxlength = "5"/></p>
                <div><input value = "儲值" id = "btnAllSub" onclick = "Sumbtion()"/><a href = "" class = "txbAllInputBoxBtn">交易紀錄查詢</a></div>
            </div>   
        </div>
    </div>
</asp:Content>