<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">



<% 
'测试读取MySql数据库的内容 
strconnection="driver={mysql odbc 3.51 driver};database=site;server=localhost;uid=root;password=JT969981" 
'无需配置dsn 
set adodataconn = server.createobject("adodb.connection") 
adodataconn.open strconnection 
adodataconn.execute("set names '" & mycharset& "gbk'") 
strquery = "select * from user" 
set rs = adodataconn.execute(strquery) 
if not rs.bof then 
%> 

	

<TABLE>  
<TR> 
<TD><b>username</b></TD> 
<TD><b>password</b></TD> 
</TR>  
<%  
Do While Not rs.EOF  
%>  
<TR> 
<TD><%=rs("uid")%></TD> 
<TD><%=rs("password")%></TD> 
</TR>  
<%  
rs.MoveNext  
Loop  
%>  
</TABLE>  
<%  
Else  
Response.Write("Sorry, no data found.")  
End If 
rs.Close  
adoDataConn.Close  
Set adoDataConn = Nothing  
Set rsEmailData = Nothing  
%>
</head>
<body>

</body>
</html>