package com.syzc.service;

import com.syzc.entity.User;

import java.util.List;

public interface UserService {
    public User login(User user);
    public List<User> getUserList();
    public List<User> getUser(String uname);
    public boolean addUser(User user);
    public boolean deleteUser(User user);
    public boolean changeUserInfo(User user);
}
