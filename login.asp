<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">

	<style type="text/css">
		
		
	*{
		box-sizing: border-box;
	}
		#mydiv{
		border:1px solid;
		width: 500px;
		height: 300px;
		position: absolute;
		margin-top:70px;
		margin-left:700px;
		padding-top:30px; 
		padding-left: 120px;
		background-color: rgb(151,140,154);
	}

a{
	text-decoration:none;
	margin-left: 170px; 
	font-size: 10pt;
		color: black;
}

	
	a:hover{
		color: red;	
	}

body{
	background-image: url("img/logo-pic/login3.jpg");
	background-size: 100% 100%;
	background-attachment: fixed;
}

	</style>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
	

	<script type="text/javascript">
		$(function(){
			$("#but1").mouseover(function(){
				if($("#yhm").val()==""||$("#yhmm").val()==""){
					alert("用户名或密码为空，请填写完整!");
				}
			});
		});
	</script>


</head>
<body>
<h1 style="margin-left: 43%;margin-top:150px;"><i>moblie用户登录</i></h1>
	<div id="mydiv">
		
	<form method="post" id="myform" action="judgelogin.asp">
		<p>用户&nbsp;：<input type="text" name="yhm" id="yhm" style="border-radius: 2px;">
 <!-- <input type="button" value="测试用户名"   id="test" /></p> -->
<p>密码&nbsp;：<input type="password" name="yhmm" id="yhmm" style="border-radius: 2px;"></p>

<!-- <input type="button" value="测试邮箱名是否合法" onclick=ceshi() /></p> -->
<p><input id="but1" type="submit" value="登陆" style="margin-top: 40px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<input type="reset" value="重填" style="margin-left: 86px;"></p></form>
	</form>
	<p><a href="changepassword.asp">修改密码</a></p>
	<p id="regist"><a href="register.asp">免费注册</a></p>
</div>
</body>
</html>