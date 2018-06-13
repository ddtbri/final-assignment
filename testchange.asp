<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<HTML>
<HEAD>
<TITLE></TITLE>

<META HTTP-EQUIV="Content-Type" content="text/html; charset=UTF-8">

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
Session("newpassword")=request.form("newpassword")
' sql="select * from user where uid='"&TheValue&"'"
' rs.open sql,conn,1,1 '以只读打开数据库'
sql="update user set password='"&Session("newpassword")&"'where uid='"&Session("userr")&"'"
conn.execute(sql)
conn.close
set conn=nothing%>

<script type="text/javascript">
	alert("密码修改成功");
window.location.href="login.asp";
</script>

</HEAD>
<BODY>

<form method="get" action="register.asp" id="myform">
	<input type="text" name="user" id="user" value="<%=TheValue%>">
</form>

<!-- Insert HTML here -->

</BODY>
</HTML>
