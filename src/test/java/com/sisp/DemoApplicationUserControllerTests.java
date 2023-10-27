package com.sisp;

import com.sisp.beans.HttpResponseEntity;
import com.sisp.controller.UserController;
import com.sisp.dao.entity.UserEntity;
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
import java.util.Date;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationUserControllerTests {
    @Resource
    private UserController userController;

    Logger log = Logger.getLogger(DemoApplicationUserControllerTests.class);

    //用户登录测试
    @Test
    public void testUserLogin1() throws Exception {
        UserEntity userEntity = null;
        HttpResponseEntity httpResponseEntity = userController.userLogin(userEntity);
    }
    @Test
    public void testUserLogin2() throws Exception {
        UserEntity userEntity = new UserEntity();
        userEntity.setUsername("admin");
        userEntity.setPassword("123");
        HttpResponseEntity httpResponseEntity = userController.userLogin(userEntity);
        log.info("--结果--");
    }
    @Test
    public void testUserLogin3() throws Exception {
        UserEntity userEntity = new UserEntity();
        //设置不存在的值
        userEntity.setUsername("nonexistent");
        userEntity.setPassword("password");
        HttpResponseEntity httpResponseEntity = userController.userLogin(userEntity);
    }


    //查询列表测试
    @Test
    //查到了
    public void testQueryUserList1() throws Exception{
        UserEntity userEntity = new UserEntity();
        userEntity.setUsername("admin");
        userEntity.setPassword("123");
        HttpResponseEntity httpResponseEntity = userController.queryUserList(userEntity);
        log.info("--结果--");
    }
    @Test
    //为空
    public void testQueryUserList2() throws Exception{
        UserEntity userEntity = null;
        HttpResponseEntity httpResponseEntity = userController.queryUserList(userEntity);
        log.info("--结果--");
    }
    @Test
    //两个if
    public void testQueryUserList3() throws Exception{
        UserEntity userEntity = new UserEntity();
        HttpResponseEntity httpResponseEntity = userController.queryUserList(userEntity);
        log.info("--结果--");
    }
    @Test
    //没查到
    public void testQueryUserList4() throws Exception{
        UserEntity userEntity = new UserEntity();
        userEntity.setUsername("test");
        userEntity.setPassword("test");
        HttpResponseEntity httpResponseEntity = userController.queryUserList(userEntity);
        log.info("--结果--");
    }



    //新增用户测试
    @Test
    //新增一个用户123
    public void testAddUserInfo1() throws Exception{
        UserEntity userEntity = new UserEntity();
        userEntity.setId("test");
        Date myDate1 = new Date(2023 - 1900, 5, 19, 2, 12, 3);
        Date myDate2 = new Date(2023 - 1900, 5, 19, 2, 12, 4);
        userEntity.setUsername("123");
        userEntity.setPassword("123");
        userEntity.setStartTime(myDate1);
        userEntity.setStopTime(myDate2);
        HttpResponseEntity httpResponseEntity = userController.addUser(userEntity);
        log.info("--结果--");
    }

    @Test
    //新增一个null
    public void testAddUserInfo2() throws Exception{
        UserEntity userEntity = null;
        HttpResponseEntity httpResponseEntity = userController.addUser(userEntity);
        log.info("--结果--");
    }
//    @Test
//    public void testAddUserInfo3() throws Exception{
//        UserEntity userEntity = new UserEntity();
//        Date myDate1 = new Date(2023 - 1900, 5, 19, 2, 12, 3);
//        Date myDate2 = new Date(2023 - 1900, 5, 19, 2, 12, 4);
//        userEntity.setStartTime(myDate1);
//        userEntity.setStopTime(myDate2);
//        HttpResponseEntity httpResponseEntity = userController.addUser(userEntity);
//        log.info("--结果--");
//    }


    //修改用户信息测试
    @Test
    public void testModifyUser1() throws Exception{
        UserEntity userEntity = new UserEntity();
        userEntity.setId("20e698d2d438486fa7fcc4377f65f768");
        HttpResponseEntity httpResponseEntity = userController.modifyUser(userEntity);

    }

    @Test
    public void testModifyUser2() throws Exception{
        UserEntity userEntity = null;
        HttpResponseEntity httpResponseEntity = userController.modifyUser(userEntity);

    }
    @Test
    public void testModifyUser3() throws Exception{
        UserEntity userEntity = new UserEntity();
        userEntity.setUsername("aaa");
        userEntity.setPassword("123");
        HttpResponseEntity httpResponseEntity = userController.modifyUser(userEntity);
    }


    //用户删除测试
    @Test
    public void testDeleteUser1() throws Exception{
        UserEntity userEntity = new UserEntity();
        userEntity.setId("e8d16c4fa7cf4112a57658b795d9dded");
        userEntity.setUsername("15879779");
        HttpResponseEntity httpResponseEntity = userController.deleteUser(userEntity);

    }
    @Test
    public void testDeleteUser4() throws Exception{
        UserEntity userEntity = new UserEntity();
        userEntity.setId("20e698d2d438486fa7fcc4377f65f768");
        userEntity.setUsername("123");
        HttpResponseEntity httpResponseEntity = userController.deleteUser(userEntity);

    }
    @Test
    public void testDeleteUser2() throws Exception{
        UserEntity userEntity = null;
        HttpResponseEntity httpResponseEntity = userController.deleteUser(userEntity);

    }
    @Test
    public void testDeleteUser3() throws Exception{
        UserEntity userEntity = new UserEntity();
        userEntity.setId("test");
        HttpResponseEntity httpResponseEntity = userController.deleteUser(userEntity);

    }
}
