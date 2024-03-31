package com.syzc.dao.Impl;

import com.syzc.dao.UserDao;
import com.syzc.db.DBConnection;
import com.syzc.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public boolean addUser(User user) {
        boolean flag = false;
        List<User> users = selectAllUsers(null);
        for(User us:users){
            if(us.getUname().equals(user.getUname())){
                return false;
            }
        }

        Connection conn = DBConnection.getConnection();
        PreparedStatement ptmt = null;
        String sql = "insert into member(uid,uname,upwd,uemail,utele) values(?,?,?,?,?)";
        try{
            ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1,user.getUid());
            ptmt.setString(2,user.getUname());
            ptmt.setString(3,user.getUpwd());
            ptmt.setString(4,user.getUemail());
            ptmt.setString(5,user.getUtele());
            if(ptmt.executeUpdate()>0){
                flag=true;
            }
            ptmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean deleteUser(User user) {
        boolean flag = false;
        Connection conn = DBConnection.getConnection();
        PreparedStatement ptmt = null;
        String sql="delete from member where uid=?"; //UID
        try{
            ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1,user.getUid());
            if(ptmt.executeUpdate()>0){
                flag = true;
            }
            ptmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean updateUser(User user) {
        boolean flag = false;
        Connection conn = DBConnection.getConnection();
        PreparedStatement ptmt = null;
        try{  //可不可以用几个if 无else来更新
            /*if(user.getUname() !=null && user.getUpwd() != null){
                String sql = "update member uname=?,upwd=? where uid=?";
                ptmt = conn.prepareStatement(sql);
                ptmt.setString(1,user.getUname());
                ptmt.setString(2,user.getUpwd());
                ptmt.setInt(3,user.getUid());
            }else if(user.getUname() != null){
                String sql = "update member uname=? where uid=?";
                ptmt = conn.prepareStatement(sql);
                ptmt.setString(1,user.getUname());
                ptmt.setInt(2,user.getUid());
            }else if(user.getUpwd()!=null){
                String sql = "update member upwd=? where uid=?";
                ptmt = conn.prepareStatement(sql);
                ptmt.setString(1,user.getUpwd());
                ptmt.setInt(2,user.getUid());
            }*/
            if(user.getUname() !=null && user.getUname() != ""){
                String sql = "update member set uname=? where uid=?";
                ptmt = conn.prepareStatement(sql);
                ptmt.setString(1,user.getUname());
                ptmt.setInt(2,user.getUid());
            }
            if(user.getUpwd() !=null && user.getUpwd() != ""){

                String sql = "update member set upwd=? where uid=?";
                ptmt = conn.prepareStatement(sql);
                ptmt.setString(1,user.getUpwd());
                ptmt.setInt(2,user.getUid());
            }
            if(user.getUemail() !=null && user.getUemail() != ""){
                String sql = "update member set uemail=? where uid=?";
                ptmt = conn.prepareStatement(sql);
                ptmt.setString(1,user.getUemail());
                ptmt.setInt(2,user.getUid());
            }
            if(user.getUtele() !=null && user.getUtele()!= ""){
                String sql = "update member set utele=? where uid=?";
                ptmt = conn.prepareStatement(sql);
                ptmt.setString(1,user.getUtele());
                ptmt.setInt(2,user.getUid());
            }
            assert ptmt != null;
            if(ptmt.executeUpdate()>0){
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public List<User> selectAllUsers(User user) {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ptmt = null;
        ResultSet resultSet = null;
        List<User> userList = new ArrayList<>();
        User exp = new User();
        String sql="";
        try{

            if(user!=null){

                sql = "select * from member where uname = ?";
                ptmt = conn.prepareStatement(sql);
                ptmt.setString(1,user.getUname());

            }else{

                sql = "select * from member order by uid ";
                ptmt = conn.prepareStatement(sql);
            }

            resultSet = ptmt.executeQuery();
            while(resultSet.next()){
                User user1 = new User();
                user1.setUid(resultSet.getInt("uid"));
                user1.setUname(resultSet.getString("uname"));
                user1.setUpwd(resultSet.getString("upwd"));
                user1.setUemail(resultSet.getString("uemail"));
                user1.setUtele(resultSet.getString("utele"));
                userList.add(user1);
            }
            ptmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
}
