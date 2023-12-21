
function AccInput(acc) {
    acc.value = acc.value.replace(/[^a-zA-Z\d]/g, '');
}

function PwdInput(pwdId) {
    pwdId.value = pwdId.value.replace(/[^a-zA-Z\d]/g, '');
}

function PhoneInput(phone) {
    phone.value =phone.value.replace(/^[^0]|[^\d]/g, '');
}

function MailInput(mail) {
    mail.value = mail.value.replace(/^[^a-zA-Z\d]|[^a-zA-Z\d@.-]/g, '');
}

function AccBlur(e) {
    var target = e.currentTarget;
    var value = target.value;
 
    if (value.match(/(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{1,20}$/) == null){
        target.style.borderColor = "red";
    } else {
        target.style.borderColor = "green";
    }
}

function Pwd1Blur(e) {
    var target = e.currentTarget;
    var value = target.value;

    if (value.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,20}$/) == null) {
        target.style.borderColor = "red";
    } else {
        target.style.borderColor = "green";
    }
}

function Pwd2Blur(e) {
    var target = e.currentTarget;
    var value = target.value;

    if (value.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,20}$/) == null) {
        target.style.borderColor = "red";

    } else {
        target.style.borderColor = "green";
    }

    Check2Pwd();
}

function Check2Pwd() {
    let pwd1 = document.getElementById("pwd1");
    let pwd2 = document.getElementById("pwd2");

    let Pwd1Valid = pwd1.value.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,20}$/) !== null;

    if (Pwd1Valid && pwd1.value === pwd2.value) {
        pwd2.style.border = '2px solid green';
    } else {
        pwd2.style.border = '2px solid red';
    }
}

function MailBlur(e) {
    var target = e.currentTarget;
    var value = target.value;

    if (value.match(/^[a-zA-Z0-9]+[\w.-]*[a-zA-Z0-9]+@[a-zA-Z0-9]+\.\w+[a-zA-Z0-9]+$/) == null) {
        target.style.borderColor = "red";
    } else {
        target.style.borderColor = "green";
    }
}

function PhoneBlur(e) {
    var target = e.currentTarget;
    var value = target.value;

    if (value.match(/^09\d{8}$/) == null) {
        target.style.borderColor = "red";
    } else {
        target.style.borderColor = "green";
    }
}

function Sumbtion() {
    var acc = $('#acc').val();
    var pwd = $('#pwd1').val();
    var pwdSec = $('#pwd2').val();
    var mail = $('#mail').val();
    var phone = $('#phone').val();

    if (acc.match(/(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{1,20}$/) == null) {
        alert('請確認您輸入的帳號至少包含1個英文字母及1個數字');
        return;
    }

    if (pwd.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,20}$/) == null) {
        alert('請確認您輸入的密碼是由大小寫字母各1及1個數字組成的6-20個混和字符');
        return;
    }

    if (pwdSec.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,20}$/) == null) {
        alert('請確認您第二次輸入的密碼是否與上一列設定的相同');
        return;
    }

    if (mail.match(/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9]+\.\w+([-.]\w+)*$/) == null) {
        alert('請確認您輸入的信箱格式是否正確');
        return;
    }

    if (phone.match(/^09\d{8}$/) == null) {
        alert('請確保您輸入的是09開頭的十位電話號碼');
        return;
    }

    $.ajax({
        url: "/ajax/Member.aspx",
        method: "POST",
        data: {
            method: 'register',
            acc: acc,
            pwd: pwd,
            pwdSec: pwdSec,
            mail: mail,
            phone: phone,
        },
        dataType: 'json',

        success: function (data) {
            if (data.status === 0) {
                alert("非預期錯誤");

            } else if (data.status & 1 == 1) {
                alert("帳號不符合規則");
                $('#acc').val('');

            } else if (data.status & 2 == 2) {
                alert("密碼不相同");
                $('#Pwd2').val('');

            } else if (data.status & 4 == 4) {
                alert("信箱格式錯誤");
                $('#mail').val('');

            } else if (data.status === 8) {
                alert("手機格式錯誤");
                $('#phone').val('');

            } else if (data.status === 1024) {
                alert("註冊成功");
                window.location.href = "VerifyCode.aspx";
            }
        },

        error: function () {
            alert("登入失敗，請稍後重試或聯繫客服");
        }
    });
};

/* 正確的測試帳密

$('#acc').val('a12');
$('#pwd1').val('a123546A');
$('#pwd2').val('a123546A');
$('#mail').val('12@21.com');
$('#phone').val('0912345678');

*/

/*不正確的測試帳密

$('#acc').val('a');
$('#pwd1').val('a1235A');
$('#pwd2').val('a12345A');
$('#mail').val('12');
$('#phone').val('0718345678');

 */

