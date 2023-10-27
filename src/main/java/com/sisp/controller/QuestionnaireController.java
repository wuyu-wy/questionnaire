package com.sisp.controller;


import com.sisp.beans.HttpResponseEntity;
import com.sisp.common.utils.ReleaseData;
import com.sisp.common.utils.UUIDUtil;
import com.sisp.dao.entity.QuestionEntity;
import com.sisp.dao.entity.QuestionnaireEntity;
import com.sisp.service.QuestionnaireService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import java.util.Date;
import java.util.List;

@RestController
public class QuestionnaireController {

    @Autowired
    private QuestionnaireService questionnaireService;


    /**
     * 添加问卷
     * @param questionnaireEntity
     * @return
     */
    @RequestMapping(value = "/addQuestionnaireInfo",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity addQuestionnaireInfo(@RequestBody QuestionnaireEntity questionnaireEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        questionnaireEntity.setId(UUIDUtil.getOneUUID());
        questionnaireEntity.setState("1");
        int result = questionnaireService.addQuestionInfo(questionnaireEntity);
        if(result!=0){
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(questionnaireEntity.getId());
            httpResponseEntity.setMessage("添加问卷成功");
        }
        return httpResponseEntity;

    }


    /**
     * 查询问卷
     * @param questionnaireEntity
     * @return
     */
    @RequestMapping(value = "/queryQuestionnaireList",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity queryQuestionnaireList(@RequestBody QuestionnaireEntity questionnaireEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        List<QuestionnaireEntity> hasUser = questionnaireService.queryQuestionnaireList(questionnaireEntity);

        if(CollectionUtils.isEmpty(hasUser)){
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("无问卷信息");
        }else{
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(hasUser);
            httpResponseEntity.setMessage("有问卷信息");
        }

        return httpResponseEntity;

    }


    /**
     * 发布问卷
     * @param questionnaireEntity
     * @return
     */
    @RequestMapping(value = "/releaseQuestionnaire",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity releaseQuestionnaireList(@RequestBody QuestionnaireEntity questionnaireEntity){
        System.out.println(questionnaireEntity);
        questionnaireEntity.setReleaseTime(ReleaseData.getCurrentTime());
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        System.out.println(questionnaireEntity);
        int result = questionnaireService.modifyQuestionnaire(questionnaireEntity);
        if(result!=0){
            httpResponseEntity.setCode("10");
            httpResponseEntity.setData(result);
            httpResponseEntity.setMessage("发布成功");
        }else{
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("修改失败");
        }

        return httpResponseEntity;
    }


    /**
     * 删除问卷
     * @param questionnaireEntity
     * @return
     */
    @RequestMapping(value = "/deleteQuestionnaire",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity deleteQuestionnaire(@RequestBody QuestionnaireEntity questionnaireEntity){

        questionnaireEntity.setState("0");
//        List<QuestionnaireEntity> has = questionnaireService.queryQuestionnaireList(questionnaireEntity);
//        System.out.println("查到了信息" + has);
//        for(QuestionnaireEntity questionnaire:has){
//            questionnaire.setState("0");
//        }
//
//        System.out.println("修改后" + has);


        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();

        Date end = new Date();
        Date start = new Date();
        List<QuestionnaireEntity> questionnaireServiceList = questionnaireService.queryQuestionnaireList(questionnaireEntity);
        System.out.println(questionnaireServiceList);

        if(!questionnaireServiceList.isEmpty()){
            for(QuestionnaireEntity q : questionnaireServiceList){

                end = q.getEndTime();//结束时间
                start = q.getStartTime();
            }
        }


        Date now = new Date();


        if(now.before(start) || now.after(end)) {
            int result = questionnaireService.modifyQuestionnaire(questionnaireEntity);
            if (result != 0) {

                httpResponseEntity.setCode("10");
                httpResponseEntity.setData(result);
                httpResponseEntity.setMessage("删除成功");

            } else {
                httpResponseEntity.setCode("0");
                httpResponseEntity.setData(0);
                httpResponseEntity.setMessage("删除失败");
            }
        }else{
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("问卷正在进行，不可删除");
        }

        return httpResponseEntity;
    }

}
