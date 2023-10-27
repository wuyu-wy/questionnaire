package com.sisp.service;


import com.sisp.dao.QuestionEntityMapper;
import com.sisp.dao.entity.ProjectEntity;
import com.sisp.dao.entity.QuestionEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {

    @Autowired
    private QuestionEntityMapper questionEntityMapper;

    /**
     * 添加问题
     * @param questionEntity
     * @return
     */
    public int addQuestionInfo(QuestionEntity questionEntity){
        int result=questionEntityMapper.insert(questionEntity);
        return result;
    }

    /**
     * 查询问题
     * @param questionEntity
     * @return
     */
    public List<QuestionEntity> queryQuestionList(QuestionEntity questionEntity){
        List<QuestionEntity> result=questionEntityMapper.queryQuestionList(questionEntity);
        return result;
    }

}
