<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
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
'测试读取MySql数据库的内容 
'strconnection="driver={mysql odbc 3.51 driver};database=site;server=localhost;uid=root;password=JT969981;option=3" 
'无需配置dsn 
'set conn = server.createobject("adodb.connection")
'conn.open strconnection 
'conn.execute("set names '" & mycharset& "gbk'") 
%> 

<%  
	Session("user")=trim(request.form("yhm"))
	Session("pass")=trim(request.form("yhmm"))
	sql="select * from super_user where username='"&Session("user")&"'and password='"&Session("pass")&"'"
' rs.open sql,conn,1,1 '以只读打开数据库'
	set rs = conn.execute(sql)
	if  rs.eof then%>
	<script type="text/javascript">
		$(function(){
				alert("用户名或密码错误!");
		history.back();
		});
		
	</script>
	<%Session("user")=""%>
	<%else%>
	<script type="text/javascript">
		$(function(){
			// history.go(-1);
			// location.reload();
			// window.location.href=document.referrer;
			alert("登陆成功！");
			// window.location.href="index.asp";
			// history.back();
			window.location.href="backuser.asp";

		});
	</script>
	<%end if
rs.close
set rs=nothing
conn.close
set conn=nothing%>
</head>
<body>

</body>
</html>