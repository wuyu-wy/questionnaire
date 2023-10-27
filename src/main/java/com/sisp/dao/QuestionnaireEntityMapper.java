package com.sisp.dao;


import com.sisp.dao.entity.QuestionnaireEntity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface QuestionnaireEntityMapper {


    /**
     * 插入问卷
     * @param questionnaireEntity
     * @return
     */
    int insert(QuestionnaireEntity questionnaireEntity);


    /**
     * 查询问卷
     * @param questionnaireEntity
     * @return
     */
    List<QuestionnaireEntity> queryQuestionnaireList(QuestionnaireEntity questionnaireEntity);

    /**
     * 更新问卷
     * @param questionnaireEntity
     * @return
     */
    int updateQuestionnaire(QuestionnaireEntity questionnaireEntity);
}
