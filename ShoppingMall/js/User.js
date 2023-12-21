
function PhoneInput(phone) {
    phone.value = phone.value.replace(/^[^0]|[^\d]/g, '');
}

function MailInput(mail) {
    mail.value = mail.value.replace(/^[^a-zA-Z\d]|[^a-zA-Z\d@.-]/g, '');
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

function CancelSumbtion() {
    document.querySelector('.popUpConfBox').style.display = 'none';
}

function Sumbtion() {
    var name = $('#name').val();
    var adress = $('#adress').val();
    var mail = $('#mail').val();
    var phone = $('#phone').val();

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
            name: name,
            address: address,
            mail: mail,
            phone: phone,
        },
        dataType: 'json',

        success: function (data) {
            if (data.status === 0) {
                alert("修改成功");
                window.location.href = "";

            } else if (data.status & 1 == 1) {
                alert("姓名不符合規則,");
                $('#name').val('');

            } else if (data.status & 2 == 2) {
                alert("地址超出長度");
                $('#address').val('');

            } else if (data.status & 4 == 4) {
                alert("信箱格式錯誤");
                $('#mail').val('');

            } else if (data.status === 8) {
                alert("手機格式錯誤");
                $('#phone').val('');

            } else if (data.status === 1024) {
                alert("非預期錯誤");
            }
        },

        error: function () {
            alert("登入失敗，請稍後重試或聯繫客服");
        }
    });
};


