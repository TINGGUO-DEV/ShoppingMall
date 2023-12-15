

function Check2Pwd() {
    let Pwd1 = document.getElementById("Pwd1");
    let Pwd2 = document.getElementById("Pwd2");

    if (Pwd1.checkValidity() && Pwd1.value === Pwd2.value) {
        Pwd2.setCustomValidity('');
        Pwd2.style.border = '2px solid green';
    } else {
        Pwd2.setCustomValidity('密碼不吻合');
        Pwd2.style.border = '2px solid red';
    }
}

function PwdIdInput(PwdId) {
    PwdId.value = PwdId.value.replace(/[^a-zA-Z\d]/g, '');
}

function AccInput(Acc) {
    Acc.value = Acc.value.replace(/[^a-zA-Z\d]/g, '');
}

function PhoneInput(Phone) {
    Phone.value =Phone.value.replace(/^[^0]|[^\d]/g, '');
}

function MailInput(Mail) {
    Mail.value = Mail.value.replace(/[^a-zA-Z\d@.-]/g, '');
}

function AccBlur(e) {
    var target = e.currentTarget;
    var value = target.value;
    var regex = new RegExp('(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{1,20}$');

    if (regex.test(value) == false) {
        alert('請確認您輸入的帳號至少包含1個英文字母及1個數字');
        return;
    }
}

function Sumbtion() {

    var acc = $('#Acc').val();
    var pwd = $('#Pwd1').val();
    var pwdSec = $('#Pwd2').val();
    var mail = $('#Mail').val();
    var phone = $('#Phone').val();
    var regex = new RegExp('(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{1,20}$');

    if (regex.test(acc) == false) {
        alert('帳號不符規則');
        return;
    }

    $.ajax({
        url: "/ajax/member.aspx",
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
                console.error("非預期錯誤信息:", data.errorDetails);

            } else if (data.status & 1 == 1) {
                alert("帳號不符合規則");
                $('#Acc').val('');

            } else if (data.status & 2 == 2) {
                alert("密碼不相同");
                $('#Pwd2').val('');

            } else if (data.status & 4 == 4) {
                alert("信箱格式錯誤");
                $('#Mail').val('');

            } else if (data.status === 8) {
                alert("手機格式錯誤");
                $('#Phone').val('');

            } else if (data.status === 1024) {
                alert("註冊成功");
                window.location.href = "Login.aspx";
            }
        },
        error: function (xhr, status, error) {

            console.log("Status: " + status);
            console.log("Error: " + error);
            console.log(xhr);
            alert("註冊失敗，請稍後重試或聯繫客服");

        }
    });
};

/* 正確的測試帳密

$('#Acc').val('a12');
$('#Pwd1').val('a123546A');
$('#Pwd2').val('a123456A');
$('#Mail').val('12@21');
$('#Phone').val('0912345678');

*/

/*不正確的測試帳密

$('#Acc').val('a');
$('#Pwd1').val('a1235A');
$('#Pwd2').val('a12345A');
$('#Mail').val('12');
$('#Phone').val('0718345678');

 */

