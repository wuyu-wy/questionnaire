package com.sisp.dao;


import com.sisp.dao.entity.AnswerDetailEntity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface AnswerDetailEntityMapper {


    /**
     * 查询答卷明细
     * @param answerDetailEntity
     * @return
     */
     List<AnswerDetailEntity>queryAnswerDetailList(AnswerDetailEntity answerDetailEntity);


    /**
     * 插入答卷明细
     * @param answerDetailEntity
     * @return
     */
    int insert(AnswerDetailEntity answerDetailEntity);
}
