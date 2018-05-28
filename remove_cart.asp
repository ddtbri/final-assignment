<%
gid=request.QueryString("gid")
href=request.QueryString("href")
Session("remove_list")=gid
response.redirect "modify_cart.asp?href="&href
%>