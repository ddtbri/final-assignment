<%
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
    name=request.form("name")
    email=request.form("email")
    message=request.form("message")
    if Session("user")="" or name="" or email="" or message="" then 
    	response.write "have not login or blank area exists"
    end if
    id=make_id()
    sql="insert into commit values('"&Session("user")&"','"&name&"','"&email&"','"&message&"','"&id&"')"
    conn.execute(sql)
    conn.close
%>
<script type="text/javascript">
alert("ok")
location.href="contact-us.asp"
</script>>