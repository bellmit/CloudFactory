package com.lyl.cloudfactory.dao;

import com.lyl.cloudfactory.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    User getUserByID(String userID);
    User getUserByAccount(String account);
    User getUserByAccountAndPassword(@Param("account") String account, @Param("password") String password);
    List<User> getUserList();
    int addUser(User user);
    int deleteUser(String account);
    int updateUser(User user);
}
