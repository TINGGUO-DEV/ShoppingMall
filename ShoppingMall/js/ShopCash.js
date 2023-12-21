
function CashInput(shopCash) {
    shopCash.value = shopCash.value.replace(/[^\d]/g, '');
}

function CashBlur(e) {
    var target = e.currentTarget;
    var value = target.value;

    if (value >= 300 && value<=50000) {
        target.style.borderColor = "green";
    } else {
        target.style.borderColor = "red";
    }
}

function Sumbtion() {
    var orderId = $('#orderId').val();

    if (orderId < 300 || orderId>50000) {
        alert('儲值請大於300並小於50000');
        return;
    }

    $.ajax({
        url: "/ajax/Member.aspx",
        method: "POST",
        data: {
            method: 'wallet',
            orderId: orderId
        },
        dataType: 'json',

        success: function (data) {
            if (data.status === 0) {
                alert("非預期錯誤");

            } else if (data.status === 1) {
                alert("加值成功");
                $('#orderId').val('');
            }
        },

        error: function () {
            alert("加值失敗，請稍後重試或聯繫客服");
        }
    });
};