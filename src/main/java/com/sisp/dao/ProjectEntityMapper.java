package com.sisp.dao;

import com.sisp.dao.entity.ProjectEntity;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
@Mapper
public interface ProjectEntityMapper {


    /**
     * 搜索项目
     */
    List<ProjectEntity>queryProjectList(ProjectEntity projectEntity);

    /**
     * 增加数据
     * @param projectEntity
     * @return
     */
    int insert(ProjectEntity projectEntity);


    /**
     * 修改数据
     * @param projectEntity
     * @return
     */
    int updateByPrimaryKeySelective(ProjectEntity projectEntity);


    /**
     * 删除项目
     * @param projectEntity
     * @return
     */
    int deleteProjectById(ProjectEntity projectEntity);


}
