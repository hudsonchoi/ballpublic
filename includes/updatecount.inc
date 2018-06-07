<%
Dim oConn, oRs, strSQL1
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open Application("DB_ConnectionString")
Set oRs = Server.CreateObject("ADODB.Recordset")

strSQL1 ="select * from usertrack where UserName = '" & Session("MemberData").Item("UserName") & "'"
Response.Write strSQL1
'oRs.Open strSQL1, oConn, adOpenStatic, adLockPessimistic, adCmdText
'	
'	oRs(whichcount) = oRs(whichcount) + 1
'	oRs.Update
'	oRs.Close
'	Set oRs = Nothing
'	oConn.Close
'	Set oConn = Nothing
%>