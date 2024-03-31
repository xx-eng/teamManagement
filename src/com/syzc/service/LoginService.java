package com.syzc.service;

import com.syzc.dao.UserDao;
import com.syzc.entity.User;

import java.util.List;

public interface LoginService {
    /*public User login(String uname, String upwd){
        UserDao userDao = new UserDao();
        return userDao.login(uname,upwd);
    }
    public List<User> getAllUser(){
        UserDao userDao = new UserDao();
        return userDao.getAllUser();
    }*/
    User checkLoginService(String uname,String pwd);
}
