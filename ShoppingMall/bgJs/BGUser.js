var listData =
{
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
            createTime: '2023-12-01 23:00:16',
            lastTime: '2023-12-18 17:05:26'
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
            createTime: '2023-12-10 20:00:06',
            lastTime: '2023-12-19 16:00:06'
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
            createTime: '2023-12-01 17:00:06',
            lastTime: '2023-12-22 19:00:31'
        }
    ]
}

function DisplayData(data) {  //response
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

    $('#listAccount > tbody').html(html);  //.html()返回第一個匹配元素的內容，用于设置内容时，则重写所有匹配元素的内容。
}

function CreateTime() {
    var html = '';       //宣告html用
    listData.list.sort(function (a, b) {
        return a.createTime > b.createTime ? 1 : -1;
    }).forEach(function (item) {
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
    $('#listAccount > tbody').html(html);      //.html本來就會蓋掉所有的資料
}

function LastTime() {
    var html = ''
    listData.list.sort(function (a, b) {
        return a.lastTime > b.lastTime ? 1 : -1;
    }).forEach(function (item) {
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
    DisplayData(listData);

    $('#SelectItem').on('change', function (e) {
        var switchValue = $(e.currentTarget).val();
        switch (switchValue) {
            case "createTime":
                CreateTime();
                break;
            case "lastTime":
                LastTime();
                break;
            default:
                return;
        }

    })

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
//     listData = response.date;     這裡的意思是後端傳回來的資料，會存在listData變數裡。
//        DisplayData(response);
//    },
//    error: function () {
//        alert("發送失敗，請稍後重試或聯繫客服");
//    }
//});
