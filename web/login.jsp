<%--
  Created by IntelliJ IDEA.
  User: 26326
  Date: 2020/11/20
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link   rel="stylesheet"   href="./js/bootstrap-3.3.7-dist/css/bootstrap.css" />
    <script src="./js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script src="./js/jquery-3.5.1/jquery-3.5.1.js"></script>
    <script src="./js/jquery-3.5.1/jquery-3.5.1.min.js"></script>
    <!--<script src="./js/jquery.js"></script>-->
    <script src="./js/additional-methods.js"></script>
    <script src="./js/jquery.js"></script>
    <script src="./js/messages_zh.js"></script>
    <style type="text/css">
        /*body{
            background: url("./images/bg3.jpg") no-repeat center 0;
            background-size: cover;
            background-attachment: fixed;
        }*/
        #registerBox{
            /* background-color: #54a2c1; */
            background-color: rgba(0, 0, 0, 0.4);
            color: white;
            /*box-shadow:0px 0px 10px #000;
            position: absolute;
            top:50%;
            left:50%;
            transform: translate(-50%,-50%);*/
            text-align: center;
            /*width:400px;*/
            height: 400px;
            padding-bottom: 20px;
            box-shadow: 2px 2px 10px #444;
        }
        #welcome{
            /*color: white;
            box-shadow:0px 0px 10px #000;
            position: absolute;
            top:50%;
            left:50%;
            transform: translate(-50%,-50%);*/
            text-align: center;
            /*width:400px;*/
            height: 400px;
            padding-bottom: 20px;
            box-shadow: inset 1px 1px 10px #444;
        }
        form{
            padding:20px 20px;
            margin: 0px 20px;
        }
        label{
            display:inline-block;
            width:80px;
            text-align:left;
        }
        input{
            width:100px;
            height:50px;
            border:1px solid rgb(123, 123, 228);
            border-radius: 5px;
            margin:5px;
        }
        #tellogon{
            text-decoration: underline;
            color: white;
            font-size:12pt;
            font-family: 新宋体,serif;
        }
        #registerText{
            margin-top:18px;
            padding-bottom: 18px;
            border-bottom: 1px solid rgb(240, 240, 245);
            font-size:40px;

        }
        #weltext{
            color: white;
            font-size: 35pt;
            font-family: 微软雅黑,serif;
            font-weight: bolder;
            position: absolute;
            top: 50px;
            left:50%;
            transform: translate(-50%);
        }

    </style>
    <title>登录界面</title>
</head>

<%
    String path = request.getContextPath();
    String basePath=null;
    basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    int port=request.getServerPort();

    if(port==80){
        basePath=request.getScheme()+"://"+request.getServerName()+path;

    }else{
        basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;

    }
    request.setAttribute("basePath", basePath);
%>

<body style="background-size:cover; background: url('${basePath}/images/lbg1.jpg') no-repeat fixed center 0;">
<div class="container" style="position:absolute; top: 123px;">
    <div class="row">
        <div class="col-md-4 col-md-offset-3" id="welcome">

            <p id="weltext">欢迎光临</p>
            <p style="color: white; font-size: 20pt; font-family:  宋体,serif; font-weight:bolder; position:absolute; top: 150px;">登录你的账号，与我们一起开始旅程吧</p>
        </div>
        <div class="col-md-4 " id="registerBox">
            <p id="registerText"><span class="glyphicon glyphicon-user" style="font-size:40px;"></span>&nbsp&nbsp&nbsp登&nbsp&nbsp录</p>
            <form action="/teamManagement/login" role="form" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="用户名" name="uname" value=""/><br/>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="密码" name="upwd" value=""><br />
                </div>

                <button type="submit" class="btn btn-info btn-lg" style="background-color: #31b0d5;width: 200px; border-radius: 50px;">登录</button>
                <br>
                <div style="position:absolute; right:0px; bottom: 0px;  width: 200px; height: 50px;">
                    <a id="tellogon" href="register.jsp">用户免费注册<span class="glyphicon glyphicon-fast-forward" style="font-size:10pt;"></span></a>
                </div>

            </form>
        </div>

    </div>
</div>
</body>
</html>
