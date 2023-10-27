package com.sisp;


import com.sisp.beans.HttpResponseEntity;
import com.sisp.controller.ProjectController;
import com.sisp.dao.entity.ProjectEntity;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.io.InputStream;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationProjectControllerTests {
    @Resource
    private ProjectController projectController;

    Logger log = Logger.getLogger(DemoApplicationProjectControllerTests.class);

    //查
    @Test
    public void ProSelectSuccess() throws Exception {
        ProjectEntity projectentity = new ProjectEntity();
        projectentity.setProjectName(null);
        HttpResponseEntity httpResponseEntity = projectController.queryProjectList(projectentity);
    }

    @Test
    public void ProSelectFail() throws Exception {
        ProjectEntity projectentity = new ProjectEntity();
        projectentity.setProjectName("ssss");
        HttpResponseEntity httpResponseEntity = projectController.queryProjectList(projectentity);
    }

    @Test
    public void ProSelectNull() throws Exception {
        ProjectEntity projectentity = null;
        HttpResponseEntity httpResponseEntity = projectController.queryProjectList(projectentity);
    }

    @Test
    public void ProInsertSuccess() throws Exception {
        ProjectEntity projectentity = new ProjectEntity();
//        projectentity.setId(UUIDUtil.getOneUUID());
        projectentity.setId("test");
        projectentity.setProjectName("test");
        projectentity.setProjectContent("test");
        HttpResponseEntity httpResponseEntity = projectController.addProjectInfo(projectentity);
    }

//    @Test
//    public void ProInsertFail() throws Exception {
//        ProjectEntity projectentity = new ProjectEntity();
//        projectentity.setId("1");
//        projectentity.setProjectName("1");
//        projectentity.setProjectContent("1");
//        HttpResponseEntity httpResponseEntity = projectController.addProjectInfo(projectentity);
//    }
    @Test
    public void ProInsertNull() throws Exception {
        ProjectEntity projectentity = null;
        HttpResponseEntity httpResponseEntity = projectController.addProjectInfo(projectentity);
    }



    @Test
    public void ProModifySuccess() throws Exception {
        ProjectEntity projectentity = new ProjectEntity();
        projectentity.setId("9c683344c6834c5abee0044299bba93f");
        projectentity.setProjectName("3");
        projectentity.setProjectContent("3");
        HttpResponseEntity httpResponseEntity = projectController.modifyProjectInfo(projectentity);
    }
    @Test
    public void ProModifyFail() throws Exception {
        ProjectEntity projectentity = new ProjectEntity();
        projectentity.setId("3");
        projectentity.setProjectName("3");
        projectentity.setProjectContent("3");
        HttpResponseEntity httpResponseEntity = projectController.modifyProjectInfo(projectentity);
    }





    //删出测试
    @Test
    public void ProDeleteSuccess() throws Exception {
        ProjectEntity projectentity = new ProjectEntity();
        projectentity.setId("24afb33d4a6549e48930d24e05f7edf1");
        HttpResponseEntity httpResponseEntity = projectController.deleteProjectById(projectentity);
    }
    @Test
    public void ProDeleteFail() throws Exception {
        ProjectEntity projectentity = new ProjectEntity();
        projectentity.setId("999");
        HttpResponseEntity httpResponseEntity = projectController.deleteProjectById(projectentity);
    }

    @Test
    public void ProDeleteNull() throws Exception {
        ProjectEntity projectentity = null;
        HttpResponseEntity httpResponseEntity = projectController.deleteProjectById(projectentity);
    }








}
