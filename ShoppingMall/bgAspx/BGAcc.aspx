<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "BGAcc.aspx.cs" Inherits = "ShoppingMall.aspx.BGAcc" MasterPageFile = "BGFrame.master" %>

<asp:Content ContentPlaceHolderID = "head" runat = "Server">
    <script src = "../bgJS/BGAcc.js" type = "text/javascript"></script>
    <title>帳號管理</title>
</asp:Content>

<asp:Content ContentPlaceHolderID = "ContentPlaceHolder1" runat = "Server">
    <div class = "tableContainer">
        <div class = "sortItem">
            <div class = "littleTitle">帳號管理</div>
            <input id ="SerchItem" oninput = "SearchInput(this)" placeholder = "請輸入要查詢的內容" />
            <select id = "SelectItem">
                <option value = "titleSelect">排序選項</option>
                <option value = "createTime">建立時間</option>
            </select>
        </div>
        <table id="listAcc">
            <thead>
                <tr>
                    <th>帳號</th>
                    <th>管理者權限</th>
                    <th>停權</th>
                    <th>建立時間</th>
                    <th>備註</th>
                    <th colspan = "3">異動</th>
                </tr>
            </thead>
            <tbody />
        </table>
    </div>
</asp:Content>

