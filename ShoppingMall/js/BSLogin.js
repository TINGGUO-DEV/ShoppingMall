function filterInput(input) {
    input.value = input.value.replace(/[^a-zA-Z0-9]/g, '');
}

function Sumbtion() {
    var acc = $('#Acc').val();
    var pwd = $('#Pwd1').val();

    $.ajax({
        url: "/ajax/member.aspx",
        method: "POST",
        data: {
            method: 'login',
            acc: acc,
            pwd: pwd,

        },
        dataType: 'json',

        success: function (data) {
            if (data.status === 0) {
                alert("成功登入");
                window.location.href = "BSAcc.aspx";

            } else if (data.status === 1) {
                alert("帳號or密碼錯誤");
                $('#Acc').val('');

            } else if (data.status === 2) {
                alert("已封鎖");
            }

        },
        error: function (xhr, status, error) {

            console.log("Status: " + status);
            console.log("Error: " + error);
            console.log(xhr);
            alert("登入失敗，請稍後重試或聯繫客服");

        }
    });
};