package com.syzc.controller;

import com.mysql.cj.xdevapi.Session;
import com.syzc.entity.User;
import com.syzc.service.UserService;
import com.syzc.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;

public class UserServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        // 通过java反射机制，将请求跳转到对应的处理内容
        String methodName=req.getRequestURI().split("/")[3];
        try {
            Method method = getClass().getDeclaredMethod(methodName, HttpServletRequest.class,
                    HttpServletResponse.class);
            method.invoke(this,req,resp);
        } catch (Exception e) {
            e.printStackTrace();
            // 重定向到错误页面
        }
    }

    private void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        // 获取请求信息
        String uname = req.getParameter("username");
        String upwd = req.getParameter("password");
        String uemail = req.getParameter("mail");
        String utele = req.getParameter("phone");
        // 处理请求信息,其他用户信息？
        UserService userService1 = new UserServiceImpl();  //获取当前列表，并得到新建用户的编号
        int listSize = userService1.getUserList().size();
        int uid = userService1.getUserList().get(listSize-1).getUid()+1;

        User user = new User();
        user.setUid(uid);
        user.setUname(uname);
        user.setUpwd(upwd);
        user.setUemail(uemail);
        user.setUtele(utele);
        System.out.println(user);
        // 创建业务层对象，调用对应方法
        UserService userService = new UserServiceImpl();
        boolean result = userService.addUser(user);
        // 响应处理结果
        System.out.println("add:"+result);
        if(result) {
//        resp.getWriter().write("{\"result\":"+result+"}");
            resp.sendRedirect("/teamManagement/manage.jsp");
        }else{
            resp.setContentType("text/html; charset=UTF-8"); //转码
            PrintWriter out = resp.getWriter();
            out.flush();
            out.println("<script>");
            out.println("alert('此用户名已存在，请重新输入！');");
            out.println("history.back();");
            out.println("</script>");
        }

    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取请求信息
        int uid = Integer.parseInt(req.getParameter("uid"));
        // 处理请求信息
        User user = new User();
        user.setUid(uid);
        System.out.println(user);
        UserService userService = new UserServiceImpl();
        boolean result = userService.deleteUser(user);
        // 响应处理结果
        System.out.println("delete:"+result);
        resp.sendRedirect("/teamManagement/manage.jsp");
    }

    private void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取请求信息
        HttpSession session = req.getSession();
        int uid=7;
        System.out.println(session == null);
        Object usertest = session.getAttribute("user");
        System.out.println(usertest);
        String ssss = usertest.toString().split(",")[0];
        int start = ssss.indexOf('=')+1;
        System.out.println(ssss.substring(start));
        uid = Integer.valueOf(ssss.substring(start));

        //int uid = Integer.parseInt(req.getParameter("uid"));
        String uname = req.getParameter("username");
        String upwd = req.getParameter("password");
        String uemail = req.getParameter("mail");
        String utele = req.getParameter("phone");
        // 处理请求信息
        User user = new User();
        user.setUid(uid);
        user.setUname(uname);
        user.setUpwd(upwd);
        user.setUemail(uemail);
        user.setUtele(utele);
        System.out.println(user);
        // 调用业务层对象
        UserService userService = new UserServiceImpl();
        boolean result = userService.changeUserInfo(user);
        // 响应处理结果
        System.out.println("update:"+result);
        resp.sendRedirect("/teamManagement/login.jsp");
    }

}
