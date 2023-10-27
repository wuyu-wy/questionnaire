package com.sisp.dao;


import com.sisp.dao.entity.AnswerDetailEntity;
import com.sisp.dao.entity.AnswerMessageEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface AnswerMessageEntityMapper {


    /**
     * 查询答卷信息
     * @return
     */
    List<AnswerMessageEntity>queryAnswerMessageList(AnswerMessageEntity answerMessageEntity);


    /**
     * 查询答卷信息
     * @return
     */
    List<AnswerMessageEntity> pageQueryAnswerMessageList(AnswerMessageEntity answerMessageEntity);


    /**
     * 插入答卷信息
     * @param answerMessageEntity
     * @return
     */
    int insert(AnswerMessageEntity answerMessageEntity);


    /**
     * 计算答卷次数
     * @param answerMessageEntity
     * @return
     */
    int calculateAnswerMessage(AnswerMessageEntity answerMessageEntity);



}
