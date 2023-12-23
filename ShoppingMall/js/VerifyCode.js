
function NumInput(Num) {
    Num.value = Num.value.replace(/[^\d]/g, '');
}

function NumBlur(e) {
    var target = e.currentTarget;
    var value = target.value;

    if (value.match(/\d{6}$/) == null) {
        target.style.borderColor = "red";
    } else {
        target.style.borderColor = "green";
    }
}

function Sumbtion() {

    var vfyCode = $('#vfyCode').val();

    if (vfyCode.match(/\d{6}$/) == null) {
        alert('請輸入6位數字驗證碼');
        return;
    }

    $.ajax({
        url: "/ajax/Member.aspx",
        method: "POST",
        data: {
            method: 'authVerifyCode',
            vfyCode: vfyCode,
        },
        dataType: 'json',

        success: function (data) {
            if (data.status === 0) {
                alert("信箱已成功認證");
                window.location.href = "Login.aspx";

            } else if (data.status === 1) {           //出現彈窗，有"重新發送驗證碼"及"回到註冊頁"()

            } 
        },
        error: function () {
            alert("發送失敗，請稍後重試或聯繫客服");
        }
    });
};
