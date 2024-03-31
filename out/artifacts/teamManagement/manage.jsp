<%--
  Created by IntelliJ IDEA.
  User: 26326
  Date: 2020/11/15
  Time: 14:23
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
<%
    UserService userService = new UserServiceImpl();
    request.setAttribute("userList",userService.getUserList());
    /*LoginService loginService = new LoginService();
    List<User> allUser = loginService.getAllUser();
    request.setAttribute("userList",allUser);*/
%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link   rel="stylesheet"   href="./js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <script src="./js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="./js/jquery-3.5.1/jquery-3.5.1.js"></script>
    <script src="./js/jquery-3.5.1/jquery-3.5.1.min.js"></script>-->
    <!--<script src="./js/jquery.js"></script>-->
    <script src="./js/additional-methods.js"></script>
    <!--<script src="./js/jquery.js"></script>-->
    <script src="./js/messages_zh.js"></script>
    <style type="text/css"></style>
    <!--script src="https://lib.sinaapp.com/js/jquery/2.0.2/jquery-2.0.2.min.js"></script>-->
    <title>用户管理</title>


    <script type="text/javascript">
        /*$("#submit").click(function(){
            alert("提交");
        });*/
        function searchUser(){
            alert("正在查询");
            var uname = document.getElementById("uname");

        }
    </script>
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

    </style>
</head>


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
            <li class="verticlenar active"><a href="manage.jsp" class="subnav"><span class="glyphicon glyphicon-user active"></span>&nbsp&nbsp成员管理</a></li>
            <li class="verticlenar"><a href="addUser.jsp" class="subnav"><span class="glyphicon glyphicon-list-alt"></span>&nbsp&nbsp添加成员</a></li>
            <!--<li class="verticlenar"><a href="#" class="subnav"><span class="glyphicon glyphicon-print"></span>&nbsp&nbsp发票管理</a></li>
            <li class="verticlenar"><a href="#" class="subnav"><span class="glyphicon glyphicon-wrench"></span>&nbsp&nbsp系统设置</a></li>-->
            <li class="verticlenar"><a href="self.jsp" class="subnav"><span class="glyphicon glyphicon-leaf"></span>&nbsp&nbsp修改其他信息</a></li>
            <li class="verticlenar "><a href="changepasswd.jsp" class="subnav"><span class="glyphicon glyphicon-leaf"></span>&nbsp&nbsp修改密码</a></li>
        </ul>
    </div>

    <div class="container" style="position: absolute; top: 70px;">
        <div class="row" >
            <div class="col-md-10 col-md-offset-2" style="color: #31b0d5; font-size: 12pt; border-bottom: 1px  solid lightgray ;">
                <span class="glyphicon glyphicon-home"></span>&nbsp&nbsp首页&nbsp&nbsp><span class="glyphicon glyphicon-user"></span>&nbsp&nbsp团队成员管理
            </div>
        </div>
        <div class="row" style="position:relative; top: 40px;">
            <div class="col-md-9 col-md-offset-3" style="height: 50px; line-height:30px;">
                <form class="bs-example bs-example-form" role="form">
                    <div class="form-group">
                        <label for="username" class="col-md-1 control-label" >用&nbsp户&nbsp名：</label>
                        <div class="col-sm-4">
                            <input type="text"  name="uname" class="form-control"  placeholder="请输入姓名" id="unamq">
                        </div>
                    </div>
                    <a href="search.jsp"><button type="button" class="btn btn-info col-md-2" id="submit">查询</button></a>
                </form>

                <!--<form class="bs-example bs-example-form" role="form">
                    <div class="form-group">
                        <label for="power" class="col-md-1 control-label">编&nbsp号：</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control"  placeholder="请输入用户权限">
                        </div>
                    </div>
                </form>-->


            </div>
        </div>
        <br>
        <div class="row"  style="position:relative; top: 70px;">
            <div class="col-md-9  col-md-offset-3" >
                <form name="form" action="/teamManagement/user/delete" method="post">
                    <table class="table table-striped" >
                        <thead>
                        <tr >
                            <th>编号</th>
                            <th>用户名</th>
                            <!--<th>用户姓名</th>-->
                            <th>密码</th>
                            <th>邮箱</th>
                            <th>手机号</th>
                            <!--<th>状态</th>-->
                            <th style="position: relative; left: 10px;">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="user" items="${userList}" varStatus="status">
                            <tr>
                                <td>${user.uid}</td>
                                <!--<td>ldlskl</td>-->
                                <td>${user.uname}</td>
                                <td>${user.upwd}</td>
                                <!--<td>已审核</td>-->
                                <td>${user.uemail}</td>
                                <td>${user.utele}</td>
                                <td>
                                    <button type="submit" name="uid" class="btn btn-link operates" value=${user.uid}>删除</button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </form>

            </div>
        </div>
        <div class="row"  style="position:relative; top: 100px;">
            <div class="col-md-9 col-md-offset-3">
                <ul class="nav nav-tabs">
                    <li><a href="addUser.jsp"><button type="button" class="btn btn-info" style="width: 150px;">添加成员</button></a></li>
                    <li style="position:absolute; right:0;">
                        <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-fast-backward"></span></button>
                        <button type="button" class="btn btn-default disabled">上一页</button>
                        <button type="button" class="btn btn-default active">1</button>
                        <button type="button" class="btn btn-default disabled">上一页</button>
                        <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-fast-forward"></span></button>
                    </li>
                </ul>



            </div>
        </div>
    </div>

</div>





</body>
</html>
