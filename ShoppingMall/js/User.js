//待修改，驗證後替換圖示未加入
function validateEmail() {
    var emailInput = document.getElementById('email');
    var submitButton = document.getElementById('btnsub');

    // 模拟从后端获取的数据
    var backResponse = {
        isValid: true // 或者从后端获取的实际验证结果
    };

    // 假设后端响应是一个包含 isValid 字段的 JSON 对象
    if (backResponse.isValid) {
        submitButton.innerHTML = '已驗證';
        submitButton.style.color = '#64A600';

    } else {
        submitButton.innerHTML = '驗證';
    }
}
function NameInput(name) {
    name.value = name.value.replace(/[^a-zA-Z\u4E00-\u9FA5]/g, '');
}
function AddressInput(address) {
    address.value = address.value.replace(/[^\u4E00-\u9FA5\w]/g, '');
}
function MailInput(mail) {
    mail.value = mail.value.replace(/^[^a-zA-Z\d]|[^a-zA-Z\d@.-]/g, '');
}
function PhoneInput(phone) {
    phone.value = phone.value.replace(/^[^0]|[^\d]/g, '');
}
function NameBlur(e) {
    var target = e.currentTarget;
    var value = target.value;

    if (value.match(/^[a-zA-Z\u4E00-\u9FA5]+$/) == null) {
        target.style.borderColor = "red";
    } else {
        target.style.borderColor = "green";
    }
}
function AddressBlur(e) {
    var target = e.currentTarget;
    var value = target.value;

    if (value.match(/^[\u4E00-\u9FA5\w]+$/) == null) {
        target.style.borderColor = "red";
    } else {
        target.style.borderColor = "green";
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

function CancelSumbtion() {
    document.querySelector('.popUpConfBox').style.display = 'none';
}

function Sumbtion() {
    var name = $('#name').val();
    var address = $('#address').val();
    var mail = $('#mail').val();
    var phone = $('#phone').val();

    if (!/^[a-zA-Z\u4E00-\u9FA5]+$/.test(name)) {
        alert('輸入的姓名請勿包含特殊字元ex.%#&@');
        return;
    }

    if (!/^[\u4E00-\u9FA5\w]+$/.test(address)) {
        alert('輸入的地址請勿包含特殊字元ex.%#&@');
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
            method: 'User',
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


