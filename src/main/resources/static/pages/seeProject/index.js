onload = () => {
  $('#headerDivB').text('项目详情');

  let projectId = $util.getPageParam('seeProject');
  console.log(projectId, 'projectId');
  fetchProjectInfo(projectId);
  fetchQuestionnaireInfo(projectId);
}

const fetchProjectInfo = (id) => {
  let params = {
    id
  }
  $.ajax({
    url: API_BASE_URL + '/queryProjectList',
    type: "POST",
    data: JSON.stringify(params),
    dataType: "json",
    contentType: "application/json",
    success(res) {
      let info = res.data[0]
      console.log(info, 'res')
      $('#projectName').text(info.projectName);
      $('#createTime').text(info.creationDate);
      $('#projectDescription').text(info.projectContent);
      $('#personInCharge').text(info.createdBy);

    }
  })
};

const fetchQuestionnaireInfo = (projectId) =>{
  let params = {
    projectId:projectId
  }
  $.ajax({
    url: API_BASE_URL + '/queryQuestionnaireList',
    type: "POST",
    data: JSON.stringify(params),
    dataType: "json",
    contentType: "application/json",
    success(res) {
      let info = res.data;

      for(let i=0;i<info.length;i++){

        $('tbody').append(`
        <tr>
        <td>${(i+1).toString()}</td>
        <td>${info[i].surveyName}</td>
        <td>${info[i].releaseTime || ""}</td>
        <td>
            <button type="button" class="btn btn-link" onclick="previewQuestionnaire('${info[i].id}')">预览</button>
            <button type="button" class="btn btn-link" onclick="releaseQuestionnaire('${info[i].id}')">发布</button>
            <button type="button" class="btn btn-link btn-red" onclick="deleteQuestionnaire('${info[i].id}')">删除</button>
            <button type="button" class="btn btn-link btn-red" onclick="analyseQuestionnaire('${info[i].id}')">统计</button>
          </td>
        </tr>
        `)

      }
    }
  })

};

const previewQuestionnaire =(questionnaireId) =>{
  $util.setPageParam('questionnaireId', questionnaireId);
  $util.setPageParam('projectId', $util.getPageParam('seeProject'));
  location.href = "/pages/previewQuestionnaire/index.html";
};

const analyseQuestionnaire =(questionnaireId)=>{
  $util.setPageParam('questionnaireId', questionnaireId);
  location.href = "/pages/statistics/index.html";
}

const releaseQuestionnaire = (questionnaireId) => {

  let state = confirm("确认发布该问卷吗？")
  if (state){
    let params = {
      id:questionnaireId,
      projectId: $util.getPageParam('seeProject')
    }

    $.ajax({
      url: API_BASE_URL + '/releaseQuestionnaire',
      type: "POST",
      data: JSON.stringify(params),
      contentType: "application/json",
      success(res) {

        // $util.setPageParam('questionnaireId', questionnaireId);
        // $util.setPageParam('projectId', $util.getPageParam('seeProject'));

        location.href = "../qrCodeDisplay/index.html?questionnaireId=" + questionnaireId;

      }
    })
  }
};



// const generateQRCode = (questionnaireId, projectId) => {
//   alert(questionnaireId)
//   alert(projectId)
//   const url = `https://hogangnono.com`;
//   const qrcode = new QRCode("qrcode", {
//     text: url,
//     width: 256,
//     height: 256,
//     colorDark : "#000000",
//     colorLight : "#ffffff",
//     correctLevel : QRCode.CorrectLevel.H
//   });
//   qrcode.makeCode();
// };


const deleteQuestionnaire = (questionnaireId) => {

  let state = confirm("确认删除该问卷吗？")

  if (state) {
    let params = {
      id:questionnaireId
    }
    //alert(JSON.stringify(params))
    $.ajax({
      url: API_BASE_URL + '/deleteQuestionnaire',
      type: "POST",
      data: JSON.stringify(params),
      dataType: "json",
      contentType: "application/json",
      success(res) {
        alert(res.message)
        location.href = "/pages/questionnaire/index.html"}
    })
  }
};



const infoQuestionnaire = (questionnaireId) => {
  const API_URL = `${API_BASE_URL}/releaseQuestionnaire?questionnaireId=${questionnaireId}&projectId=${$util.getPageParam('seeProject')}`;

  $.ajax({
    url: API_URL,
    type: "POST",
    dataType: "json",
    contentType: "application/json",
    success(res) {
      alert(res.message)
      location.href = "/pages/questionnaire/index.html"
    }
  })
};