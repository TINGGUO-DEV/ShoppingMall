
$(document).on('click', '#sortButton', function () {
    SortTable();
});

function SortTable() {
    var table = $('th').parents('table').eq(0);
    var rows = table.find('tr:gt(0)').toArray().sort(comparer($('th').index()));
    $('th')[0].asc = !$('th')[0].asc;
    if (!$('th')[0].asc) {
        rows = rows.reverse();
    }
    table.children('tbody').empty().html(rows);
}
function Comparer(index) {
    return function (a, b) {
        var valA = getCellValue(a, index),
            valB = getCellValue(b, index);
        return $.isNumeric(valA) && $.isNumeric(valB) ?
            valA - valB : valA.localeCompare(valB);
    };
}
function GetCellValue(row, index) {
    return $(row).children('td').eq(index).text();
}

function DisplayData(data) {  //response
    data = data || {
        list: [
            {
                id: 0,
                name: '',
                acc: '123',
                email: '19@19.com',
                phone: '0962315875',
                address: '',
                level: '一般',
                limit: false,
                createTime: '112/12/6 23:00:16',
                lastTime: '112/12/18 7:05:26'
            },
            {
                id: 1,
                name: '',
                acc: '123',
                email: '11@10.com',
                phone: '0963215879',
                address: '',
                level: '一般',
                limit: false,
                createTime: '112/12/10 20:00:06',
                lastTime: '112/12/19 6:00:06'
            },
            {
                id: 2,
                name: '小名',
                acc: '123',
                email: '12@12.com',
                phone: '0963215874',
                address: '台北市中正路22222號',
                level: 'vip',
                limit: false,
                createTime: '112/12/1 7:00:06',
                lastTime: '112/12/22 19:00:31'
            }
        ]
    }
    console.log(data);
}

DisplayData();

// 使用假數據代替 AJAX 請求
const fakeData = [
    { value: 'asd123' },
    { value: '2023/12/15 21:05:31' },
    { value: '最高管理員' },
    { value: '否' },
    { value: '' }
];

// 獲取 ul 元素
const dataContainer = document.getElementById('CallBackData');

// 使用 forEach 遍歷數據並插入 li 元素
fakeData.forEach(item => {
    const li = document.createElement('li');
    li.textContent = item.value;
    dataContainer.appendChild(li);
});

//$.ajax({
//    url: "/ajax/Member.aspx",
//    method: "POST",
//    data: {
//        method: 'BGuser',
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
