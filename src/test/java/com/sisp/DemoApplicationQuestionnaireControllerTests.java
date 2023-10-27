package com.sisp;
import com.sisp.beans.HttpResponseEntity;
import com.sisp.controller.QuestionnaireController;
import com.sisp.controller.UserController;
import com.sisp.dao.entity.ProjectEntity;
import com.sisp.dao.entity.QuestionnaireEntity;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;
//import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.CollectionUtils;
import org.junit.jupiter.api.Test;
import javax.annotation.Resource;
import java.io.InputStream;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationQuestionnaireControllerTests {

    @Resource
    private QuestionnaireController questionnaireController;

    Logger log = Logger.getLogger(DemoApplicationQuestionnaireControllerTests.class);


    //查询问卷测试
    @Test
    public void QueSelectSuccess() throws Exception {
        QuestionnaireEntity questionnaireentity = new QuestionnaireEntity();
        HttpResponseEntity httpResponseEntity = questionnaireController.queryQuestionnaireList(questionnaireentity);
    }
    @Test
    public void QueSelectFail() throws Exception {
        //查不到信息
        QuestionnaireEntity questionnaireentity = new QuestionnaireEntity();
        questionnaireentity.setId("123");
        HttpResponseEntity httpResponseEntity = questionnaireController.queryQuestionnaireList(questionnaireentity);
    }


    //添加问卷测试
    @Test
    public void QueInsertSuccess() throws Exception {
        QuestionnaireEntity questionnaireentity = new QuestionnaireEntity();
//        projectentity.setId(UUIDUtil.getOneUUID());
        questionnaireentity.setId("test");
        questionnaireentity.setSurveyName("test");
        questionnaireentity.setSurveyDescription("test");
        HttpResponseEntity httpResponseEntity = questionnaireController.addQuestionnaireInfo(questionnaireentity);
    }

    public void QueInsertFail() throws Exception {
        QuestionnaireEntity questionnaireentity = null;
        HttpResponseEntity httpResponseEntity = questionnaireController.addQuestionnaireInfo(questionnaireentity);
    }



    //发布问卷测试
    @Test
    public void QueReleaseSuccess() throws Exception {
        QuestionnaireEntity questionnaireentity = new QuestionnaireEntity();
        //在这里设置数据库中的问卷id
        questionnaireentity.setId("c48c026d55f345448780579b9bc28b10");
        HttpResponseEntity httpResponseEntity = questionnaireController. releaseQuestionnaireList(questionnaireentity);
    }

    @Test
    public void QueReleaseFail() throws Exception {
        QuestionnaireEntity questionnaireentity = new QuestionnaireEntity();
        HttpResponseEntity httpResponseEntity = questionnaireController. releaseQuestionnaireList(questionnaireentity);
    }


    //删除问卷测试
    @Test
    public void QueDeleteSuccess() throws Exception {
        QuestionnaireEntity questionnaireentity = new QuestionnaireEntity();
        questionnaireentity.setId("1461fdbb6e3143789e7912ee0ee77029");

        HttpResponseEntity httpResponseEntity = questionnaireController.deleteQuestionnaire(questionnaireentity);
    }
    @Test
    public void QueDeleteFail1() throws Exception {
        QuestionnaireEntity questionnaireentity = new QuestionnaireEntity();
        HttpResponseEntity httpResponseEntity = questionnaireController.deleteQuestionnaire(questionnaireentity);
    }
    @Test
    public void QueDeleteFail2() throws Exception {
        QuestionnaireEntity questionnaireentity = new QuestionnaireEntity();
        questionnaireentity.setId("1");
        HttpResponseEntity httpResponseEntity = questionnaireController.deleteQuestionnaire(questionnaireentity);
    }

    @Test
    public void QueDelete1() throws Exception {
        QuestionnaireEntity questionnaireentity = new QuestionnaireEntity();
        questionnaireentity.setId("f5dba914e17043dd905f8f5efb8257fb");
        HttpResponseEntity httpResponseEntity = questionnaireController.deleteQuestionnaire(questionnaireentity);
    }
}
