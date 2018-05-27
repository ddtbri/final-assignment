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
Session("yhm")=trim(request.form("yhm"))
TheValue=Session("yhm")
sql="select * from user where uid='"&TheValue&"'"
' rs.open sql,conn,1,1 '以只读打开数据库'
set rs = conn.execute(sql)
if not rs.eof then%>
<script language=javascript>
alert("用户名已经被使用！");
history.back();//回到上一个页面
</script>
<%else%>

<script type="text/javascript">
	$(function(){
		alert("该用户名可以使用");
		$("#myform").submit();
	});
	
    // history.back();
</script>
<%end if
rs.close
set rs=nothing
conn.close
set conn=nothing%>



</HEAD>
<BODY>

<form method="get" action="register.asp" id="myform">
	<input type="text" name="user" id="user" value="<%=TheValue%>">
</form>

<!-- Insert HTML here -->

</BODY>
</HTML>
