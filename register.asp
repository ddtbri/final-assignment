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
			var pass=$("#yhmm").val();
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



var tel=$("#tel").val();
		        if (tel=="") { 
  		alert("手机号没有输入");
  $("#tel").focus();
 } else if(tel!=""){
 	var reg= /^1[34578]\d{9}$/; 
 	isok=reg.test(tel);
  if(!isok) {
   alert("手机号码不正确");
   $('#phone').focus();
  }
 }


		        
				});




		$("#test").click(function(){
			$("#myform").attr("action","ceshi.asp")
			$("#myform").submit();
		});

		$("#but1").click(function(){
			$("#myform").attr("action","ceshi2.asp")
			$("#myform").submit();
		});

		$("#qrmm").blur(function(){
  			// alert($("#yhmm").val());
  			if($("#yhmm").val()!=$("#qrmm").val()){
  				alert("两次输入的密码不一致！");
  				$("#qrmm").val("");
  			}
  		});

  		// $("#tel").blur(function(){
  		// 	if(trim($("#tel").val()).length==0){
  		// 		alert("手机号没有输入");

  		// 	}
  		// });
	});


</script>

<style type="text/css">
	
	*{
		box-sizing: border-box;
	}
		#mydiv{
		border:1px solid;
		width: 500px;
		height: 400px;
		position: absolute;
		margin-top:70px;
		margin-left:700px;
		padding-top:50px; 
		padding-left: 120px;
		background-color: rgb(129,81,58);
	}

body{
	background-image: url("img/logo-pic/register.jpg");
	background-size: 100% 100%;
	background-attachment: fixed;

}

</style>
</HEAD>

<BODY>﻿ ﻿ 
<META content="Microsoft Visual Studio" name=GENERATOR>

<!-- Insert HTML here -->
<h1 style="margin-left: 43%;margin-top:150px;"><i>moblie 免费注册</i></h1>
<div id="mydiv">
<form  method="post" id="myform" >
<p>用户名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="text" name="yhm" id="yhm" value="<%=TheValue%>" style="margin-left: 15px;">
 <input type="button" value="测试用户名"   id="test" style="margin-left: 15px; " /></p>
<p>密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="password" name="yhmm" id="yhmm" style="margin-left: 17px;"></p>
<p>确认密码&nbsp;:<input type="password" name="qrmm" class="tip" id="qrmm"  style="margin-left: 17px;"/> </p>
<p>邮箱&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="text" name="email" id="email" style="margin-left: 17px;: " /></p>
<p>手机号码&nbsp;:<input type="text" name="tel" id="tel" style="margin-left: 17px"></p>
<p>收货地址&nbsp;:<input type="address" name="address" id="address" style="margin-left: 17px"></p>
<!-- <input type="button" value="测试邮箱名是否合法" onclick=ceshi() /></p> -->
<p><input id="but1" type=button value="注册" style="margin-top: 40px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<input type="reset" value="重填" style="margin-left: 86px;"></p></form>
</div>
</BODY></HTML>
