package com.lyl.cloudfactory;


import com.lyl.cloudfactory.dao.UserDao;
import com.lyl.cloudfactory.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest(classes = CloudfactoryApplication.class)
@RunWith(SpringRunner.class)
public class TestUserDao {
    @Autowired
    private UserDao userDao;

    @Test
    public void testSearch(){
       User user= userDao.getUserByAccount("admin");
        System.out.println(user);
    }

}
