package com.sisp;

import com.sisp.beans.HttpResponseEntity;
import com.sisp.dao.entity.InfoEntity;
import org.apache.log4j.Logger;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

@RunWith(SpringRunner.class)
@SpringBootTest
public class InfoTests {
    @Resource
    private InfoController infoController;

    Logger log = Logger.getLogger(InfoTests.class);

    @Test
    public void queryInfo() throws Exception{
        InfoEntity infoEntity = new InfoEntity();
        infoEntity.setArticle_name("不同");
        HttpResponseEntity httpResponseEntity = infoController.queryInfoList(infoEntity);

    }







}
