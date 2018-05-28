<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<HTML><HEAD>
<TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">

<script type="text/javascript" src="js/jquery-1.11.3.js"></script>

<%TheValue=request.querystring("user")%>
<script language="javascript">


	$(function(){


		$("#but1").mouseover(function(){
			

			var user=$("#yhm").val();
			if(user==""){
				alert("用户名不能为空");
			return ;
			}
			var pass=$("#password").val();
		if(pass==""){
			alert("密码不能为空");
			return ;
		}
		
		    var email = $("#email").val();
		        if(email == ''){
		              alert("请输入您的邮箱");
		              return;
		        }else if(email != "") {
		            var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
		            isok= reg.test(email );
		            if (!isok) {
		                alert("邮箱格式不正确，请重新输入！");
		                return false;
		            }
		        };
		        
				});




		$("#test").click(function(){
			$("#myform").attr("action","ceshi.asp")
			$("#myform").submit();
		});

		$("#but1").click(function(){
			$("#myform").attr("action","ceshi2.asp")
			$("#myform").submit();
		});
	});


</script>

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
		margin-top:70px;
		margin-left:400px;
		padding-top:50px; 
		padding-left: 120px;
	}


</style>
</HEAD>

<BODY>﻿ ﻿ 
<META content="Microsoft Visual Studio" name=GENERATOR>

<!-- Insert HTML here -->
<div id="mydiv">
<form  method="post" id="myform" >
<p>用户名:<input type="text" name="yhm" id="yhm" value="<%=TheValue%>">
 <input type="button" value="测试用户名"   id="test" style="margin-left: 10px; " /></p>
<p>密码&nbsp;&nbsp;&nbsp;:<input type="password" name="yhmm" id="yhmm" style="margin-left: 2px;"></p>
<p>邮箱&nbsp;&nbsp;&nbsp;:<input type="text" name="email" id="email" style="margin-left: 2px;: " />
<!-- <input type="button" value="测试邮箱名是否合法" onclick=ceshi() /></p> -->
<p><input id="but1" type=button value="注册" style="margin-top: 40px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<input type="reset" value="重填" style="margin-left: 86px;"></p></form>
</div>
</BODY></HTML>
