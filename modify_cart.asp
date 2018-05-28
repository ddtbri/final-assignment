<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- 我们规定一下提交的范式（session）
user，pass用于验证
add_list 中规定需要添加的gid 逗号分隔
remove_list 写需要删除的商品 逗号分隔
modify_list 写需要调整数量的gid和amount gid:amount 逗号分隔 -->
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
	uid=Session("user")
	pass=Session("pass")
	add_list=Session("add_list")
	remove_list=Session("remove_list")
	modify_list=Session("modify_list")
	if add_list<>"" then
		Session("add_list")=""
		add_=split(add_list,",")
		for i=0 to ubound(add_)
			sql="insert into cart values('"&uid&"','"&add_(i)&"',1)"
			conn.execute(sql)
		next
	end if

	if remove_list<>"" then
		Session("remove_list")=""
		remove_=split(remove_list,",")
		for i=0 to ubound(remove_)
			sql="delete from cart where uid='"&uid&"' and gid='"&remove_(i)&"'"
			conn.execute(sql)
		next
	end if

	if modify_list<>"" then
		Session("modify_list")=""
		modify_=split(modify_list,",")
		for i=0 to ubound(modify_)
			response.write modify_(i)
			ax=split(modify_(i),":")
			sql="update cart set amount="&ax(1)&" where uid='"&uid&"' and gid='"&ax(0)&"'"
			conn.execute(sql)
		next
	end if


conn.close
set conn=nothing

href=request.QueryString("href")
response.redirect href
%>
