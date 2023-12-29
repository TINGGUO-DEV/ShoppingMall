<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "BGAcc.aspx.cs" Inherits = "ShoppingMall.aspx.BGAcc" MasterPageFile = "BGFrame.master" %>

<asp:Content ContentPlaceHolderID = "head" runat = "Server">
    <script src = "../bgJS/BGAcc.js" type = "text/javascript"></script>
    <title>帳號管理</title>
</asp:Content>

<asp:Content ContentPlaceHolderID = "ContentPlaceHolder1" runat = "Server">
    <div class = "tableContainer">
        <div class = "sortItem">
            <select id = "SerchItem">
                <option value = "titleSelect">查詢類別</option>
                <option value = "acc">帳號</option>
                <option value = "level">管理者權限</option>
                <option value = "isDel">停權</option>
            </select>
            <input oninput = "SearchInput(this)" placeholder = "請輸入要查詢的內容" />
            <div class = "bgRightSpaceIcons img" onclick = "">
                <img src = "../image/icons/search.png" alt = "搜尋" />
            </div>
            <select id = "SortItem">
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
                    <th colspan = "2">異動</th>
                </tr>
            </thead>
            <tbody />
        </table>
    </div>
</asp:Content>

