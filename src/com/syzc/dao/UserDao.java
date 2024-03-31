package com.syzc.dao;

import com.syzc.entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public interface UserDao{
    public boolean addUser(User user);
    public boolean deleteUser(User user);
    public boolean updateUser(User user);
    public List<User> selectAllUsers(User user);
}


/*public class UserDao {*/
    /*
     * 处理和登录有关的数据库操作
     * 1. 在user表中根据uname和upwd查询用户
     * 2. 如果用户存在，则将其信息封装到User类中返回
     *    如果用户不存在，则返回null
     * */
    /*public User login(String uname, String upwd){
        // 声明JDBC对象
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        User user  = null;
        try {
            // 加载驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
            // 获取连接对象
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/team?serverTimezone=Asia/Shanghai","root","root");
            // 创建SQL命令
            String sql = "select * from member where uname=? and upwd=?";
            // 创建SQL命令对象
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,uname);
            preparedStatement.setString(2,upwd);
            // 执行
            resultSet = preparedStatement.executeQuery();
            // 遍历执行结果
            while (resultSet.next()){
                user = new User();
                user.setUid(resultSet.getInt("uid"));
                user.setUname(resultSet.getString("uname"));
                user.setUpwd(resultSet.getString("upwd"));
            }
        }catch (Exception e){
            e.printStackTrace();
        } finally {
            // 关闭资源
            try {
                resultSet.close();
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return user;
    }

    public List<User> getAllUser(){
        // 声明JDBC对象
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<User> userList  = new ArrayList<>();
        try {
            // 加载驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
            // 获取连接对象
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/team?serverTimezone=Asia/Shanghai","root","root");
            // 创建SQL命令
            String sql = "select * from member";
            // 创建SQL命令对象
            preparedStatement = connection.prepareStatement(sql);
            // 执行
            resultSet = preparedStatement.executeQuery();
            // 遍历执行结果
            while (resultSet.next()){
                User user = new User();
                user.setUid(resultSet.getInt("uid"));
                user.setUname(resultSet.getString("uname"));
                user.setUpwd(resultSet.getString("upwd"));
                userList.add(user);
            }
        }catch (Exception e){
            e.printStackTrace();
        } finally {
            // 关闭资源
            try {
                resultSet.close();
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return userList;
    }
}*/
