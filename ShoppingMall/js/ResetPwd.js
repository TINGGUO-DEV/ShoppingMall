
function PwdInput(pwd) {
    pwd.value = pwd.value.replace(/[^a-zA-Z\d]/g, '');
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

function Sumbtion() {
    var pwd = $('#pwd1').val();
    var pwdSec = $('#pwd2').val();

    if (pwd.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,20}$/) == null) {
        alert('請確認您輸入的密碼是由大小寫字母各1及1個數字組成的6-20個混和字符');
        return;
    }

    if (pwdSec.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,20}$/) == null) {
        alert('請確認您第二次輸入的密碼是否與上一列設定的相同');
        return;
    }

    $.ajax({
        url: "/ajax/Member.aspx",
        method: "POST",
        data: {
            method: 'resetPwd',
            pwd: pwd,
            pwdSec: pwdSec,
        },
        dataType: 'json',

        success: function (data) {
            if (data.status === 0) {
                alert("非預期錯誤");

            } else if (data.status === 1) {
                alert("密碼必須相同");
                $('#Pwd2').val('');

            } else if (data.status === 2) {
                alert("密碼不可與原密碼相似");
                $('#Pwd1').val('');
                $('#Pwd2').val('');

            } else if (data.status === 1024) {
                alert("密碼修改成功");
                window.location.href = "User.aspx";
            }
        },

        error: function () {
            alert("登入失敗，請稍後重試或聯繫客服");
        }
    });
};

/*
$('#pwd1').val('a123546A');
$('#pwd2').val('a123546A');
*/

