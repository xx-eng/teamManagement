<%--
  Created by IntelliJ IDEA.
  User: 26326
  Date: 2020/11/21
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.syzc.service.LoginService" %>
<%@ page import="com.syzc.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.syzc.service.UserService" %>
<%@ page import="com.syzc.service.impl.UserServiceImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link   rel="stylesheet"   href="./js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <script src="./js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="./js/jquery-3.5.1/jquery-3.5.1.js"></script>
    <script src="./js/jquery-3.5.1/jquery-3.5.1.min.js"></script>
    <!--<script src="./js/jquery.js"></script>-->
    <script src="./js/additional-methods.js"></script>
    <script src="./js/jquery.js"></script>
    <script src="./js/messages_zh.js"></script>
    <style type="text/css"></style>
    <title>个人中心</title>
    <style type="text/css">
        *{
            margin:0;
        }
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
        #functions{
            width:200px;

        }
        .subnav{
            color:#C0C0C0;
            font-size: 12pt;
            font-family: "微软雅黑 Light",serif;
        }
        label{
            font-size: 10pt;
            font-family: 微软雅黑,serif;

        }
        .operates{
            margin: 0 0px;
            padding:0 10px;
            color:#31b0d5;
        }

        #registerBox{
            /* background-color: #54a2c1; */
            /*background-color: rgba(215, 223, 226, 0.7);*/
            position: absolute;
            top:50%;
            left:50%;
            transform: translate(-50%,-50%);
            text-align: center;
            width:800px;
            padding-bottom: 20px;
            border-radius: 15px;
        }
        form{
            padding:0 20px;
        }
        label{
            display:inline-block;
            width:80px;
            text-align:left;
            font-size: 10pt;
            color:   #31b0d5;
        }
        input{
            width:250px;
            height:40px;
            border:1px solid rgb(123, 123, 228);
            border-radius: 5px;
            margin:5px;
            color:   #31b0d5;
        }
        /*#submit,#reset{
            margin-top:10px;
            background-color: #fff;
            width:80px;
            height:30px;
        }*/
        /*#registerText{
            margin-top:18px;
            padding-bottom: 18px;
            border-bottom: 1px solid rgb(240, 240, 245);
            font-size:20px;
            color:  #31b0d5;
        }*/
        .infolist{
            height: 60px;
        }
        .error{
            color: red;
            font-size: 1pt;
            font-family: 楷体,serif;
        }

    </style>


</head>
<%
    UserService userService = new UserServiceImpl();
    request.setAttribute("userList",userService.getUserList());

    /*LoginService loginService = new LoginService();
    List<User> allUser = loginService.getAllUser();
    request.setAttribute("userList",allUser);*/
%>

<body>

<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-tree-deciduous">团队成员管理平台</span></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><span class="glyphicon glyphicon-list" style="font-size:30px; color: #C0C0C0; margin:8px 700px 0 0;"></span></li>
                <li style="position:absolute; right: 15px;">
                    <!--获取一个名字放到这里-->
                    <a href="#"><img src="./images/admin.jpg" class="img-circle" style="width:30px; height:30px;" /><span style="font-size:20px;">administrator</span></a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div>
    <div style="position: absolute; top:50px; border-top: 2.5px solid #A9A9A9; height:91.5%; background-color: black; z-index:100;">
        <ul class="nav nav-pills nav-stacked navbar-inverse"  id="functions">
            <li class="verticlenar"><a href="main.jsp" class="subnav"><span class="glyphicon glyphicon-home"></span>&nbsp&nbsp首页</a></li>
            <li class="verticlenar"><a href="manage.jsp" class="subnav"><span class="glyphicon glyphicon-user active"></span>&nbsp&nbsp成员管理</a></li>
            <li class="verticlenar"><a href="addUser.jsp" class="subnav"><span class="glyphicon glyphicon-list-alt"></span>&nbsp&nbsp添加成员</a></li>
            <!--<li class="verticlenar"><a href="#" class="subnav"><span class="glyphicon glyphicon-print"></span>&nbsp&nbsp发票管理</a></li>
            <li class="verticlenar"><a href="#" class="subnav"><span class="glyphicon glyphicon-wrench"></span>&nbsp&nbsp系统设置</a></li>-->
            <li class="verticlenar"><a href="self.jsp" class="subnav"><span class="glyphicon glyphicon-leaf"></span>&nbsp&nbsp修改其他信息</a></li>
            <li class="verticlenar active"><a href="changepasswd.jsp" class="subnav"><span class="glyphicon glyphicon-leaf"></span>&nbsp&nbsp修改密码</a></li>
        </ul>
    </div>

    <div class="container" style="position: absolute; top: 70px;">
        <div class="row" >
            <div class="col-md-10 col-md-offset-2" style="color: #31b0d5; font-size: 12pt; border-bottom: 1px  solid lightgray ;">
                <span class="glyphicon glyphicon-home"></span>&nbsp&nbsp首页&nbsp&nbsp><span class="glyphicon glyphicon-user"></span>&nbsp&nbsp${sessionScope.user.uname}
            </div>
        </div>
    </div>

    <div id="registerBox">
        <!--<p id="registerText">注册页面</p>-->
        <form action="/teamManagement/user/update" name="signupForm1" id="signupForm1">
            <!--<div class="infolist">
                <label for="password1">原始密码</label>
                <input type="password" name="password1" id="password1">
            </div>-->

            <div class="infolist">
                <label for="password">修改密码</label>
                <input type="password" name="password" id="password">

            </div>
            <div class="infolist">
                <label for="confirm_password">确认密码</label>
                <input type="password" name="confirm_password" id="paswdcon">
            </div>
            <input type="submit" name="更改" id="submit" value="更改" class="btn btn-info" style="width: 150px;"><br/>
        </form>
    </div>

</div>





</body>
</html>