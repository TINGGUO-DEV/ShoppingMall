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
                window.location.href = "ForgotResetPwd.aspx";

            } else if (data.status === 1) {
                alert("帳號or密碼錯誤");
                $('#Acc').val('');