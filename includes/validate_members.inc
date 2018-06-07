<!-- #include virtual="/includes/Adovbs.inc" -->
<%
	REM If (#1)the session has begun already, keep going on, else check the (#2)member cookie.
	REM If it is there open the session and go ahead since they have registered to enable it.
	REM If the member cookie doesn't exist, check it is from (#3)tell a friend. If yes then read 
	REM and process the (#4)voucher then go ahead else link to login page for those who don't use
	REM tell a friend, no member cookie and the session has not begun e.g. bookmark access.
	
	Dim strSQL	
	
	Set oConn = Server.CreateObject("ADODB.Connection")
	oConn.Open Application("DB_ConnectionString")
	
	'Has the session started?
	if not Session("MemberData").Exists("Email") then 
			'Not started yet..Check the member cookie
			
		if (Request.Cookies("Member")("UserName")="") then 
				'No member cookie exists..Check if it is from 'Tell a friend'
				
			if Request.QueryString("v") <> "" then 'Tell a friend! 
				'Check if the user clicks the link more than once
				
				Set oRs = Server.CreateObject("ADODB.Recordset")
				oRs.Open "Select * from friends where id = '" & Request.QueryString("v") & "'", oConn, adOpenKeyset, adLockPessimistic, adCmdText
				
				if oRs("click") = 1 then 'Force them to register
					oRs.Close
					Set oRs = Nothing
					Response.Redirect("/content/tellafriend/expired.asp")
				else 'Flag that the friend has visited once
						
					fEmail = oRs("Email")
					Session("MemberData").Item("Email") = fEmail 'Open the one time session
					
					if oRs("FirstName") <> "" then 'To display the name
						fFirstName = oRs("FirstName")
						Session("MemberData").Item("FirstName") = fFirstName
					end if 
					
					oRs("click") = oRs("click") + 1
					oRs.Update
					oRs.Close
					Set oRs = Nothing
				end if
								
				'Response.Redirect(Request.QueryString("target"))
				
			else 'when no member cookie, no session, nor 'Tell a friend'
				'Response.Redirect("/content/login/premium.asp" & "?target="&Server.URLEncode(Request.ServerVariables("SCRIPT_NAME")))
				strPath = "/content/login/premium.asp" & "?target="&Server.URLEncode(Request.ServerVariables("SCRIPT_NAME"))
				if Request.QueryString("np") <> "" then
					strPath = strPath & "&np=" & Request.QueryString("np")
				end if
				Response.Redirect (strPath)
			end if 
			'Response.Redirect("/content/login/premium.asp?target="&Request.QueryString("target"))
		else 'When there is a member cookie
			Set oRs = Server.CreateObject("ADODB.Recordset")
			strSQL = "select * from userdetails where Password='"&Replace(Request.Cookies("Member")("Password"),"'","''")&"' and UserName = '" & Replace(Request.Cookies("Member")("UserName"),"'","''") & "'"
			oRs.Open strSQL, oConn, adOpenStatic, adLockReadOnly, adCmdText

			myFirstName = oRs("FirstName") 'oRs("*") seems to be lost.. unless it gets stored into the variable...
			myLastName = oRs("LastName")
			myEmail = oRs("Email")
			myUserName = oRs("UserName")
	
			Session("MemberData").Item("FirstName") = myFirstName
			Session("MemberData").Item("LastName") = myLastName
			Session("MemberData").Item("Email") = myEmail
			Session("MemberData").Item("UserName") = myUserName
	
			oRs.Close
			Set oRs = Nothing
	
			Response.Redirect("/" & Request.QueryString("target"))
		end if
	end if

	oConn.Close
	Set oConn = Nothing
	
%>