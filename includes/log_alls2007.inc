<!-- #include virtual="/includes/Adovbs.inc" -->
<%
if not Session("MemberData").Item("alls2007_login") then
	'Increase login count and update time
	Dim oConn, oRs, sSQL
	Set oConn = Server.CreateObject("ADODB.Connection")
	oConn.Open Application("DB_ConnectionString")
	Set oRs = Server.CreateObject("ADODB.Recordset")
	sSQL = "select * from licensee where Email='" & Session("MemberData").Item("Email") & "'" 
	oRs.Open sSQL, oConn, adOpenKeyset, adLockPessimistic, adCmdText
	oRs("Alls2007LoginCount") = oRs("Alls2007LoginCount") + 1
	oRs("Alls2007LastLogin") = now()
	oRs.Update
	oRs.Close
	Set oRs = Nothing
	oConn.Close
	Set oConn = Nothing
	
	'Set "login" session variable not to count again at next visit
	Session("MemberData").Item("alls2007_login") = True
end if
%>