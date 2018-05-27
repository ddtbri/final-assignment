<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
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
Session("yhm")=trim(request.form("yhm"))
sql="select * from user where uid='"&Session("yhm")&"'"
' rs.open sql,conn,1,1 '以只读打开数据库'
set rs = conn.execute(sql)
if not rs.eof then%>
<script language=javascript>
alert("用户名已经被使用！");
history.back();//回到上一个页面
</script>
<%else
	if request.form("yhm")<>"" and request.form("yhmm")<>"" then
		' session("yhm")=trim(request.form("yhm"))
		Session("yhmm")=trim(request.form("yhmm"))
		Session("email")=trim(request.form("email"))

conn.execute("insert into user(uid,password,included_date,email_address)values('"&Session("yhm")&"','"&Session("yhmm")&"','"&now()&"','"&Session("email")&"')")
' rs("uid")=session("yhm")
' rs("password")=session("yhmm")
' rs("included_data")=date()+time()
' rs("email_address")=session("email")


%>

<script type="text/javascript">
	alert("注册成功");
    history.back();
</script>
<%end if
end if
rs.close
set rs=nothing
conn.close
set conn=nothing%>

</head>
<body>

</body>
</html>