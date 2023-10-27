$(document).ready(function () {
    // 定义每页显示的记录数
    let pageSize = 5;
    // 定义当前页码
    let currentPage = 1;
    // 加载第一页数据
    loadTableData(currentPage, pageSize,'');

    // 搜索按钮点击事件
    $("button.btn-primary").click(function () {
       let keyword = $("input.form-control").val();
        searchTableData(keyword, pageSize);
    });

    // 分页链接点击事件
    $("ul.pagination").on("click", "li.page-item", function () {
        let page = $(this).data("page");
        let keyword = $("input.form-control").val();

        loadTableData(page, pageSize,keyword);
    });
});

/**
 * 加载表格数据
 * @param page 当前页码
 * @param size 每页显示的记录数
 */
function loadTableData(page, size,keyword) {
    let params ={
        answererName:keyword,
        offset: (page - 1) * size,
        pageSize: size,
        projectId: $util.getPageParam('projectId')
    }
    $.ajax({
        url: API_BASE_URL + '/pageQueryAnswerMessageList',
        type: "POST",
        data: JSON.stringify(params),
        dataType: "json",
        contentType: "application/json",
        success: function (result) {
            if (result.code === "666") {
                // 清空表格数据
                $("#table-body").empty();
                // 填充表格数据
                let data = result.data.list;

                for (let i = 0; i < data.length; i++) {
                    let row = $("<tr>");
                    row.append($("<td>").text(data[i].questionnaireName));
                    row.append($("<td>").text(data[i].answererName));
                    row.append($("<td>").text(data[i].answerTime));
                    row.append($("<td>").html("<a onclick='viewDetail(\"" + data[i].id + "\", \"" + data[i].answererName + "\", \"" + data[i].questionnaireId + "\")'>明细</a>"));
                    $("#table-body").append(row);
                }
                // 渲染分页链接
                renderPagination(page, result.data.totalPageNum);
            } else {
                alert(result.message);
            }
        },
        error: function () {
            alert("请求失败，请稍后重试！");
        }
    });
}

/**
 * 搜索表格数据
 * @param keyword 关键字
 * @param size 每页显示的记录数
 */
function searchTableData(keyword, size) {

    loadTableData(1, size,keyword);

}

/**
 * 渲染分页链接
 * @param current 当前页码
 * @param total 总页数
 */
function renderPagination(current, total) {
    // 清空分页链接
    $("ul.pagination").empty();
    // 添加首页链接
    if(current!=1) {
        $("ul.pagination").append($("<li>").addClass("page-item").addClass(current === 1 ? "disabled" : "").data("page", 1).append($("<a>").addClass("page-link").attr("href", "javascript:void(0)").text("首页")));
    }
    // 添加上一页链接
    if(current!=1) {
        $("ul.pagination").append($("<li>").addClass("page-item").addClass(current === 1 ? "disabled" : "").data("page", current - 1).append($("<a>").addClass("page-link").attr("href", "javascript:void(0)").text("上一页")));
    }
    // 添加当前页链接
    for (let i = Math.max(current - 2, 1); i <= Math.min(current + 2, total); i++) {
        $("ul.pagination").append($("<li>").addClass("page-item").addClass(current === i ? "active" : "").data("page", i).append($("<a>").addClass("page-link").attr("href", "javascript:void(0)").text(i)));
    }
    // 添加下一页链接
    if(current!=total) {
        $("ul.pagination").append($("<li>").addClass("page-item").addClass(current === total ? "disabled" : "").data("page", current + 1).append($("<a>").addClass("page-link").attr("href", "javascript:void(0)").text("下一页")));
    }
    // 添加尾页链接
    if(current!=total) {
        $("ul.pagination").append($("<li>").addClass("page-item").addClass(current === total ? "disabled" : "").data("page", total).append($("<a>").addClass("page-link").attr("href", "javascript:void(0)").text("尾页")));
    }
}

/**
 * 查看答卷详情
 * @param id 答卷ID
 */
function viewDetail(id,answererName,questionnaireId) {
    $util.setPageParam('answerMessageId',id );
    $util.setPageParam('answererName',answererName );
    $util.setPageParam('questionnaireId',questionnaireId);
    location.href = "/pages/seeAnswerDetail/index.html"
}
