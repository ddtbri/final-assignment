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
	Session("user")=trim(request.form("yhm"))
	Session("pass")=trim(request.form("yhmm"))
	sql="select * from user where uid='"&Session("user")&"'and password='"&Session("pass")&"'"
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
			window.location.href="index.asp";
			// history.back();

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