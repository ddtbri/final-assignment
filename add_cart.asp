<%
gid=request.QueryString("gid")
href=request.QueryString("href")
Session("add_list")=gid
if request.Cookies("whetherlogin")="False" then
	Response.Write("<SCRIPT>alert('Î´µÇÂ¼!');this.location.href='"&request.ServerVariables("HTTP_REFERER")&"';</SCRIPT>")
else
response.redirect "modify_cart.asp?href="&href
end if
%>