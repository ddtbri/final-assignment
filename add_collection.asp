<%
gid=request.QueryString("gid")
href=request.QueryString("href")
if request.Cookies("whetherlogin")="False" then
    Response.Write("<SCRIPT>alert('Î´µÇÂ¼£¡');this.location.href='"&request.ServerVariables("HTTP_REFERER")&"';</SCRIPT>")
    response.end
end if
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
            function make_id()
                RANDOMIZE
                num=int((100000+1)*rnd())
                make_id=year(now())&month(now())&day(now())&second(now())&num
            end function
sql="select * from user where uid='"&Session("user")&"'and password='"&Session("pass")&"'"
                                                    set rs=conn.execute(sql)
                                                    if rs.bof then
                                                        rs.close
                                                        set rs=nothing
                                                    else
                                                    	rs.close
                                                        set rs=nothing
                                                        id=make_id()
                                                        sql2="insert into collection values('"&Session("user")&"','"&gid&"',1,'"&id&"')"
                                                        conn.execute(sql2)
                                                    end if
                                                    conn.close
                     response.redirect href

%>