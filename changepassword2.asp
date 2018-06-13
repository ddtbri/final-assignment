<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html>
<html>
<head>
	<title>	</title>
	<meta charset="utf-8">
	<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<% 
Function ReadFromTextFile (FileUrl,CharSet)
                dim str
                set stm=server.CreateObject("adodb.stream")
                stm.Type=2
                stm.mode=3 
                stm.charset=CharSet
                stm.open
                stm.loadfromfile server.MapPath(FileUrl)
                str=stm.readtext
                stm.Close
                set stm=nothing
                ReadFromTextFile=str
            End Function
            strconnection=ReadFromTextFile("other/odbc.ini","utf-8")
            set conn = server.createobject("adodb.connection") 
            conn.open strconnection
%> 

<%  
	Session("userr")=trim(request.form("user"))
	Session("pass")=trim(request.form("oldpasswd"))
	sql="select * from user where uid='"&Session("userr")&"'and password='"&Session("pass")&"'"
' rs.open sql,conn,1,1 '以只读打开数据库'
	set rs = conn.execute(sql)
	if  rs.eof then%>
	<script type="text/javascript">
		$(function(){
				alert("用户名或密码错误!");
		history.back();
		});
		
	</script>
	<%end if
rs.close
set rs=nothing
conn.close
set conn=nothing%>
	
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
				if($("#yhm").val()!=$("#yhmm").val()){
					alert("两次密码输入不一致!");
				}
			});
		});
	</script>


</head>
<body>
	<div id="mydiv">
		<h2 style="margin-left: 50px;"><div style="border:2px solid;margin-top:3px;margin-right:5px;width:26px;height:26px;border-radius:50%;float: left;line-height: 24px;text-align: center; ">2</div>修改密码</h2>
	<form method="post" id="myform" action="testchange.asp">
		<p>新密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：<input type="password" name="newpassword" id="yhm" style="border-radius: 2px;">
 <!-- <input type="button" value="测试用户名"   id="test" /></p> -->
<p>确认密码&nbsp;&nbsp;：<input type="password" name="detepassword" id="yhmm" style="border-radius: 2px;"></p>

<!-- <input type="button" value="测试邮箱名是否合法" onclick=ceshi() /></p> -->
<p><input id="but1" type="submit" value="确定" style="margin-top: 40px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
<input type="reset" value="重填" style="margin-left: 86px;"></p></form>
	</form>
	
</div>
</body>
</html>