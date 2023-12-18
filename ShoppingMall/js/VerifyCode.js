

function NumInput(Num) {
    Num.value = Num.value.replace(/[^\d]/g, '');
}

function Sumbtion() {

    var mail = $('#Mail').val();

    $.ajax({
        url: "/ajax/member.aspx",
        method: "POST",
        data: {
            method: 'sendCode',
            mail: mail,
        },
        dataType: 'json',

        success: function (data) {
            if (data.status === 0) {
                alert("信箱已成功認證");
                window.location.href = "Login.aspx";

            } else if (data.status === 1) {           //出現彈窗，有"重新發送驗證碼"及"回到註冊頁"()
                

            } 

        },
        error: function (xhr, status, error) {

            console.log("Status: " + status);
            console.log("Error: " + error);
            console.log(xhr);
            alert("發送失敗，請稍後重試或聯繫客服");

        }
    });
};

/* 正確的測試帳密

$('#Mail').val('12@21');

*/

/*不正確的測試帳密

$('#Mail').val('12');

 */