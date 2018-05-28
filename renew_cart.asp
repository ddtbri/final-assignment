<%
modify_list=request.QueryString("modify")
href=request.QueryString("href")
Session("modify_list")=modify_list
response.redirect "modify_cart.asp?href="&href
%>