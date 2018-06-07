<!-- #include virtual="/includes/Adovbs.inc" -->
<%
if not Session("MemberData").Item("marketing_login") then
	'Increase login count and update time
	Dim oConn, oRs, sSQL
	Set oConn = Server.CreateObject("ADODB.Connection")
	oConn.Open Application("DB_ConnectionString")
	Set oRs = Server.CreateObject("ADODB.Recordset")
	sSQL = "select * from licensee where Email='" & Session("MemberData").Item("Email") & "'" 
	oRs.Open sSQL, oConn, adOpenKeyset, adLockPessimistic, adCmdText
	oRs("MarketingLoginCount") = oRs("MarketingLoginCount") + 1
	oRs("MarketingLastLogin") = now()
	oRs.Update
	oRs.Close
		
	oRs.Open "visits", oConn, adOpenKeyset, adLockPessimistic, adCmdTable
	oRs.AddNew
	oRs.Fields("sitelet_id") = 10
	oRs.Fields("email") = Session("MemberData").Item("Email")
	oRs.Fields("date") = now()
	oRs.Update
	
	
	Set oRs = Nothing
	oConn.Close
	Set oConn = Nothing
	
	'Set "login" session variable not to count again at next visit
	Session("MemberData").Item("marketing_login") = True
end if
%>