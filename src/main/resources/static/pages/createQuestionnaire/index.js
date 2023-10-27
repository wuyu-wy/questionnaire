let project = {}
let projectList = {}
onload = () => {
  $('#headerUsername').text($util.getItem('userInfo').username)
  $('#headerDivB').text('创建问卷')

  //所属项目下拉列表框设置
  project = $util.getPageParam('project')
  projectList = $util.getPageParam('projectList')

  // 获取下拉列表框元素
  const selectLeo1 = document.getElementById('selectLeo1');

// 设置默认值
  const defaultValue = project.projectName;

// 添加选项到下拉列表框
  projectList.forEach(option => {
    const optionElement = document.createElement('option');
    optionElement.textContent = option.projectName;
    optionElement.value=option.id;
    if (option.projectName === defaultValue) {
      optionElement.selected = true;
    }
    selectLeo1.appendChild(optionElement);
  });



}

const onCreateTemplate = () => {
  $util.setPageParam('projectId', $('#selectLeo1').val())
  $util.setPageParam('surveyType', $('#selectLeo2').val())
  location.href = "/pages/createNewQuestionnaire/index.html"
}

const importHistoryQuestionnaire = () => {
  $('#divider').css('display', 'flex')
  $('#templateB').html('')
  $('#templateB').append(`
    <div class="template-item">
      <div class="item-t">
        <img class="img" src="../../static/images/blank_template.png">
        <div>
          <div class="title">测试</div>
          <div>页面测试数据</div>
        </div>
      </div>
      <div class="item-b">
        <button type="button" class="btn btn-default">导 入</button>
      </div>
    </div>
  `)
}

const surveyTypeTemplate = () => {
  $('#divider').css('display', 'flex')
  $('#templateB').html('')
  $('#templateB').append(`
    <div class="template-item">
      <div class="item-t">
        <img class="img" src="../../static/images/blank_template.png">
        <div>
          <div class="title">创建模板</div>
          <div>题库抽题，限时作答，成绩查询，自动阅卷</div>
        </div>
      </div>
      <div class="item-b">
        <button type="button" class="btn btn-default" onclick="createTemplate()">创 建</button>
      </div>
    </div>
    <div class="template-item">
      <div class="item-t">
        <img class="img" src="../../static/images/blank_template.png">
        <div>
          <div class="title">测试</div>
          <div></div>
        </div>
      </div>
      <div class="item-b">
        <button type="button" class="btn btn-default" onclick="handleEdit()" style="margin-right: 10px;">编 辑</button>
        <button type="button" class="btn btn-default">导 入</button>
      </div>
    </div>
  `)
}

const createTemplate = () => {
  $('#createTemplateModal').modal('show')
}

const handleEdit = () => {
  open('/pages/designQuestionnaire/index.html')
}
