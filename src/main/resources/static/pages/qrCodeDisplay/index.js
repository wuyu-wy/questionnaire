// 获取当前页面的 URL
var currentUrl = window.location.href;

// 将 URL 分解为其组成部分
var urlParts = currentUrl.split("?");

// 如果 URL 中包含查询字符串，则获取查询字符串部分
if (urlParts.length > 1) {
    var queryString = urlParts[1];

    // 在查询字符串中查找 questionnaireId 参数
    var queryParams = queryString.split("&");
    for (var i = 0; i < queryParams.length; i++) {
        var param = queryParams[i].split("=");
        if (param[0] == "questionnaireId") {
            // 找到了 questionnaireId 参数，将其值设置为 input 元素的 value 属性
            document.getElementById("text").value = 'http://172.22.27.204:8085/pages/previewQuestionnaire/index.html?questionnaireId=' + param[1];
            break;
        }
    }
}


const qrcode = new QRCode("qrcode");

function makeCode () {
    const elText = document.getElementById("text");

    if (!elText.value) {
        alert("Input a text");
        elText.focus();
        return;
    }

    qrcode.makeCode(elText.value);
}

makeCode();

$("#text").
on("blur", function () {
    makeCode();
}).
on("keydown", function (e) {
    if (e.keyCode == 13) {
        makeCode();
    }
});

