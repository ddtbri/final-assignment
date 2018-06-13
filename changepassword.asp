<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">

	<style type="text/css">
		
		body{
			background-color: skyblue;
		}
	*{
		box-sizing: border-box;
	}
		#mydiv{
		border:1px solid;
		width: 500px;
		height: 300px;
		position: absolute;
		margin-top:200px;
		margin-left:700px;
		padding-top:30px; 
		padding-left: 120px;
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



	</style>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
	

	<script type="text/javascript">
		$(function(){
			$("#but1").mouseover(function(){
				if(($("#yhm").val()=="")||($("#yhmm").val()=="")){
					alert("用户名或密码为空，请填写完整!");
				}
			});
		});
	</script>


</head>
<body>
	<div id="mydiv">
		<h2 style="margin-left: 50px;"><div style="border:2px solid;margin-top:2px;margin-right:5px;width:26px;height:26px;border-radius:50%;float: left;line-height: 24px;text-align: center; ">1</div>确认原密码</h2>
	<form method="post" id="myform" action="changepassword2.asp">
		<p>用户名&nbsp;：<input type="text" name="user" id="yhm" style="border-radius: 2px;">
 <!-- <input type="button" value="测试用户名"   id="test" /></p> -->
<p>原密码&nbsp;：<input type="password" name="oldpasswd" id="yhmm" style="border-radius: 2px;"></p>

<!-- <input type="button" value="测试邮箱名是否合法" onclick=ceshi() /></p> -->
<p><input id="but1" type="submit" value="确定" style="margin-top: 40px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
<input type="reset" value="重填" style="margin-left: 86px;"></p></form>
	</form>
	
</div>
</body>
</html>