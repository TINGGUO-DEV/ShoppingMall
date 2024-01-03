
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

function Sumbtion() {
    var mail = $('#mail').val();

    if (mail.match(/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9]+\.\w+([-.]\w+)*$/) == null) {
        alert('請確認您輸入的信箱格式是否正確');
        return;
        }

    $.ajax({
        url: "/ajax/Member.aspx",
        method: "POST",
        data: {
            method: 'RequestResetPwd',
            mail: mail,
        },
        dataType: 'json',

        success: function (data) {
            if (data.status === 0) {
                alert("非預期錯誤");

            } else if (data.status === 1) {
                alert("查無此信箱");
                $('#mail').val('');

            } else if (data.status === 1024) {
                window.location.href = "ResetPwd.aspx";
            }

        },

        error: function() {
            alert("發送失敗，請稍後重試或聯繫客服");
        }

    });
}