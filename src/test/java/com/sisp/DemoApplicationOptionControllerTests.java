package com.sisp;
import com.sisp.beans.HttpResponseEntity;
import com.sisp.controller.OptionController;
import com.sisp.controller.QuestionController;
import com.sisp.dao.entity.OptionEntity;
import com.sisp.dao.entity.QuestionEntity;
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
public class DemoApplicationOptionControllerTests {


    @Resource
    private OptionController optionController;

    Logger log = Logger.getLogger(DemoApplicationOptionControllerTests.class);

    //添加
    @Test
    public void OptionInsertSuccess() throws Exception {
        OptionEntity optionentity = new OptionEntity();
        optionentity.setId("22");
        optionentity.setQuestionId("22");
        HttpResponseEntity httpResponseEntity = optionController.addOptionInfo(optionentity);
    }


    //查询
    @Test
    public void OptionSelectSuccess() throws Exception {
        OptionEntity optionentity = new OptionEntity();
        HttpResponseEntity httpResponseEntity = optionController.queryOptionList(optionentity);
    }
    @Test
    public void OptionSelectFail() throws Exception {
        OptionEntity optionentity = new OptionEntity();
        optionentity.setQuestionId("test");
        HttpResponseEntity httpResponseEntity = optionController.queryOptionList(optionentity);
    }
}
