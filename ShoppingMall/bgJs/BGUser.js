
function SortTable() {
    var selectElement = document.getElementById("SelectItem");

    if (selectElement.value === "建立時間") {
        CreateTime();

    } else if (selectElement.value === "建立時間") {
        LastTime();
    }
}

function CreateTime() {
    DisplayData(data);
    data.list.sort(function (a, b) {          //    console.log('a:' + a.createTime + ' b:' + b.createTime + ' result:' + (a.createTime > b.createTime));
        return a.createTime > b.createTime ? -1 : 1;
    });
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

function LastTime() {
    data.list.sort(function (a, b) {          //    console.log('a:' + a.createTime + ' b:' + b.createTime + ' result:' + (a.createTime > b.createTime));
        return a.lastTime > b.lastcreateTime ? -1 : 1;
    });
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

    $('#sortButton').on('click', function () {
        SortTable();
    })

    DisplayData();
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

