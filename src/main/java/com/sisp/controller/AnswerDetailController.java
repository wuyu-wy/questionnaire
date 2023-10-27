package com.sisp.controller;


import com.sisp.beans.HttpResponseEntity;
import com.sisp.common.utils.UUIDUtil;
import com.sisp.dao.entity.AnswerDetailEntity;
import com.sisp.dao.entity.AnswerMessageEntity;
import com.sisp.service.AnswerDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class AnswerDetailController {
    @Autowired
    private AnswerDetailService answerDetailService;


    /**
     * 查询答卷明细
     * @param answerDetailEntity
     * @return
     */
    @RequestMapping(value = "/queryAnswerDetailList",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity queryAnswerDetailList(@RequestBody AnswerDetailEntity answerDetailEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        List<AnswerDetailEntity> hasUser = answerDetailService.queryAnswerDetailList(answerDetailEntity);
        if(CollectionUtils.isEmpty(hasUser)){
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("无答卷明细信息");
        }else{
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(hasUser);
            httpResponseEntity.setMessage("查询成功");
        }

        return httpResponseEntity;
    }


    /**
     * 添加
     * @param answerDetailEntity
     * @return
     */
    @RequestMapping(value = "/addAnswerDetail",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity addAnswerDetail(@RequestBody AnswerDetailEntity answerDetailEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        answerDetailEntity.setId(UUIDUtil.getOneUUID());
        int result = answerDetailService.addAnswerDetail(answerDetailEntity);
        if(result!=0){
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(result);
            httpResponseEntity.setMessage("添加成功");
        }
        return httpResponseEntity;
    }

}
