package com.sisp.controller;


import com.sisp.beans.HttpResponseEntity;
import com.sisp.common.utils.UUIDUtil;
import com.sisp.dao.entity.QuestionEntity;
import com.sisp.dao.entity.QuestionnaireEntity;
import com.sisp.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
public class QuestionController {

    @Autowired
    private QuestionService questionService;


    /**
     * 添加问题
     * @param questionEntity
     * @return
     */
    @RequestMapping(value = "/addQuestionInfo",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity addQuestionInfo(@RequestBody QuestionEntity questionEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        questionEntity.setId(UUIDUtil.getOneUUID());
        int result = questionService.addQuestionInfo(questionEntity);
        if(result!=0){
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(questionEntity.getId());
            httpResponseEntity.setMessage("添加问题成功");
        }

        return httpResponseEntity;

    }

    /**
     * 查询问题
     * @param questionEntity
     * @return
     */
    @RequestMapping(value = "/queryQuestionList",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity queryQuestionList(@RequestBody QuestionEntity questionEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        List<QuestionEntity> hasUser = questionService.queryQuestionList(questionEntity);
        if(CollectionUtils.isEmpty(hasUser)){
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("无问题信息");
        }else{
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(hasUser);
            httpResponseEntity.setMessage("无问题信息");
        }

        return httpResponseEntity;

    }
}
