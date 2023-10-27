package com.sisp.controller;


import com.sisp.beans.HttpResponseEntity;
import com.sisp.beans.Page;
import com.sisp.common.utils.UUIDUtil;
import com.sisp.dao.entity.AnswerMessageEntity;
import com.sisp.dao.entity.QuestionnaireEntity;
import com.sisp.dao.entity.UserEntity;
import com.sisp.service.AnswerMessageService;
import com.sisp.service.QuestionnaireService;
import com.sisp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
public class AnswerMessageController {

    @Autowired
    private AnswerMessageService answerMessageService;
    @Autowired
    private QuestionnaireService questionnaireService;
    @Autowired
    private UserService userService;


    /**
     * 查询答卷信息
     * @param answerMessageEntity
     * @return
     */
    @RequestMapping(value = "/queryAnswerMessageList",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity queryAnswerMessageList(@RequestBody AnswerMessageEntity answerMessageEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        List<AnswerMessageEntity> hasUser = answerMessageService.queryAnswerMessageList(answerMessageEntity);
        if(CollectionUtils.isEmpty(hasUser)){
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("无答卷信息");
        }else{
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(hasUser);
            httpResponseEntity.setMessage("查询成功");
        }
        return httpResponseEntity;
    }


    /**
     * 分页查询答卷信息
     * @param answerMessageEntity
     * @return
     */
    /**
     * 分页查询答卷信息
     * @param answerMessageEntity
     * @return
     */
    @RequestMapping(value = "/pageQueryAnswerMessageList",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity pageQueryAnswerMessageList(@RequestBody AnswerMessageEntity answerMessageEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();

        List<AnswerMessageEntity> hasUser = answerMessageService.pageQueryAnswerMessageList(answerMessageEntity);
        List<AnswerMessageEntity>list=answerMessageService.queryAnswerMessageList(answerMessageEntity);

        System.out.println(list.size());
        int totalPageNum=(list.size()+answerMessageEntity.getPageSize()-1)/answerMessageEntity.getPageSize();

        Page page =new Page();
        page.setList(hasUser);
        page.setTotalPageNum(totalPageNum);

        if(CollectionUtils.isEmpty(hasUser)){
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(page);
            httpResponseEntity.setMessage("无答卷信息");
        }else{
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(page);
            httpResponseEntity.setMessage("查询成功");
        }
        return httpResponseEntity;
    }


    /**
     * 添加
     * @param answerMessageEntity
     * @return
     */
    @RequestMapping(value = "/addAnswerMessage",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity addAnswerMessage(@RequestBody AnswerMessageEntity answerMessageEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();

        String times_standard = "100";
        String group_standard = "0";
        Date end_time_standard = new Date();
        Date start_time_standard = new Date();

        String user_group = "0";

        System.out.println(answerMessageEntity);

        //获取问卷信息
        if(answerMessageEntity.getQuestionnaireId() != null && answerMessageEntity.getAnswererId() != null){
            //获取用户信息  -- 用户的群组
            UserEntity user  = new UserEntity();
            user.setId(answerMessageEntity.getAnswererId());
            UserEntity userEntity = userService.queryUserListById(user);
            user_group = userEntity.getGroup();

            System.out.println(user_group);

            //获取问卷的信息 -- 问卷的 次数 群组 结束时间
            QuestionnaireEntity questionnaireEntity = new QuestionnaireEntity();
            questionnaireEntity.setId(answerMessageEntity.getQuestionnaireId());
            List<QuestionnaireEntity> questionnaireServiceList = questionnaireService.queryQuestionnaireList(questionnaireEntity);
            System.out.println(questionnaireServiceList);

            if(!questionnaireServiceList.isEmpty()){
                for(QuestionnaireEntity q : questionnaireServiceList){
                    times_standard = q.getTimes();//次数
                    group_standard = q.getGroup();//群组
                    end_time_standard = q.getEndTime();//结束时间
                    start_time_standard = q.getStartTime();
                }
            }
        }
        Date now = new Date();
        // 获取当前时间


        // 格式化时间
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formattedDate = formatter.format(now);

        answerMessageEntity.setAnswerTime(now);
        answerMessageEntity.setId(UUIDUtil.getOneUUID());
        int times = answerMessageService.calculateAnswerMessage(answerMessageEntity);

        if (times >= Integer.parseInt(times_standard)) {
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("次数超出限制，此次答题无效");
        }else if(now.after(end_time_standard)){
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("答卷时间已结束，此次答题无效");
        }else if(now.before(start_time_standard)){
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("答卷时间未开始，此次答题无效");
        }else if(!user_group.equals(group_standard) && !group_standard.equals("0")){
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("您非制定答卷群组，答卷无效");
        }else {
            int result = answerMessageService.addAnswerMessage(answerMessageEntity);
            if (result != 0) {
                httpResponseEntity.setCode("666");
                httpResponseEntity.setData(answerMessageEntity.getId());
                httpResponseEntity.setMessage("添加成功");
            }
        }
        return httpResponseEntity;
    }
}
