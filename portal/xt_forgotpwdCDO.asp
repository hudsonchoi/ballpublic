<%@ Language=VBScript %>
<% Option Explicit %>
<!-- #include virtual="/includes/Adovbs.inc" -->
<%
Dim oConn
Dim oRs
Dim myMail
Dim myFirstName
Dim strSQL, strName, strBodyText
Dim i
On Error Resume Next
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open Application("DB_ConnectionString")
Set oRs = Server.CreateObject("ADODB.Recordset")
strSQL = "select * from licensee where Email='"&Replace(Request.Form("Email"),"'","''")&"'"
oRs.Open strSQL, oConn, adOpenStatic, adLockReadOnly, adCmdText
If Err.Number <> 0 Then 'Capture the DB error
	Response.Redirect ("./sorry.asp?err="&Server.URLEncode(Err.Description))
End If
if oRs.RecordCount > 0 then 
	REM Send the member User Name and password via email.
	Set myMail=CreateObject("CDO.Message")
    myMail.Subject="The mlbstyleguide password"
    myMail.From="info@mlbstyleguide.com"
    myMail.To=Request.Form("Email")

	strBodyText = "Hello "&oRs("FirstName") & " " & oRs("LastName") & "," & Chr(10) & Chr(10) _
			 & "Here is your Password:" & Chr(10) & Chr(10)
	strBodyText = strBodyText & "Password : " & oRs("Password")
	
	myMail.TextBody =strBodyText
    myMail.Send
    set myMail=nothing
        
        
	oRs.Close
	Set oRs = Nothing
	oConn.Close
	Set oConn = Nothing

	Response.Redirect("./confirm.asp?usr=f&e="&Server.URLEncode(Request.Form("Email")))

else
	oRs.Close
	Set oRs = Nothing
	oConn.Close
	Set oConn = Nothing
	If Err.Number <> 0 Then 'Capture any err just in case
		Response.Redirect ("./sorry.asp?err="&Server.URLEncode(Err.Description))
	Else
		Response.Redirect("./forgotpwd.asp?c=invalid")
	End If
end if
%>