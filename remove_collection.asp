<%
gid=request.QueryString("gid")
uid=Session("user")
pass=Session("pass")
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

sql="select * from user where uid='"&Session("user")&"'and password='"&Session("pass")&"'"
                                                    set rs=conn.execute(sql)
                                                    if rs.bof then
                                                        rs.close
                                                        set rs=nothing
                                                    else
                                                    	rs.close
                                                        set rs=nothing
                                                        sql2="delete from collection where uid='"&uid&"' and gid='"&gid&"'"
                                                        conn.execute(sql2)
                                                    end if
                                                    conn.close

                                                    response.redirect "collection.asp"
%>
