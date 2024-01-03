var userInfo = { id: 0 };

var accountData =
{
    list: [
        {
            id: 0,
            acc: 'Master01',
            level: '100',
            isDel: false,
            createTime: '2023-11-15 13:00:56',
            memo: ''
        },
        {
            id: 1,
            acc: 'aiLi02',
            level: '1',
            isDel: false,
            createTime: '2023-12-25 9:05:16',
            memo: ''
        },
        {
            id: 2,
            acc: 'Ken03',
            level: '1',
            isDel: false,
            createTime: '2023-12-10 19:10:38',
            memo: ''

        }
    ]
}

function DisplayData(data) {  //response
    var html = '';
    data.list.forEach(function (item) {
        html +=
            '<tr>' +
            '<th>' + item.acc + '</th>' +
            '<th>' + (item.level === '100' ? '最高' : '一般') + '</th>' +
            '<th>' + (item.isDel ? '是' : '否') + '</th>' +
            '<th>' + item.createTime + '</th>' +
            '<th>' + item.memo + '</th>';

        html += userInfo.id === item.id ?
            '<th>' + '<button class = "btnSmall" onclick = "OpenPopUp()">修改密碼</button>' + '</th>' : '<th></th>';

        html += userInfo.id !== item.id && userInfo.level !== '100' ?
            '<th>' + '<button class = "btnSmall" onclick = "OpenPopUp()">刪除</button>' + '</th>' : '<th></th>';

        html += item.acc === 'Master01' ?
            '<th>' + '<button class = "btnSmall" onclick = "OpenPopUp()">新增管理員</button>' + '</th>' : '<th></th>';
        '</tr>';
    });

    $('#listAcc > tbody').html(html);  //.html()返回第一個匹配元素的內容，用于设置内容时，则重写所有匹配元素的内容。
}

function SearchInput(searchInput) {
    searchInput.value = searchInput.value.replace(/[^a-zA-Z\u4E00-\u9FA5\d.@]/g, '');
}

function CreateTime() {
    var html = '';       //宣告html用
    accountData.list.sort(function (a, b) {
        return a.createTime > b.createTime ? 1 : -1;
    }).forEach(function (item) {
        html +=
            '<tr>' +
            '<th>' + item.acc + '</th>' +
            '<th>' + (item.level === 100 ? '最高' : '一般') + '</th>' +
            '<th>' + (item.isDel ? '是' : '否') + '</th>' +
            '<th>' + item.createTime + '</th>' +
            '<th>' + item.memo + '</th>';

        html += userInfo.id === item.id ?
                '<th>' + '<button class = "btnSmall" onclick = "OpenPopUp()">修改密碼</button>' + '</th>' : '<th></th>';

        html += userInfo.id !== item.id && userInfo.level !== '100' ?
            '<th>' + '<button class = "btnSmall" onclick = "OpenPopUp()">刪除</button>' + '</th>' : '<th></th>';

        html += item.acc === 'Master01' ?
            '<th>' + '<button class = "btnSmall" onclick = "OpenPopUp()">新增管理員</button>' + '</th>' : '<th></th>';
        '</tr>';
    });
    $('#listAcc > tbody').html(html);      //.html本來就會蓋掉所有的資料
}

$(document).ready(function () {
    DisplayData(accountData);

    $('#SerchItem').on("keyup", function (e) {
        var inputValue = $(e.currentTarget).val().toLowerCase();      //toLowerCase()大寫轉小寫，小寫還是小寫  抓搜尋的關鍵詞, $(this)為#SerchItem的輸入字段

        $('#listAcc > tbody tr').filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(inputValue) > -1);  //抓表格裏頭
        });

    });

    $('#SelectItem').on('change', function (e) {
        var switchValue = $(e.currentTarget).val();
        switch (switchValue) {
            case "createTime":
                CreateTime();
                break;
            default:
                return;
        }

    })

    $('#SerchItem').on("click", function (e) {
        var inputValue = $(e.currentTarget).val().toLowerCase();      //toLowerCase()大寫轉小寫，小寫還是小寫  抓搜尋的關鍵詞, $(this)為#SerchItem的輸入字段

        $('#listAcc > tbody tr').filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(inputValue) > -1);  //抓表格裏頭
        });

    });

    function OpenPopUp() {

    }

});

//$.ajax({
//    url: "/ajax/Member.aspx",
//    method: "POST",
//    data: {
//        method: 'BGAcc',
//        name: name,
//        acc: acc,
//        mail: mail,
//        phone: phone,
//    },
//    dataType: 'json',

//    success: function (response) {
//     listData = response.date;     這裡的意思是後端傳回來的資料，會存在listData變數裡。
//        DisplayData(response);
//    },
//    error: function () {
//        alert("發送失敗，請稍後重試或聯繫客服");
//    }
//});
