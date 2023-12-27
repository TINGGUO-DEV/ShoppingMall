
function SortTable() {
    var table = $('th').parents('table').eq(0);   //('th').parents = 包含在('th')上面的所有父元素   ('table').eq(0) = 在tabble裡的第一行，索引是從0開始的，所以0就是第一行  用來尋找th上面父元素裡的table的第一個，常用於尋找表頭
    var rows = table.find('tr:gt(0)').toArray().sort(comparer($('th').index()));   //index()後面沒有和參數，就是找到同級的元素 //table.find('tr:gt(0)') = 找到table裡面tr第一行以後的所有元素( ('tr:gt(0)') = gt選擇器，代表的是tr第一行以後全部，如果是gt(6)就是tr的第6行以後) sort是對數組進行排序 .toArray()是將jquery轉成普通的js數組 .sort是排序  (comparer($('th').index())comparer裡的是比較th同級
    $('th')[0].asc = !$('th')[0].asc; //asc 通常用来表示当前列是升序排序（true）还是降序排序（false）
    if (!$('th')[0].asc) {
        rows = rows.reverse();
        src = "../image/icons/eye-open.png"
    }
    table.children('tbody').empty().html(rows);  //table.children('tbody') = table的子元素中符合tobdy的子元素 .empty是隱藏前面一個的區塊 整句意思為清空<table> 元素中的 <tbody> 的所有子元素和内容，然后用 rows 中的内容填充 <tbody>。
}

function Comparer(index) {
    return function (a, b) {
        var valA = getCellValue(a, index),       //index為取a所在的行數
            valB = getCellValue(b, index);

        var timestampA = Date.parse(valA);
        var timestampB = Date.parse(valB);

        return $.isNumeric(timestampA) && $.isNumeric(timestampB) ?  //$.isNumeric() 函数用于判断指定参数是否是一个数字值。只有接收number类型的参数,或者是可以被强制为有限数值的 string类型的参数时，才会返回true，否则返回false。
            timestampA - timestampB : timestampA.localeCompare(timestampB);
    };
}

function GetCellValue(row, index) {             //row所在的行數
    return $(row).children('td').eq(index).text();     //(row).children = 包含在row裡面的所有為td的子元素  eq的行數為Comparer() 
}



function DisplayData(data) {  //response
    data = data || {
        list: [
            {
                id: 0,
                name: '',
                acc: 'z1',
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
                acc: 'a12',
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
                acc: 'b15',
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

    var html = '';
    data.list.forEach(function (item) {
        html +=
            '<tr>' +
            '<th>' + item.name + '</th>' +
            '<th>' + item.acc + '</th>' +
            '<th>' + item.email + '</th>' +
            '<th>' + item.phone + '</th>' +
            '<th>' + item.address + '</th>' +
            '<th>' + item.level + '</th>' +
            '<th>' + (item.limit ? '是' : '否') + '</th>' +
            '<th>' + item.createTime + '</th>' +
            '<th>' + item.lastTime + '</th>' +
            '</tr>';
    });

    $('#listAccount > tbody').html(html);
}

$(document).ready(function () {

    $('#btnSort').on('click', function () {
        var selectedOption = $('#sortSelect').val();

        if (selectedOption === "建立時間") {
            SortTable(8);

        } else if (selectedOption === "最後登入時間")
            SortTable(9);
    });
    
    DisplayData();
});


//$(document).on('click', '#sortButton', function () {
//    SortTable();
//});

//// 獲取 ul 元素
//const dataContainer = document.getElementById('CallBackData');

//// 使用 forEach 遍歷數據並插入 li 元素
//fakeData.forEach(item => {
//    const li = document.createElement('li');
//    li.textContent = item.value;
//    dataContainer.appendChild(li);
//});

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
