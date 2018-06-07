<%@ Language=VBScript %>
<!-- #include virtual="/includes/Adovbs.inc" -->
<%
Dim oConn
Dim oRs, sSQL
Dim myUserName, myTarget, msg

On Error Resume Next
	
msg=""
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open Application("DB_ConnectionString")
Set oRs = Server.CreateObject("ADODB.Recordset")
sSQL = "Select Password from licensee where Email = '" & Replace(Request.Form("email"), "'", "''") & "'"
oRs.Open sSQL, oConn, adOpenStatic, adLockPessimistic, adCmdText
if oRs.RecordCount > 0 then
	If LCase(Request.Form("oldpwd")) <> LCase(oRs("Password")) Then
		msg="invalid"
	ElseIf Request.Form("newpwd")="" then
		msg="empty"
	ElseIf Request.Form("newpwd") <> Request.Form("newpwd2") Then
		msg="nomatch"
	Else
		oRs("Password") = Trim(Request.Form("newpwd"))
		oRs.Update
	End If
	If msg = "" Then
		myTarget="confirm.asp?usr=m"
	Else
		myTarget="changepwd.asp?c=" & msg
	End If
else
	msg="invalid"
	myTarget="changepwd.asp?c=" & msg
end if
		
oRs.Close
Set oRs = Nothing
oConn.Close
Set oConn = Nothing

If Err.Number <> 0 Then
	Response.Redirect ("./sorry.asp?err="&Server.URLEncode(Err.Description))
Else
	Response.Redirect(myTarget)
End If

%>