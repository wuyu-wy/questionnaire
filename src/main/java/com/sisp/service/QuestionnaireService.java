package com.sisp.service;


import com.sisp.dao.QuestionnaireEntityMapper;
import com.sisp.dao.entity.QuestionnaireEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionnaireService {
    @Autowired
    QuestionnaireEntityMapper questionnaireEntityMapper;

    /**
     * 添加问卷
     * @param questionnaireEntity
     * @return
     */
    public int addQuestionInfo(QuestionnaireEntity questionnaireEntity){
        int result=questionnaireEntityMapper.insert(questionnaireEntity);
        return result;
    }


    /**
     * 查询问卷
     * @param questionnaireEntity
     * @return
     */
    public List<QuestionnaireEntity> queryQuestionnaireList(QuestionnaireEntity questionnaireEntity){
        List<QuestionnaireEntity> result=questionnaireEntityMapper.queryQuestionnaireList(questionnaireEntity);
        return result;
    }


    public int modifyQuestionnaire(QuestionnaireEntity questionnaireEntity){
        int userResult = questionnaireEntityMapper.updateQuestionnaire(questionnaireEntity);
        return userResult;
    }
}
