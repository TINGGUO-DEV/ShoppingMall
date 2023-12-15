

function MailInput(Mail) {
    Mail.value = Mail.value.replace(/[^a-zA-Z0-9@.-]/g, '');
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
                alert("驗證碼已發送");
                window.location.href = "Login.aspx";

            } else if (data.status === 1) {
                alert("查無此信箱");
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