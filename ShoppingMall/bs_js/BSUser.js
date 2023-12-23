
$(document).on('click', '#sortButton', function () {
    sortTable();
});

function sortTable() {
    var table = $('th').parents('table').eq(0);
    var rows = table.find('tr:gt(0)').toArray().sort(comparer($('th').index()));
    $('th')[0].asc = !$('th')[0].asc;
    if (!$('th')[0].asc) {
        rows = rows.reverse();
    }
    table.children('tbody').empty().html(rows);
}

function comparer(index) {
    return function (a, b) {
        var valA = getCellValue(a, index),
            valB = getCellValue(b, index);
        return $.isNumeric(valA) && $.isNumeric(valB) ?
            valA - valB : valA.localeCompare(valB);
    };
}

function getCellValue(row, index) {
    return $(row).children('td').eq(index).text();
}

function DisplayData(data) {
    data = data || {
        list: [
            {
                id: 0,
                name: '',
                acc: '123',
                email: '',
                phone: '',
                address: '',
                level: '',
                limit: false,
                createTime: '',
                lastTime: ''
            },
            {
                id: 1,
                name: '',
                acc: '123',
                email: '',
                phone: '',
                address: '',
                level: '',
                limit: false,
                createTime: '',
                lastTime: ''
            },
            {
                id: 2,
                name: '',
                acc: '123',
                email: '',
                phone: '',
                address: '',
                level: '',
                limit: false,
                createTime: '',
                lastTime: ''
            }
        ]
    }
    console.log(data);
}

DisplayData();

//$.ajax({
//    url: "/ajax/Member.aspx",
//    method: "POST",
//    data: {
//        method: 'bsuser',
//        name: name,
//        acc: acc,
//        mail: mail,
//        phone: phone,
//    },
//    dataType: 'json',

//    success: function (response) {
//        DisplayData(response);
//    },
//    error: function () {
//        alert("發送失敗，請稍後重試或聯繫客服");
//    }
//});
