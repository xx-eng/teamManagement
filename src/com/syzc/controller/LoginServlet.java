package com.syzc.controller;

import com.syzc.entity.User;
import com.syzc.service.LoginService;
import com.syzc.service.UserService;
import com.syzc.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class LoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        //获取请求信息
        /*String uname = req.getParameter("uname");
        String upwd = req.getParameter("upwd");
        System.out.println(uname+":"+upwd);
        if (uname==null || upwd == null){
            resp.sendRedirect("/teamManagement/login.jsp");
        } else if (uname.equals("") || upwd.equals("")){
            resp.sendRedirect("/teamManagement/login.jsp");
        } else {
            // 处理请求信息
            LoginService loginService = new LoginService();
            User login = loginService.login(uname, upwd);
            System.out.println(login);
            // 响应处理结果
            if (login!=null){
                resp.sendRedirect("/teamManagement/main.jsp");
            } else {
                resp.sendRedirect("/teamManagement/main.jsp");
            }
        }*/
        String uname = req.getParameter("uname");
        String upwd = req.getParameter("upwd");
        UserService userS = new UserServiceImpl();
        User user1 = userS.getUser(uname).get(0);
        int uid = user1.getUid();
        // 处理请求信息
        User user = new User();
        user.setUid(uid);
        user.setUname(uname);
        user.setUpwd(upwd);
        System.out.println(user);
        // 获取业务层对象
        UserService userService = new UserServiceImpl();
        User login = userService.login(user);
        System.out.println(login);


        // 响应处理结果
        if (login!=null){// 登录成功，跳转到主页
            HttpSession session = req.getSession();
            session.setAttribute("user",user);
            // 重定向到主页
            resp.sendRedirect("/teamManagement/main.jsp");
        } else {
            // 使用请求转发
            resp.sendRedirect("/teamManagement/login.jsp");
        }
    }
}
