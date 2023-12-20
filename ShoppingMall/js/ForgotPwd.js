$.ajax({
    url: "/ajax/Member.aspx",
    method: "POST",
    data: {
        method: '',
        vfyCode: vfyCode,

    },
    dataType: 'json',

    success: function (data) {
        if (data.status === 0) {
            alert("驗證成功");
            window.location.href = "VerifyCode.aspx";

        } else if (data.status === 1) {
            alert("驗證碼錯誤，請重新發送");
            $('#vfyCode').val('');

        } 

    },
    error: function (xhr, status, error) {

        console.log("Status: " + status);
        console.log("Error: " + error);
        console.log(xhr);
        alert("登入失敗，請稍後重試或聯繫客服");

    }
});