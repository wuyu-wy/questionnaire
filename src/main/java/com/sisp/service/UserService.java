package com.sisp.service;

import com.sisp.common.utils.UUIDUtil;
import com.sisp.dao.UserEntityMapper;
import com.sisp.dao.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserEntityMapper userEntityMapper;

    /**
     * 查询用户列表
     * @param
     * @return
     */
    public List<UserEntity> queryUserList(){
        List<UserEntity> result = userEntityMapper.queryUserList();
        return result;
    }

    /**
     * 创建用户
     * @param userEntity
     * @return
     */
    public int addUserInfo(UserEntity userEntity){
        userEntity.setId(UUIDUtil.getOneUUID());
        int userResult = userEntityMapper.insert(userEntity);
//        if(userResult != 0){
//            return 3;
//        }else{
            return 1;
//        }
    }

    /**
     * 修改信息
     * @param userEntity
     * @return
     */
    public int modifyUserInfo(UserEntity userEntity){
        int userResult = userEntityMapper.updateByPrimaryKeySelective(userEntity);
        return userResult;
    }

    /**
     * 删除用户信息
     * @param userEntity
     * @return
     */
    public int deleteUserById(UserEntity userEntity){
        int userResult = userEntityMapper.deleteUserById(userEntity);
        return userResult;
    }

    /**
     * 用户登录
     * @param userEntity
     * @return
     */
    public List<UserEntity> selectUserInfo(UserEntity userEntity) {
        List<UserEntity> userResult = userEntityMapper.selectUserInfo(userEntity);
        return userResult;
    }


    /**
     * id查询用户
     * @param
     */
    public UserEntity queryUserListById(UserEntity userEntity) {
        UserEntity result = userEntityMapper.queryUserListById(userEntity);
        return  result;
    }
}
