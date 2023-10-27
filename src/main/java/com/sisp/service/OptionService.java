package com.sisp.service;


import com.sisp.dao.OptionEntityMapper;
import com.sisp.dao.entity.OptionEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OptionService {
    @Autowired
    private OptionEntityMapper optionEntityMapper;


    /**
     * 添加选项
     * @param optionEntity
     * @return
     */
    public int addOptionInfo(OptionEntity optionEntity){
        int result=optionEntityMapper.insert(optionEntity);
        return result;
    }


    /**
     * 查询选项
     * @param optionEntity
     * @return
     */
    public List<OptionEntity> queryOptionList(OptionEntity optionEntity){
        List<OptionEntity>result=optionEntityMapper.queryOptionList(optionEntity);
        return result;
    }


}
