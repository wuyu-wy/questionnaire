onload = async ()=>{
    questionnaireStatistics();
};


const questionnaireStatistics =async ()=>{

    //清理元素
    let parent = document.querySelector('body');
    clearChildren(parent);

    //获取参数
    let questionnaireId=$util.getPageParam('questionnaireId');
    let questionnaire= await queryQuestionnaire(questionnaireId);
    let question=await queryQuestion(questionnaireId,"","");
    let flag="1";

    //设置标题
    $('body').append(`
        <h3 class="questionnaire-title" id="questionnaireName">${questionnaire.surveyName}</h3>
        <br>
        <br>
        <br>
    `)
    //初始化界面
    for(let i=0;i<question.length;i++){
        let divId="d"+question[i].id;
        $('body').append(`
        <div>
            <div class="flex-container">
    <h4 class="questionnaire-description">第${i+1}题：${question[i].problemName}</h4>
    <div class="button-container">
      <h4><button onclick="homogeneousStatistics('${divId}')">同类问题统计</button></h4>
    </div>
  </div>
  
  <div id=${divId} class="problem"></div>
  
  <div class="button-group">
    <button onclick="Form('${divId}','${flag}')">表格</button>
    <button onclick="pie('${divId}','${flag}')">饼状</button>
    <button onclick="ring('${divId}','${flag}')">圆环</button>
    <button onclick="columnar('${divId}','${flag}')">柱状</button>
    <button onclick="stripShape('${divId}','${flag}')">条形</button>
    <button onclick="brokenLine('${divId}','${flag}')">折线</button>
  </div>
</div>
<br>
         <br>
         <br>
         <br>
      
        `);
    }
}

const homogeneousStatistics =async (questionId)=>{

    //清理元素
    let parent = document.querySelector('body');
    clearChildren(parent);

    //设置标题
    let question=await queryQuestion("",questionId.substring(1),"");//需要同类统计的问题
    $('body').append(`
        <h3 class="questionnaire-title" id="questionnaireName">${question[0].problemName}</h3>
    `)


    //初始化界面
        let divId=questionId;
        let flag="2"
        $('body').append(`
        <div>
        <div class="flex-container">
    <div class="button-container">
      <h4><button onclick="questionnaireStatistics()">返回问卷统计</button></h4>
    </div>
  </div>
            
            <div id=${divId} class="problem"></div>
            <div class="button-group">
    <button onclick="Form('${divId}','${flag}')">表格</button>
    <button onclick="pie('${divId}','${flag}')">饼状</button>
    <button onclick="ring('${divId}','${flag}')">圆环</button>
    <button onclick="columnar('${divId}','${flag}')">柱状</button>
    <button onclick="stripShape('${divId}','${flag}')">条形</button>
    <button onclick="brokenLine('${divId}','${flag}')">折线</button>
  </div>
            
        </div>
        
        `);
};

const Form =async (questionId,flag)=>{

    //清理元素
    let parent = document.querySelector(`#${questionId}`);
    clearChildren(parent);

    //声明参数
    let option=await queryOption(questionId.substring(1));
    let optionName=[];
    let optionNum=[];
    let totalNum=0;

    //获取选项的名称
    for(let i=0;i<option.length;i++){
        optionName.push(option[i].chooseTerm);
    }
    if(flag=="1"){
        //获取选项的数量
        for(let i=0;i<option.length;i++){
            let allOption=await queryAllOption(option[i].id);

            if(allOption==0){
                optionNum.push(0);
                totalNum==0;
            }else {
                optionNum.push(allOption.length);
                totalNum+=allOption.length;
            }

        }
    }else {
        //获取选项的数量
        optionNum=await returnOptionNum(questionId.substring(1));
        for(let i=0;i<optionNum.length;i++){
            totalNum+=optionNum[i];
        }
    }



    //给对应问题添加表格
    let tbodyDivId="t"+questionId.substring(1);
    $('#' + questionId).append(`
        <table>
            <thead>
                <tr>
                    <td>选项</td>
                    <td>小计</td>
                    <td>比例</td>
                </tr>
            </thead>
            <tbody id=${tbodyDivId}>
            </tbody>
         </table>
    `);



    for(let i=0;i<option.length;i++){
        $('#' + tbodyDivId).append(`
            <tr>
                <td>${option[i].chooseTerm}</td>
                <td>${optionNum[i]}</td>
                <td><progress value=${optionNum[i]} max=${totalNum}></progress>${isNaN(((optionNum[i]*100)/totalNum).toFixed(2)) ? 0 : ((optionNum[i]*100)/totalNum).toFixed(2)}%</td>
             </tr>
        `)
    }

    $('#' + tbodyDivId).append(`
            <tr>
                <td>本题有效填写人次</td>
                <td>${totalNum}</td>
                <td></td>
             </tr>
        `)


};


const pie =async (questionId,flag)=>{

    //清理元素
    let parent = document.querySelector(`#${questionId}`);
    clearChildren(parent);

    //声明参数
    let option=await queryOption(questionId.substring(1));
    let optionName=[];
    let optionNum=[];

    //获取选项的名称
    for(let i=0;i<option.length;i++){
        optionName.push(option[i].chooseTerm);
    }
    if(flag=="1"){
        //获取选项的数量
        for(let i=0;i<option.length;i++){
            let allOption=await queryAllOption(option[i].id);
            optionNum.push(allOption.length);
        }
    }else {
        //获取选项的数量
        optionNum=await returnOptionNum(questionId.substring(1));
    }


    //添加饼图
    let chartDivId="chart"+questionId.substring(1);

    $('#' + questionId).append(`
        <canvas id=${chartDivId} width="200" height="200"></canvas>

    `)

    // 饼图数据
    let data = {
        labels: optionName,
        datasets: [{
            label: '小计',
            data: optionNum,
            backgroundColor: [
                'red',
                'blue',
                'yellow',
                'green',
                'purple',
                'orange'
            ],
            borderColor: [
                'red',
                'blue',
                'yellow',
                'green',
                'purple',
                'orange'
            ],
            borderWidth: 1
        }]
    };

    // 饼图配置
    let options = {
        responsive: false,
        legend: {
            position: 'top',
        },
        title: {
            display: false,
            text: 'Pie Chart Example'
        },
        animation: {
            animateScale: true,
            animateRotate: true
        }
    };


    // 获取 canvas 元素
    let ctx = document.getElementById(chartDivId).getContext('2d');

    // 创建饼图
    let myPieChart = new Chart(ctx, {
        type: 'pie',
        data: data,
        options: options
    });


};


const ring = async (questionId,flag) => {

    //清理元素
    let parent = document.querySelector(`#${questionId}`);
    clearChildren(parent);

    //声明参数
    let option=await queryOption(questionId.substring(1));
    let optionName=[];
    let optionNum=[];
    let ringOptionNum=[];
    let totalNum = 0;

    //获取选项的名称
    for(let i=0;i<option.length;i++){
        optionName.push(option[i].chooseTerm);
    }
    if(flag=="1"){
        //获取选项的数量
        for(let i=0;i<option.length;i++){
            let allOption=await queryAllOption(option[i].id);
            if(allOption==0){
                optionNum.push(0);
                totalNum==0;
            }else {
                optionNum.push(allOption.length);
                totalNum+=allOption.length;
            }
        }
        for (let i = 0; i < optionNum.length; i++) {
            ringOptionNum.push((optionNum[i] / totalNum) * 100);
        }
    }else {
        //获取选项的数量
        optionNum=await returnOptionNum(questionId.substring(1));
        for(let i=0;i<optionNum.length;i++){
            totalNum+=optionNum[i];
        }
        for (let i = 0; i < optionNum.length; i++) {
            ringOptionNum.push((optionNum[i] / totalNum) * 100);
        }
    }

    //添加圆环
    let chartDivId="chart"+questionId.substring(1);

    $('#' + questionId).append(`
        <canvas id=${chartDivId} width="200" height="200"></canvas>

    `)

    // 圆环数据
    let data = {
        labels: optionName,
        datasets: [{
            label: '小计',
            data: optionNum,
            backgroundColor: [
                'red',
                'blue',
                'yellow',
                'green',
                'purple',
                'orange'
            ],
            borderColor: [
                'red',
                'blue',
                'yellow',
                'green',
                'purple',
                'orange'
            ],
            borderWidth: 1
        }]
    };

    // 圆环配置
    let options = {
        responsive: false,
        legend: {
            position: 'top',
        },
        title: {
            display: false,
            text: 'Pie Chart Example'
        },
        animation: {
            animateScale: true,
            animateRotate: true
        }
    };


    // 获取 canvas 元素
    let ctx = document.getElementById(chartDivId).getContext('2d');

    // 创建圆环
    let myPieChart = new Chart(ctx, {
        type: 'doughnut',
        data: data,
        options: options
    });

};



const columnar =async (questionId,flag) =>{

    //清理元素
    let parent = document.querySelector(`#${questionId}`);
    clearChildren(parent);

    //声明参数
    let option=await queryOption(questionId.substring(1));
    let optionName=[];
    let optionNum=[];
    let totalNum=0;

    //获取选项的名称
    for(let i=0;i<option.length;i++){
        optionName.push(option[i].chooseTerm);
    }
    if(flag=="1"){
        //获取选项的数量
        for(let i=0;i<option.length;i++){
            let allOption=await queryAllOption(option[i].id);
            if(allOption==0){
                optionNum.push(0);
                totalNum==0;
            }else {
                optionNum.push(allOption.length);
                totalNum+=allOption.length;
            }
        }
    }else {
        //获取选项的数量
        optionNum=await returnOptionNum(questionId.substring(1));
        for(let i=0;i<optionNum.length;i++){
            totalNum+=optionNum[i];
        }
    }


    //添加柱状图
    let chartDivId="chart"+questionId.substring(1);

    $('#' + questionId).append(`
        <canvas id=${chartDivId} width="200" height="200"></canvas>

    `)

    // 柱状图数据
    let data = {
        labels: optionName,
        datasets: [{
            label: '小计',
            data: optionNum,
            backgroundColor: [
                'red',
                'blue',
                'yellow',
                'green',
                'purple',
                'orange'
            ],
            borderColor: [
                'red',
                'blue',
                'yellow',
                'green',
                'purple',
                'orange'
            ],
            borderWidth: 1
        }]
    };

    // 柱状图配置
    let options = {
        responsive: false,
        legend: {
            position: 'top',
        },
        title: {
            display: false,
            text: 'Pie Chart Example'
        },
        animation: {
            animateScale: true,
            animateRotate: true
        }
    };


    // 获取 canvas 元素
    let ctx = document.getElementById(chartDivId).getContext('2d');

    // 创建柱状图
    let myPieChart = new Chart(ctx, {
        type: 'bar',
        data: data,
        options: options
    });


};

const stripShape = async (questionId,flag)=> {

    //清理元素
    let parent = document.querySelector(`#${questionId}`);
    clearChildren(parent);

    //声明参数
    let option=await queryOption(questionId.substring(1));
    let optionName=[];
    let optionNum=[];
    let totalNum=0;

    //获取选项的名称
    for(let i=0;i<option.length;i++){
        optionName.push(option[i].chooseTerm);
    }
    if(flag=="1"){
        //获取选项的数量
        for(let i=0;i<option.length;i++){
            let allOption=await queryAllOption(option[i].id);
            if(allOption==0){
                optionNum.push(0);
                totalNum==0;
            }else {
                optionNum.push(allOption.length);
                totalNum+=allOption.length;
            }
        }
    }else {
        //获取选项的数量
        optionNum=await returnOptionNum(questionId.substring(1));
        for(let i=0;i<optionNum.length;i++){
            totalNum+=optionNum[i];
        }
    }

    //添加条形图
    let chartDivId = "chart" + questionId.substring(1);
    $('#' + questionId).append(`
        <canvas id=${chartDivId} width="400" height="300"></canvas>
    `);


    // 获取画布元素
    const canvas = document.getElementById(chartDivId);
    canvas.width = 400;
    canvas.height = 300;

// 获取画布上下文
    const ctx = canvas.getContext('2d');

// 定义条形数据
    const data = optionNum;

// 定义条形图参数
    const barHeight = 40; // 条形高度
    const barGap = 15; // 条形间距
    const maxBarWidth = 300; // 条形最大宽度
    const startY = 50; // 起始绘制位置

// 绘制条形图
    let currentY = startY;
    for (let i = 0; i < data.length; i++) {
        const barWidth = data[i] / Math.max(...data) * maxBarWidth;
        ctx.fillStyle = '#008080';
        ctx.fillRect(40, currentY, barWidth, barHeight);
        ctx.fillStyle = '#000';
        ctx.fillText(optionName[i], 0, currentY + barHeight / 2 + 5);
        ctx.fillText(data[i], barWidth + 25, currentY + barHeight / 2 + 5);
        currentY += barHeight + barGap;
    }
};

const brokenLine=async (questionId,flag)=>{

    //清理元素
    let parent = document.querySelector(`#${questionId}`);
    clearChildren(parent);

    //声明参数
    let option=await queryOption(questionId.substring(1));
    let optionName=[];
    let optionNum=[];
    let totalNum=0;

    //获取选项的名称
    for(let i=0;i<option.length;i++){
        optionName.push(option[i].chooseTerm);
    }
    if(flag=="1"){
        //获取选项的数量
        for(let i=0;i<option.length;i++){
            let allOption=await queryAllOption(option[i].id);
            if(allOption==0){
                optionNum.push(0);
                totalNum==0;
            }else {
                optionNum.push(allOption.length);
                totalNum+=allOption.length;
            }
        }
    }else {
        //获取选项的数量
        optionNum=await returnOptionNum(questionId.substring(1));
        for(let i=0;i<optionNum.length;i++){
            totalNum+=optionNum[i];
        }
    }

    //添加折线
    let chartDivId="chart"+questionId.substring(1);

    $('#' + questionId).append(`
        <canvas id=${chartDivId} width="200" height="200"></canvas>

    `)

    // 折线数据
    let data = {
        labels: optionName,
        datasets: [{
            label: '小计',
            data: optionNum,
            backgroundColor: [
                'red',
                'blue',
                'yellow',
                'green',
                'purple',
                'orange'
            ],
            borderColor: [
                'red',
                'blue',
                'yellow',
                'green',
                'purple',
                'orange'
            ],
            borderWidth: 1
        }]
    };

    // 折线配置
    let options = {
        responsive: false,
        legend: {
            position: 'top',
        },
        title: {
            display: false,
            text: 'Pie Chart Example'
        },
        animation: {
            animateScale: true,
            animateRotate: true
        }
    };


    // 获取 canvas 元素
    let ctx = document.getElementById(chartDivId).getContext('2d');

    // 创建折线
    let myPieChart = new Chart(ctx, {
        type: 'line',
        data: data,
        options: options
    });
};

const queryQuestion = (questionnaireId,id,problemName) => {
    return new Promise((resolve, reject) => {
        let params={
            questionnaireId:questionnaireId,
            id:id,
            problemName:problemName
        }
        $.ajax({
            url: API_BASE_URL + '/queryQuestionList',
            type: "POST",
            data: JSON.stringify(params),
            dataType: "json",
            contentType: "application/json",
            success(res) {
                let data=res.data;
                resolve(data);
            },
            error(err) {
                reject(err);
            }
        });
    });
};




const queryOption = (questionId) => {
    return new Promise((resolve, reject) => {
        let params={
            questionId:questionId
        }
        $.ajax({
            url: API_BASE_URL + '/queryOptionList',
            type: "POST",
            data: JSON.stringify(params),
            dataType: "json",
            contentType: "application/json",
            success(res) {
                let data=res.data;
                resolve(data);
            },
            error(err) {
                reject(err);
            }
        });
    });
};

const queryAllOption = (optionId) => {
    return new Promise((resolve, reject) => {
        let params={
            optionId:optionId
        }
        $.ajax({
            url: API_BASE_URL + '/queryAnswerDetailList',
            type: "POST",
            data: JSON.stringify(params),
            dataType: "json",
            contentType: "application/json",
            success(res) {
                let data=res.data;
                resolve(data);
            },
            error(err) {
                reject(err);
            }
        });
    });
};


const queryQuestionnaire = (questionnaireId) => {
    return new Promise((resolve, reject) => {
        let params={
            id:questionnaireId
        }
        $.ajax({
            url: API_BASE_URL + '/queryQuestionnaireList',
            type: "POST",
            data: JSON.stringify(params),
            dataType: "json",
            contentType: "application/json",
            success(res) {
                let data=res.data;
                resolve(data[0]);
            },
            error(err) {
                reject(err);
            }
        });
    });
};

const clearChildren = (parent) => {
    while (parent.firstChild) {
        parent.removeChild(parent.firstChild);
    }
};




const returnOptionNum=async (questionId)=>{

    let options=await queryOption(questionId);
    let question=await queryQuestion("",questionId,"");
    let sameNameQuestion =await queryQuestion("","",question[0].problemName);
    let sameQuestionId=[];

    for(let i=0;i<sameNameQuestion.length;i++){
        let num=0;
        let optionsOfSameNameQuestion=await queryOption(sameNameQuestion[i].id)
        if(optionsOfSameNameQuestion.length!=options.length){
            continue;
        }
        for(let j=0;j<optionsOfSameNameQuestion.length;j++){
            for(let h=0;h<options.length;h++){
                if(optionsOfSameNameQuestion[j].chooseTerm==options[h].chooseTerm){
                    num++;
                }
            }
        }

        if(num==options.length){
            sameQuestionId.push(sameNameQuestion[i].id);
        }
    }


    let optionNum=[];

    for(let i=0;i<options.length;i++){
        let num=0;
        for(let j=0;j<sameQuestionId.length;j++){
            let optionsOfSameQuestion=await queryOption(sameQuestionId[j]);
            for(let h=0;h<optionsOfSameQuestion.length;h++){
                if(options[i].chooseTerm==optionsOfSameQuestion[h].chooseTerm){
                    if(await queryAllOption(optionsOfSameQuestion[h].id)!=0){
                        num+=(await queryAllOption(optionsOfSameQuestion[h].id)).length;
                    }
                }
            }
        }
        optionNum.push(num);
    }

    return optionNum;

};






