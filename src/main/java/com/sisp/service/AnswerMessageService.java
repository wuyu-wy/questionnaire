package com.sisp.service;


import com.sisp.dao.AnswerMessageEntityMapper;
import com.sisp.dao.entity.AnswerDetailEntity;
import com.sisp.dao.entity.AnswerMessageEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnswerMessageService {
    @Autowired
    private AnswerMessageEntityMapper answerMessageEntityMapper;


    /**
     * 查询答卷信息
     * @param answerMessageEntity
     * @return
     */
    public List<AnswerMessageEntity>queryAnswerMessageList(AnswerMessageEntity answerMessageEntity){
        List<AnswerMessageEntity>result=answerMessageEntityMapper.queryAnswerMessageList(answerMessageEntity);
        return result;
    }


    /**
     * 分页查询答卷信息
     * @param answerMessageEntity
     * @return
     */
    public List<AnswerMessageEntity>pageQueryAnswerMessageList(AnswerMessageEntity answerMessageEntity){
        List<AnswerMessageEntity>result=answerMessageEntityMapper.pageQueryAnswerMessageList(answerMessageEntity);
        return result;
    }


    /**
     * 插入答卷信息
     * @param answerMessageEntity
     * @return
     */
    public int addAnswerMessage(AnswerMessageEntity answerMessageEntity){
        int result=answerMessageEntityMapper.insert(answerMessageEntity);
        return result;
    }



    public int calculateAnswerMessage(AnswerMessageEntity answerMessageEntity){
        int result = answerMessageEntityMapper.calculateAnswerMessage(answerMessageEntity);
        return result;
    }

}
