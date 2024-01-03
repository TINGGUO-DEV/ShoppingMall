<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "Order.aspx.cs" Inherits = "ShoppingMall.aspx.Order" MasterPageFile="Frame.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>訂單查詢</title>
    <script src = "../js/Order.js" type = "text/javascript"></script>
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
        </div>
</asp:Content>

        

