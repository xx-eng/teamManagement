package com.syzc.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL="jdbc:mysql://localhost:3306/team";
    private static final String URL_SETTING = "?useUnicode=true&characterEncoding=UTF-8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Asia/Shanghai";
    private static final String USER="root";
    private static final String PASSWORD="root";
    private static Connection connection;

    public static Connection getConnection(){
//        Connection connection = null;
        try {
            Class.forName(DRIVER);// 用反射加载数据库驱动
            connection = DriverManager.getConnection(URL+URL_SETTING,USER,PASSWORD); // 获取连接对象
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }


    /*
     * 关闭数据库
     * */
    public static void close() {
        if (connection != null) {
            try {
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }


}
