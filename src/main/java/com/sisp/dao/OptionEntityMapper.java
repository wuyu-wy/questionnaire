package com.sisp.dao;


import com.sisp.dao.entity.OptionEntity;
import com.sisp.dao.entity.QuestionEntity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface OptionEntityMapper {


    /**
     * 插入选项
     * @param optionEntity
     * @return
     */
    int insert(OptionEntity optionEntity);


    /**
     * 查询选项
     * @param optionEntity
     * @return
     */
    List<OptionEntity> queryOptionList(OptionEntity optionEntity);
}
