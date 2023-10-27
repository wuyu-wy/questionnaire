package com.sisp;
import com.sisp.beans.HttpResponseEntity;
import com.sisp.controller.AnswerDetailController;
import com.sisp.controller.AnswerMessageController;
import com.sisp.dao.AnswerMessageEntityMapper;
import com.sisp.dao.entity.AnswerDetailEntity;
import com.sisp.dao.entity.AnswerMessageEntity;
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
import java.util.Optional;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationAnswerMessageControllerTests {

    @Resource
    private AnswerMessageController answerMessageController;

    Logger log = Logger.getLogger(DemoApplicationAnswerMessageControllerTests.class);


    //添加回答信息
    @Test
    public void AnswerMessageInsertSuccess() throws Exception {
        AnswerMessageEntity answerMassageEntity = new AnswerMessageEntity();
        answerMassageEntity.setId("test");
        answerMassageEntity.setQuestionnaireId("test");
        answerMassageEntity.setQuestionnaireName("test");
        HttpResponseEntity httpResponseEntity = answerMessageController.addAnswerMessage(answerMassageEntity);
    }


    //分页查询信息
    @Test
    public void PageAnswerMessageSelectSuccess() throws Exception {
        AnswerMessageEntity answerMassageEntity = new AnswerMessageEntity();
        answerMassageEntity.setAnswererId("1");
        answerMassageEntity.setAnswererName("test");
        answerMassageEntity.setOffset(1);
        answerMassageEntity.setId("026676ec3c06494db79ec1da84dce7d6");
        answerMassageEntity.setProjectId("1eb4c931967547b098b5cc6efa6a123d");
        answerMassageEntity.setPageSize(1);
        HttpResponseEntity httpResponseEntity = answerMessageController.pageQueryAnswerMessageList(answerMassageEntity);
    }
    //分页查询信息
    @Test
    public void PageAnswerMessageSelectFail() throws Exception {
        AnswerMessageEntity answerMassageEntity = new AnswerMessageEntity();
        answerMassageEntity.setOffset(1);
        answerMassageEntity.setPageSize(1);
        HttpResponseEntity httpResponseEntity = answerMessageController.pageQueryAnswerMessageList(answerMassageEntity);
    }

    //查询信息测试
    @Test
    public void AnswerMessageSelectSuccess() throws Exception {
        AnswerMessageEntity answerMassageEntity = new AnswerMessageEntity();
        HttpResponseEntity httpResponseEntity = answerMessageController.queryAnswerMessageList(answerMassageEntity);
    }
    @Test
    public void AnswerMessageSelectFail() throws Exception {
        AnswerMessageEntity answerMassageEntity = new AnswerMessageEntity();
        answerMassageEntity.setProjectId("test");
        HttpResponseEntity httpResponseEntity = answerMessageController.queryAnswerMessageList(answerMassageEntity);
    }


    //个性化组卷测试
    @Test
    public void addAnswerMessageGroupFail(){
        AnswerMessageEntity answerMassageEntity = new AnswerMessageEntity();
        answerMassageEntity.setAnswererId("1");
        answerMassageEntity.setQuestionnaireId("b88cfdaed3304cbf9b9a9bb1d4822bed");
        HttpResponseEntity httpResponseEntity = answerMessageController.addAnswerMessage(answerMassageEntity);
    }
    @Test
    public void addAnswerMessageTimesFail(){
        AnswerMessageEntity answerMassageEntity = new AnswerMessageEntity();
        answerMassageEntity.setAnswererId("1");
        answerMassageEntity.setQuestionnaireId("f5dba914e17043dd905f8f5efb8257fb");
        HttpResponseEntity httpResponseEntity = answerMessageController.addAnswerMessage(answerMassageEntity);
    }
    @Test
    public void addAnswerMessageTimeBeforeFail(){
        AnswerMessageEntity answerMassageEntity = new AnswerMessageEntity();
        answerMassageEntity.setAnswererId("1");
        answerMassageEntity.setQuestionnaireId("e7cb62ee815141c68075d925278abd85");
        HttpResponseEntity httpResponseEntity = answerMessageController.addAnswerMessage(answerMassageEntity);
    }
    @Test
    public void addAnswerMessageTimeAfterFail(){
        AnswerMessageEntity answerMassageEntity = new AnswerMessageEntity();
        answerMassageEntity.setAnswererId("1");
        answerMassageEntity.setQuestionnaireId("1271c4afc1a7476596be1da91ac9b4c3");
        HttpResponseEntity httpResponseEntity = answerMessageController.addAnswerMessage(answerMassageEntity);
    }
}
