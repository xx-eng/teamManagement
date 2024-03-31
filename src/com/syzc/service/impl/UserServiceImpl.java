package com.syzc.service.impl;

import com.syzc.dao.Impl.UserDaoImpl;
import com.syzc.dao.UserDao;
import com.syzc.entity.User;
import com.syzc.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {
    private UserDao userDao;

    public UserServiceImpl() { this.userDao = new UserDaoImpl();    }


    @Override
    public User login(User user) {
        List<User> userList = this.userDao.selectAllUsers(user);
        if(userList.size()>0){
            return userList.get(0);
        }else{
            return null;
        }
    }

    @Override
    public List<User> getUserList() {
        return this.userDao.selectAllUsers(null);
    }

    @Override
    public List<User> getUser(String uname) {
        User user = new User();
        user.setUname(uname);
        return this.userDao.selectAllUsers(user);
    }

    @Override
    public boolean addUser(User user) {
        return this.userDao.addUser(user);
    }

    @Override
    public boolean deleteUser(User user) {
        return this.userDao.deleteUser(user);
    }

    @Override
    public boolean changeUserInfo(User user) {
        return this.userDao.updateUser(user);
    }
}
