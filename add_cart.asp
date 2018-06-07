<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
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
gid=request.QueryString("gid")
href=request.QueryString("href")
Session("add_list")=gid
if request.Cookies("whetherlogin")="False" then
	Response.Write("<SCRIPT>alert('Î´µÇÂ¼!');this.location.href='"&request.ServerVariables("HTTP_REFERER")&"';</SCRIPT>")
else
sql="select * from cart where gid='"&gid&"' and uid='"&Session("user")&"'"
set rs=conn.execute(sql)
if not rs.bof then
	Response.Write("<SCRIPT>alert('该商品已存在');this.location.href='"&request.ServerVariables("HTTP_REFERER")&"';</SCRIPT>")
	response.end
end if
response.redirect "modify_cart.asp?href="&href
end if
%>