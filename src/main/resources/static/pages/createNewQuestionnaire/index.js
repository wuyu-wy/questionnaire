onload = () => {
  $('#headerUsername').text($util.getItem('userInfo').username)
  $('#headerDivB').text('创建调查问卷')

  $('#startTime').datetimepicker({
    language: 'zh-CN', // 显示中文
    format: 'yyyy-mm-dd', // 显示格式
    minView: "month", // 设置只显示到月份
    initialDate: new Date(), // 初始化当前日期
    autoclose: true, // 选中自动关闭
    todayBtn: true // 显示今日按钮
  })

  $('#endTime').datetimepicker({
    language: 'zh-CN', // 显示中文
    format: 'yyyy-mm-dd', // 显示格式
    minView: "month", // 设置只显示到月份
    initialDate: new Date(), // 初始化当前日期
    autoclose: true, // 选中自动关闭
    todayBtn: true // 显示今日按钮
  })
}


const handleCreateNewQuestionnaire = () => {



  if (!$('#surveyName').val()) return alert('调查名称不能为空！')
  if (!$('#surveyDescription').val()) return alert('调查说明不能为空！')
  if (!($('#startDate').val() && new Date($('#startDate').val()).getTime())) return alert('开始时间不能为空！')
  if (!($('#endDate').val() && new Date($('#endDate').val()).getTime())) return alert('结束时间不能为空！')
  if (!$('#times').val()) return alert('次数不能为空！')


  $util.setPageParam('surveyName',$('#surveyName').val() );
  $util.setPageParam('surveyDescription',$('#surveyDescription').val() );
  $util.setPageParam('projectId',$util.getPageParam('projectId') );
  $util.setPageParam('surveyType',$util.getPageParam('surveyType') );
  $util.setPageParam('startTime',$('#startDate').val() && new Date($('#startDate').val()).getTime())
  $util.setPageParam('endTime',$('#endDate').val() && new Date($('#endDate').val()).getTime())
  $util.setPageParam('times',$('#times').val() );
  if ($('#range').val() == 'public'){
    $util.setPageParam('group','0' );
  }else {
    $util.setPageParam('group', $('#group').val());
  }

  location.href = "/pages/designQuestionnaire/index.html"

}
