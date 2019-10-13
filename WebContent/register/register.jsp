<%@ page contentType="text/html;charset=GB18030" language="java" %>
<% String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="GB18030">
    <title>register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="<%=path%>/static/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/style.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/test.css">
    <script type="text/javascript" src="<%=path%>/static/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="<%=path%>/static/js/bootstrap.min.js"></script>
</head>
<body style="background-color:	ffff66">
<script type="text/javascript" src="https://cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
<div class="main" >
  <div class="login-form" style="background-color: 	#FFFFE0">
    <h1>注册界面</h1>
    <div class="head" > <img src="../images/user.png" alt=""/> </div>
    <form name="registerform" style="background-color: 	#FFFFE0"id="loginForm" action="<%=path %>/RegisterAction" method="post">
      <input type="text" class="text" name="userName" placeholder="用户名">
      <input type="password" name="password" placeholder="密码">
      <input type="password" name="checkpassword" placeholder="确认密码">
      <div class="submit" style="color:	ffff66">
        <input type="submit" value="REGISTER" id="submit" onclick="return check();" style="width: 320px;"></input>
      </div>
    </form>   
  </div>
</div>
</body>
</html>
<script language="JavaScript">
    /**
     * 该函数的功能为向服务器提交请求，利用返回的值判断账号和密码的正确性
     */
     function check(){
    	if(registerform.userName.value == ""
    			||registerform.password.value == ""){
    		alert("用户名和密码不能为空！");
    		return false;
    	}
    	else if(registerform.password.value !=
    			(registerform.checkpassword.value)){
    		alert("两次密码必须相同！");
    		return false;
    	}
    	registerform.submit();
    }
</script>

