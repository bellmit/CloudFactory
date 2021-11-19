package com.lyl.cloudfactory.service.impl;

import com.lyl.cloudfactory.entity.User;

import java.util.List;

public interface UserService {
    User getUserByID(String userID);
    User getUserByAccount(String userAccount);
    User getUserByAccountAndPassword(String userAccount, String password);
    List<User> getUserList();
    int addUser(User user);
    int deleteUser(String account);
    int updateUser(User user);
}
