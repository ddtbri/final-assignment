
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
            strconnection=ReadFromTextFile("../other/odbc.ini","utf-8")
            set conn = server.createobject("adodb.connection") 
            conn.open strconnection
			
			sql="select * from super_user"
                                            set rs=conn.execute(sql)
											flag=0
                                            if not rs.bof then
                                                do while not rs.eof and flag=0
                                                    if request.form("username")=rs("username") and request.form("password")=rs("password") then
													response.write "<script>alert('ok')</script>"
													flag=1
													exit do
													end if
                                                    rs.movenext
               
                                                loop
												if flag=0 then
												response.write "<script>alert('用户名或密码错误！')</script>"
												response.redirect "loginerror.asp"
												end if
                                                
                                            end if
                                            rs.close
                                            set rs=nothing
        %>
