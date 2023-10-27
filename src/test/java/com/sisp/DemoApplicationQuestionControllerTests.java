package com.sisp;
import com.sisp.beans.HttpResponseEntity;
import com.sisp.controller.QuestionController;
import com.sisp.controller.QuestionnaireController;
import com.sisp.controller.UserController;
import com.sisp.dao.entity.ProjectEntity;
import com.sisp.dao.entity.QuestionEntity;
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
public class DemoApplicationQuestionControllerTests {
    @Resource
    private QuestionController questionController;

    Logger log = Logger.getLogger(DemoApplicationQuestionControllerTests.class);


    //查找问题测试
    @Test
    public void QueSelectSuccess() throws Exception {
        QuestionEntity questionentity = new QuestionEntity();
        HttpResponseEntity httpResponseEntity = questionController.queryQuestionList(questionentity);
    }
    @Test
    public void QueSelectFail() throws Exception {
        QuestionEntity questionentity = new QuestionEntity();
        questionentity.setQuestionnaireId("testFail");
        HttpResponseEntity httpResponseEntity = questionController.queryQuestionList(questionentity);
    }

    //添加测试
    @Test
    public void QueinsertSuccess() throws Exception {
        QuestionEntity questionentity = new QuestionEntity();
        questionentity.setId("99");
        questionentity.setType("2");
        questionentity.setQuestionnaireId("22");
        HttpResponseEntity httpResponseEntity = questionController.addQuestionInfo(questionentity);
    }
    public void QueinsertFail() throws Exception {
        QuestionEntity questionentity = null;
        HttpResponseEntity httpResponseEntity = questionController.addQuestionInfo(questionentity);
    }


}
