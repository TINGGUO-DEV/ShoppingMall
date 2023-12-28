<%@ Page Language = "C#" AutoEventWireup = "true" CodeBehind = "BGUser.aspx.cs" Inherits = "ShoppingMall.aspx.BGUser" MasterPageFile="BGFrame.master" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src = "../bgJS/BGUser.js" type = "text/javascript"></script>
    <title>會員管理</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                   <div class = "tableContainer">
                <div id ="sortItem" class ="sortItem">
                    <select id = "SelectItem">
                        <option value = "titleSelect">排序選項</option>
                        <option value = "createTime">建立時間</option>
                        <option value = "lastTime">最後登入時間</option>
                    </select>
                    <%--<img src ="../image/icons/cil-sort-descending.png" id = "sortButton" class = "sort"/>--%>
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
                       </tr>
                     </thead>
                   <tbody/>
                 </table>
             </div>
</asp:Content>
