<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

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

            function make_id()
            	RANDOMIZE
            	num=int((100000+1)*rnd())
            	make_id=year(now())&month(now())&day(now())&second(now())&num
            end function
        %>
<%
tel=request.QueryString("tel")
address=request.QueryString("address")


	sql="select * from user where uid='"&Session("user")&"'and password='"&Session("pass")&"'"
                                                    set rs=conn.execute(sql)
                                                    if rs.bof then
                                                        rs.close
                                                        set rs=nothing
                                                    else
                                                    	rs.close
                                                        set rs=nothing
                                                        
                                                        sql2="select * from cart where uid='"&Session("user")&"'"
                                                        set rs=conn.execute(sql2)
                                                        if not rs.bof then
                                                        do while not rs.eof
                                                            oid=make_id()
                                                        	sql3="insert into gorder values('"&oid&"','"&rs("gid")&"','"&Session("user")&"',now(),"&rs("amount")&",'"&tel&"','"&address&"')"
                                                        	conn.execute(sql3)
                                                        	rs.movenext
                                                        loop
                                                        sql3="delete from cart where uid='"&Session("user")&"'"
                                                        conn.execute(sql3)
                                                    end if
                                                    end if
                                                    rs.close
                                                    conn.close
%>
<script type="text/javascript">

history.go(-1);
window.location.reload();
// self.location=document.referrer;
alert("订单已提交");
</script>>