package com.sisp.dao;

import com.sisp.dao.entity.UserEntity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface UserEntityMapper {

    /**
     * 查询用户列表
     * @return
     */
    List<UserEntity> queryUserList();

    /**
     * 创建用户的基本信息
     * @param userEntity
     * @return
     */
    int insert(UserEntity userEntity);

    /**
     * 根据id删除用户信息
     * @param userEntity
     * @return
     */
    int deleteUserById(UserEntity userEntity);

    /**
     * 编辑用户信息
     * @return
     */
    int updateByPrimaryKeySelective(UserEntity userEntity);

    List<UserEntity> selectUserInfo(UserEntity userEntity);


    /**
     * id查询用户
     * @param userEntity
     * @return
     */
    UserEntity queryUserListById(UserEntity userEntity);
}
