function AccInput(Acc) {
    Acc.value = Acc.value.replace(/[^a-zA-Z\d]/g, '');
}

function PwdLogInput(PwdLog) {
    PwdLog.value = PwdLog.value.replace(/[^a-zA-Z\d]/g, '');
}

function AccBlur(e) {
    var target = e.currentTarget;
    var value = target.value;

    if (value.match(/(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{1,20}$/) == null) {
        target.style.borderColor = "red";
    } else {
        target.style.borderColor = "green";
    }
}

function PwdLogBlur(e) {
    var target = e.currentTarget;
    var value = target.value;

    if (value.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,20}$/) == null) {
        target.style.borderColor = "red";
    } else {
        target.style.borderColor = "green";
    }
}

function Sumbtion() {
    var acc = $('#Acc').val();
    var pwd = $('#Pwd1').val();

    if (acc.match(/(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{1,20}$/) == null) {
        alert('請確認您輸入的帳號至少包含1個英文字母及1個數字');
        return;
    }
    if (pwd.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,20}$/) == null) {
        alert('請確認您輸入的密碼是由大小寫字母各1及1個數字組成的6-20個混和字符');
        return;
    }

    $.ajax({
        url: "/ajax/Member.aspx",
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
                window.location.href = "AllProd.aspx";

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

/* 正確的測試帳密

$('#Acc').val('a12');
$('#Pwd').val('a123546A');

*/

/*不正確的測試帳密

$('#Acc').val('a');
$('#Pwd').val('a1235A');


 */

