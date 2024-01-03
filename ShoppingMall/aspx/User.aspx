<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="ShoppingMall.aspx.User" MasterPageFile="Frame.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>會員資料</title>
    <script src="../js/User.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="mbrContainer">
        <div id="mbrNavContainer">
            <div class="btnMbrNavs">
                <p>會員資料</p>
                <a href="User.aspx">會員資料</a>
                <a href="ChangePwd.aspx">更改密碼</a>
                <a href="">訂單查詢</a>
                <a href="ShopCash.aspx">購物金</a>
            </div>
        </div>
        <div id="mbrRightSpace">
            <div class="txbAllInputBox">
                <p>
                    <span>帳號：</span>
                    <span id="acc"></span>
                </p>
                <p>
                    <span>姓名：</span>
                    <input type="text" id="name" value="" placeholder="請輸入真實姓名" oninput="NameInput(this)" maxlength="10" title="以利商品寄送及中獎資訊告知"/>
                </p>
                <p>
                    <span>地址：</span>
                    <input type="text" id="address" placeholder="請輸入正確的通訊地址，以利商品寄送" oninput="AddressInput(this)" maxlength="100" />
                </p>
                <p>
                    <span>信箱：</span>
                    <input type="email" id="mail" oninput="MailInput(this)" onblur="MailBlur(event)" placeholder="example@example.com" title="請確認您輸入的信箱格式是否正確" maxlength="50" />
                    <span class="popUps" onmouseover="OpenPopUp('popUpHint')" onmouseout="ClosePopUp('popUpHint')">
                        <button class="btnAllSml " onclick="">驗證</button>
                        <span class="popUpBox" id="popUpHint">
                            <span class="labpopUpBoxP">完成信箱驗證才能進行購物唷!</span>
                        </span>
                    </span>
                </p>
                <p>
                    <span>手機：</span>
                    <input type="tel" id="phone" onblur="PhoneBlur(event)" placeholder="0912345678" oninput="PhoneInput(this)" maxlength="10" title="請確保您輸入的是09開頭的十位電話號碼" />
                </p>
                <div>
                    <input value="取消" id="btnAllSubCancel" onclick="CancelSumbtion()" /><input value="確認修改" id="btnAllSub" onclick="OpenPopUp('popUpConfirm')" />
                    <div class="popUpConfBox" id="popUpConfirm">
                        <div class="popUpConfP">確定要保存您的資料變更嗎?</div>
                        <div class="btnsBox">
                            <button class="btnCancel" onclick="CancelSumbtion()">取消</button>
                            <button class="btnConf" onclick="Sumbtion()">確定</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
