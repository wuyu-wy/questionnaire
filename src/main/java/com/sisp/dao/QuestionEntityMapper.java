package com.sisp.dao;


import com.sisp.dao.entity.QuestionEntity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface QuestionEntityMapper {

    /**
     * 插入问题
     * @param questionEntity
     * @return
     */
    int insert(QuestionEntity questionEntity);


    /**
     * 查询问题
     * @param questionEntity
     * @return
     */
    List<QuestionEntity> queryQuestionList(QuestionEntity questionEntity);
}
