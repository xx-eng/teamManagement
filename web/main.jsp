<%--
  Created by IntelliJ IDEA.
  User: 26326
  Date: 2020/11/21
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.syzc.service.LoginService" %>
<%@ page import="com.syzc.entity.User" %>
<%@ page import="java.util.List" %>
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
    <!--<script src="./js/jquery.js"></script>-->
    <script src="./js/messages_zh.js"></script>
    <style type="text/css"></style>
    <title>首页</title>
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
        .menuList{
            color:  #31b0d5;
            font-size: 15pt;
            box-shadow: 2px 2px 10px #31b0d5;
            height:150px;
            width:150px;
            border-radius: 50%;

            line-height:150px;
            text-align: center;
        }



    </style>

    <script>
        $(".menuList").hover(function(){
            $(".menuList").css({"width":"200px","height":"200px"});
        },function(){
            $(".menuList").css({"width":"150px","height":"150px"});
        });
    </script>
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
            <li class="verticlenar active"><a href="main.jsp" class="subnav"><span class="glyphicon glyphicon-home"></span>&nbsp&nbsp首页</a></li>
            <li class="verticlenar"><a href="manage.jsp" class="subnav"><span class="glyphicon glyphicon-user active"></span>&nbsp&nbsp成员管理</a></li>
            <li class="verticlenar"><a href="addUser.jsp" class="subnav"><span class="glyphicon glyphicon-list-alt"></span>&nbsp&nbsp添加成员</a></li>
            <!--<li class="verticlenar"><a href="#" class="subnav"><span class="glyphicon glyphicon-print"></span>&nbsp&nbsp发票管理</a></li>
            <li class="verticlenar"><a href="#" class="subnav"><span class="glyphicon glyphicon-wrench"></span>&nbsp&nbsp系统设置</a></li>-->
            <li class="verticlenar"><a href="self.jsp" class="subnav"><span class="glyphicon glyphicon-leaf"></span>&nbsp&nbsp修改其他信息</a></li>
            <li class="verticlenar"><a href="changepasswd.jsp" class="subnav"><span class="glyphicon glyphicon-leaf"></span>&nbsp&nbsp修改密码</a></li>
        </ul>
    </div>

    <div class="container" style="position: absolute; top: 70px;">
        <div class="row" >
            <div class="col-md-10 col-md-offset-2" style="color: #31b0d5; font-size: 12pt; border-bottom: 1px  solid lightgray ;">
                <span class="glyphicon glyphicon-home"></span>&nbsp&nbsp首页&nbsp&nbsp </div>
        </div>
    </div>

    <a href="manage.jsp"><div class="menuList" style="position: absolute; top: 200px; left:250px;">
        成员管理
    </div></a>

    <a href="addUser.jsp"><div class="menuList"  style="position: absolute; top: 250px; left:500px;">
        添加成员
    </div></a>

    <a href="self.jsp"><div class="menuList"  style="position: absolute; top: 200px; left:750px;">
        修改其他信息
    </div></a>

    <a href="changepasswd.jsp"><div class="menuList"  style="position: absolute; top: 250px; left:1000px;">
        修改密码
    </div></a>

</div>





</body>
</html>
