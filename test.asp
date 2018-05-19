<html> 
<head> 
<title>MySQL连接测试</title> 
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"> 
</head> 
<body> 
<% 
strconnection="dsn=mydsn;driver={MYSQL ODBC 5.3 Unicode Driver};server=localhost;uid=sca;pwd=123456;database=site" 
set conn = server.createobject("adodb.connection") 
conn.open strconnection 
sql = "select * from user" 'SQL查询语句 
set rs = conn.execute(sql) 
if not rs.bof then 
%> 
<table width=600 border=1> 
 <tr> 
  <td width=""><b>name</b></td> 
  <td width=""><b>password</b></td> 
 </tr> 
<% 
 do while not rs.eof 
%> 
 <tr> 
  <td><%=rs("username")%></td> <!-- name字段 --> 
  <td><%=rs("password")%></td> <!-- sex字段 --> 
 </tr> 
<% 
  rs.movenext 
 loop 
%> 
</table> 
<% 
 rs.close 
else 
 response.write("对不起，没有找到数据。") 
end if 
set rs = nothing 
conn.close 
set conn = nothing 
%> 
</body> 
</html>