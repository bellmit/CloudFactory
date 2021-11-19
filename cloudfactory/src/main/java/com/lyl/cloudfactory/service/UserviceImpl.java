package com.lyl.cloudfactory.service;

import com.lyl.cloudfactory.dao.UserDao;
import com.lyl.cloudfactory.entity.User;
import com.lyl.cloudfactory.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class UserviceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User getUserByID(String userID) {
        User user=userDao.getUserByID(userID);
        return user;
    }

    @Override
    public User getUserByAccount(String userAccount) {
        User user=userDao.getUserByAccount(userAccount);
        return user;
    }

    @Override
    public User getUserByAccountAndPassword(String userAccount, String password) {
        User user=userDao.getUserByAccountAndPassword(userAccount,password);
        return user;
    }

    @Override
    public List<User> getUserList() {
        List<User> userList=userDao.getUserList();
        return userList;
    }

    @Override
    public int addUser(User user) {
       int result=userDao.addUser(user);
        return result;
    }

    @Override
    public int deleteUser(String account) {
        int result=userDao.deleteUser(account);
        return result;
    }

    @Override
    public int updateUser(User user) {
        int result=userDao.updateUser(user);
        return result;
    }
}
