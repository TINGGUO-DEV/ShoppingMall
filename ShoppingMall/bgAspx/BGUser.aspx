<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "BGUser.aspx.cs" Inherits = "ShoppingMall.aspx.BGUser" MasterPageFile = "BGFrame.master" %>

<asp:Content ContentPlaceHolderID="head" runat = "Server">
    <script src = "../bgJS/BGUser.js" type = "text/javascript"></script>
    <title>會員管理</title>
</asp:Content>

<asp:Content ContentPlaceHolderID = "ContentPlaceHolder1" runat = "Server">
    <div class = "tableContainer">
        <div class = "sortItem">
            <div class = "littleTitle">會員管理</div>
            <input id ="SerchItem" oninput = "SearchInput(this)" placeholder = "請輸入要查詢的內容" />
            <select id="SelectItem">
                <option value = "titleSelect">排序選項</option>
                <option value = "createTime">建立時間</option>
                <option value = "lastTime">最後登入時間</option>
            </select>
        </div>
        <table id = "listAccount">
            <thead>
                <tr>
                    <th>姓名</th>
                    <th>帳號</th>
                    <th>信箱</th>
                    <th>手機</th>
                    <th>地址</th>
                    <th>等級</th>
                    <th>停權</th>
                    <th>建立時間</th>
                    <th>最後登入時間</th>
                    <th colspan = "2">修改</th>
                    <%-- colspan="數字" 為合併列 ，rowspan="數字" 為合併欄--%>
                </tr>
            </thead>
            <tbody />
        </table>
    </div>
    <script type="text/javascript">
        window["userInfo"] = <%=InitalSetting%>;
    </script>
</asp:Content>
