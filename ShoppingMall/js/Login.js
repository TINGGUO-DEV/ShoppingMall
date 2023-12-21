function AccInput(acc) {
    acc.value = acc.value.replace(/[^a-zA-Z\d]/g, '');
}

function PwdInput(pwd) {
    pwd.value = pwd.value.replace(/[^a-zA-Z\d]/g, '');
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

function PwdBlur(e) {
    var target = e.currentTarget;
    var value = target.value;

    if (value.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,20}$/) == null) {
        target.style.borderColor = "red";
    } else {
        target.style.borderColor = "green";
    }
}

function Sumbtion() {
    var acc = $('#acc').val();
    var pwd = $('#pwd').val();

    if (acc.match(/(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{1,20}$/) == null) {
        alert('請確認您輸入的帳號是否正確');
        return;
    }
    if (pwd.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,20}$/) == null) {
        alert('請確認您輸入的密碼是否正確');
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
                $('#acc').val('');
                $('#pwd').val('');

            } else if (data.status === 2) {
                alert("已封鎖");
            }
        },
        error: function () {
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

