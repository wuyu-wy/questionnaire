package com.sisp.controller;

import com.sisp.beans.HttpResponseEntity;
import com.sisp.dao.entity.UserEntity;
import com.sisp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/admin")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 登录
     * @param userEntity
     * @return
     */
    @RequestMapping(value = "/userLogin",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity userLogin(@RequestBody UserEntity userEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        List<UserEntity> hasUser = userService.selectUserInfo(userEntity);
        if(CollectionUtils.isEmpty(hasUser)){
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("用户名或密码错误");
        }else{
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(hasUser.get(0));
            httpResponseEntity.setMessage("登录成功");
        }

        return httpResponseEntity;
    }


    /**
     * 用户列表查询
     * @param userEntity
     * @return
     */
    @RequestMapping(value = "/queryUserList",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity queryUserList(@RequestBody UserEntity userEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        List<UserEntity> hasUser = userService.queryUserList();

            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(hasUser);
            httpResponseEntity.setMessage("查询成功");


        return httpResponseEntity;
    }

    /**
     * 添加
     * @param userEntity
     * @return
     */
    @RequestMapping(value = "/addUserInfo",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity addUser(@RequestBody UserEntity userEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        int result = userService.addUserInfo(userEntity);
        if(result!=0){
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(result);
            httpResponseEntity.setMessage("创建成功");
        }

        return httpResponseEntity;
    }

    /**
     * 用户修改
     * @param userEntity
     * @return
     */
    @RequestMapping(value = "/modifyUserInfo",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity modifyUser(@RequestBody UserEntity userEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        int result = userService.modifyUserInfo(userEntity);
        if(result!=0){
            httpResponseEntity.setCode("10");
            httpResponseEntity.setData(result);
            httpResponseEntity.setMessage("修改成功");
        }else{
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("修改失败");
        }

        return httpResponseEntity;
    }


    /**
     * 用户删除
     * @param userEntity
     * @return
     */
    @RequestMapping(value = "/deleteUser",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity deleteUser(@RequestBody UserEntity userEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        int result = userService.deleteUserById(userEntity);
        if(result!=0){
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(result);
            httpResponseEntity.setMessage("删除成功");
        }else{
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("删除失败");
        }

        return httpResponseEntity;
    }
}
