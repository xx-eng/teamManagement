package com.syzc.db;
import java.sql.*;


public class dbtest {
    public static void main(String[] args) throws SQLException {
        //声明JDBC对象
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try{
            //加载驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/team","root","root");
            //创建SQL命令
            //String sql = "select * from member where uname='123456'";
            String sql = "update member set uemail='87064@163.com' where uid=7";
            //创建SQL命令对象
            preparedStatement = connection.prepareStatement(sql);
            //resultSet = preparedStatement.executeQuery();
           preparedStatement.executeUpdate();

            /*String sql1 = "select * from member";
            preparedStatement = connection.prepareStatement(sql1);
            resultSet = preparedStatement.executeQuery();
            //遍历执行结果
            while(resultSet.next()){
                System.out.println(resultSet.getInt("uid")+","
                        +resultSet.getString("uname")+":"+resultSet.getString("upwd")+","
                        +resultSet.getString("uemail")+","+resultSet.getString("utele"));
            }*/
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            //关闭资源
            try{
                //resultSet.close();
                preparedStatement.close();
                connection.close();

            } catch (SQLException e){
                e.printStackTrace();
            }
        }
    }

}
