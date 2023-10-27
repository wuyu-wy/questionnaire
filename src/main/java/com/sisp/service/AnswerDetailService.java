package com.sisp.service;


import com.sisp.dao.AnswerDetailEntityMapper;
import com.sisp.dao.entity.AnswerDetailEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnswerDetailService {
    @Autowired
    private AnswerDetailEntityMapper answerDetailEntityMapper;


    /**
     * 查询答卷明细
     * @param answerDetailEntity
     * @return
     */
    public List<AnswerDetailEntity> queryAnswerDetailList(AnswerDetailEntity answerDetailEntity){

        List<AnswerDetailEntity>result=answerDetailEntityMapper.queryAnswerDetailList(answerDetailEntity);
        return result;

    }


    /**
     * 插入答卷明细
     * @param answerDetailEntity
     * @return
     */
    public int addAnswerDetail(AnswerDetailEntity answerDetailEntity){

        int result=answerDetailEntityMapper.insert(answerDetailEntity);
        return result;
    }

}
