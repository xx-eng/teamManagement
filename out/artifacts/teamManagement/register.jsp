<%@ page import="com.syzc.service.UserService" %>
<%@ page import="com.syzc.service.impl.UserServiceImpl" %>
<%@ page import="com.syzc.entity.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 26326
  Date: 2020/11/14
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>register</title>
    <script src="./js/jquery-3.5.1/jquery-3.5.1.js"></script>
    <script src="./js/jquery-3.5.1/jquery-3.5.1.min.js"></script>
    <!--<script src="./js/jquery.js"></script>-->
    <script src="./js/additional-methods.js"></script>
    <script src="./js/jquery.js"></script>
    <script src="./js/messages_zh.js"></script>

    <!--<script src="./js/validate.js"></script>-->

    <style>
        #registerBox{
            /* background-color: #54a2c1; */
            /*background-color: rgba(215, 223, 226, 0.7);*/
            background-color: rgba(0, 0, 0, 0.4);
            box-shadow: 2px 2px 10px #444;
            position: absolute;
            top:50%;
            left:50%;
            transform: translate(-50%,-50%);
            text-align: center;
            width:450px;
            padding-bottom: 20px;
            /*border-radius: 15px;*/
        }
        form{
            padding:0 20px;
        }
        label{
            display:inline-block;
            width:80px;
            text-align:left;
            color:  white; /*#31b0d5;*/
        }
        input{
            width:250px;
            height:25px;
            border:1px solid rgb(123, 123, 228);
            border-radius: 5px;
            margin:5px;
            color:   #31b0d5;
        }
        #submit,#reset{
            margin-top:10px;
            background-color: #fff;
            width:80px;
            height:30px;
        }
        #registerText{
            margin-top:18px;
            padding-bottom: 18px;
            border-bottom: 1px solid rgb(240, 240, 245);
            font-size:20px;
            color: white; /*#31b0d5;*/
        }
        .infolist{
            height: 60px;
        }
        .error{
            color: red;
            font-size: 1pt;
            font-family: 楷体,serif;
        }
    </style>

    <script type="text/javascript">
        function isname(username){
            return username.value == null || username.value === "";

        }
        function ispasswd(passwd){
            return passwd.value == null || passwd.value === "";

        }
        function isemail(email){
            if(!/^\w+@[a-z0-9]+(\.[a-z]+){1,3}$/.test(email.value)){
                return true;
            }
            return false;
        }
        function istel(tel) {
            if(!/^1[3|4|5|8][0-9]\d{4,8}$/.test(tel.value)){
                return true;
            }
            return false;
        }

        function check() {
            var err = "";
            var istrue = true;
            var username = document.getElementById("username");
            var passwd = document.getElementById("password");
            var passwd1 = document.getElementById("paswdcon");
            var email = document.getElementById("mail");
            var telephone = document.getElementById("phone");
            if (isname(username)) {
                err = "名字不可以为空!";
                istrue = false;
            } else if (isaccount(account)) {
                err = "账户不可为空!";
                istrue = false;
            } else if (ispasswd(passwd)) {
                err = "密码格式错误!";
                istrue = false;
            }else if(passwd!=passwd1){
                err = "两次密码不一致";
                istrue = false;
            }
            else if (isemail(email)) {
                err = "邮件格式错误";
                istrue = false;
            } else if (istel(telephone)) {
                err = "手机号错误";
                istrue = false;
            } else if (isId(ID)) {
                err = "身份证号错误!";
                istrue = false;
            }
            if (!istrue) {
                alert(err);
            }

        }

    </script>


</head>

<body style="background-size:cover; background: url('${basePath}/images/lbg1.jpg') no-repeat fixed center 0;">
<div id="registerBox" >
    <p id="registerText">注册页面</p>
    <form action="/teamManagement/user/add" name="signupForm1" id="signupForm1">
        <div class="infolist">
            <label for="username">用户名</label>
            <input type="text" name="username" id="username">
        </div>
        <!--<div class="infolist">
            <label for="account">账号</label>
            <input type="text" name="account" id="acc">
        </div>-->
        <div class="infolist">
            <label for="password">密码</label>
            <input type="password" name="password" id="password">
        </div>
        <div class="infolist">
            <label for="confirm_password">确认密码</label>
            <input type="password" name="confirm_password" id="paswdcon">
        </div>
        <div class="infolist">
            <label for="mail">邮箱</label>
            <input type="email" name="mail" id="mail">
        </div>
        <div class="infolist">
            <label for="phone">手机号</label>
            <input type="text" name="phone" id="phone">
        </div>
        <!--<div class="infolist">
            <label for="id">身份证号</label>
            <input type="text" name="idNo" id="bodyID">
        </div>-->

        <input type="submit" name="注册" id="submit" value="注册" onclick="check()">
        <input type="reset" name="重置" id="reset" value="重置">
    </form>
</div>
</body>
</html>

