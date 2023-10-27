package com.sisp;
import com.sisp.beans.HttpResponseEntity;
import com.sisp.controller.AnswerDetailController;
import com.sisp.controller.OptionController;
import com.sisp.dao.entity.AnswerDetailEntity;
import com.sisp.dao.entity.OptionEntity;
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
public class DemoApplicationAnswerDetailControllerTests {

    @Resource
    private AnswerDetailController answerDetailController;

    Logger log = Logger.getLogger(DemoApplicationAnswerDetailControllerTests.class);

    //添加回答详细信息测试
    @Test
    public void AnswerDetailInsertSuccess() throws Exception {
        AnswerDetailEntity answerDetailEntity = new AnswerDetailEntity();
        answerDetailEntity.setId("22");
        answerDetailEntity.setAnswerMessageId("22");
        answerDetailEntity.setOptionId("22");
        HttpResponseEntity httpResponseEntity = answerDetailController.addAnswerDetail(answerDetailEntity);
    }
    @Test
    public void AnswerDetailInsertFail() throws Exception {
        AnswerDetailEntity answerDetailEntity = new AnswerDetailEntity();
        answerDetailEntity.setId("22");
        HttpResponseEntity httpResponseEntity = answerDetailController.addAnswerDetail(answerDetailEntity);
    }


    //查询回答测试
    @Test
    public void AnswerDetailSelectSuccess() throws Exception {
        AnswerDetailEntity answerDetailEntity = new AnswerDetailEntity();
        HttpResponseEntity httpResponseEntity = answerDetailController.queryAnswerDetailList(answerDetailEntity);
    }
    @Test
    public void AnswerDetailSelectFail() throws Exception {
        AnswerDetailEntity answerDetailEntity = new AnswerDetailEntity();
        answerDetailEntity.setAnswerMessageId("test");
        HttpResponseEntity httpResponseEntity = answerDetailController.queryAnswerDetailList(answerDetailEntity);
    }
}
