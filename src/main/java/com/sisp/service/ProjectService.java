package com.sisp.service;

import com.sisp.dao.ProjectEntityMapper;
import com.sisp.dao.entity.ProjectEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectService {

    @Autowired
    private ProjectEntityMapper projectEntityMapper;

    /**
     * 查询项目列表
     */
    public List<ProjectEntity> queryProjectList(ProjectEntity projectEntity){
        List<ProjectEntity> result = projectEntityMapper.queryProjectList(projectEntity);
        return result;
    }


    /**
     * 增加项目
     * @param projectEntity
     * @return
     */
    public int addProjectInfo(ProjectEntity projectEntity){
        int result=projectEntityMapper.insert(projectEntity);
        return result;
    }


    /**
     * 修改项目
     * @param projectEntity
     * @return
     */
    public int modifyProjectInfo(ProjectEntity projectEntity){
        int result=projectEntityMapper.updateByPrimaryKeySelective(projectEntity);
        return result;
    }


    public int deleteProjectById(ProjectEntity projectEntity){
        int result=projectEntityMapper.deleteProjectById(projectEntity);
        return result;
    }
}
