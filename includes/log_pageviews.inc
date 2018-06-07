<%
sub LogPageViews(page_id)
	On Error Resume Next
    If Session("MemberData").Item("Email") <> "" Then
	    Dim oConn, oRs

	    Set oConn = Server.CreateObject("ADODB.Connection")
	    oConn.Open Application("DB_ConnectionString")
	    Set oRs = Server.CreateObject("ADODB.Recordset")    

	    oRs.Open "pageviews", oConn, adOpenKeyset, adLockPessimistic, adCmdTable
	    oRs.AddNew
	    oRs.Fields("page_id") = page_id
	    oRs.Fields("date") = now()
	    oRs.Fields("email") = Session("MemberData").Item("Email")
	    oRs.Update
	    oRs.Close
	    Set oRs = Nothing
	    oConn.Close
	    Set oConn = Nothing
        
	    If Err.Number <> 0 Then
	        Set myMail=CreateObject("CDO.Message")
	        myMail.Subject="MLB PageViews Monitoring"
	        myMail.From="debugger@mlbstyleguide.com"
	        myMail.To="hudsonchoi@gmail.com"
        	
	        Set ASPErr = Server.GetLastError 

	        myMail.HTMLBody = ASPErr.Description 
	        myMail.Send 
	        set myMail=nothing
	    End If
	End If
end sub
%>