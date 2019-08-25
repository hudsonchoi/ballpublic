<%@ Language=VBScript %>
<% Option Explicit %>
<!-- #include virtual="/includes/Adovbs.inc" -->
<%
Dim oConn
Dim oRs, sSQL, oRsLicenseeSitelets, sSQLLicenseeSitelets, objCommand, TypeLib, myGuid, cleanGuid
Dim myUserName, myPassword, myCompany, myBulkReg, myContract, myMLB, myMinor, myCoop, myAlls, myWorld, myMascot, mySpring, myTrend, mySuper, myMlb2003, myPrealls, myCreative, myAlls2007, myOpenDate
Dim myAddress1, myAddress2, myCity, myState, myZip, myCountry, myPhone
Dim myTarget, myFirstName, myLastName, myEmail, myID, myVerify, myMinorleaguestyleguide
'New Security 022808
Dim myUID, myUserLevel, myUserCategory, myRequestorID, myFromDate, myToDate, myAllowedYear
Dim FIRST_FILE_TO_SEE, usingAuthentiXStandard, auth, siteDirectory, redirectTo, cookieName, cookieValue

'On Error Resume Next

Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open Application("DB_ConnectionString")
Set oRs = Server.CreateObject("ADODB.Recordset")
sSQL = "select * from legacyusers where Password='"&Replace(Request.Form("Password"), "'", "''") & "' and UserName = '" & Replace(Request.Form("UserName"),"'", "''") & "'" 
oRs.Open sSQL, oConn, adOpenStatic, adLockPessimistic, adCmdText

If oRs.RecordCount > 0 Then 'When the user is the legacy users
	Session("UserReEntryErrors").removeAll
	Session("UserReEntryData").removeAll
	'if oRs("Limit") = 0 then 'NT un&pw can't be used --> The intelligence was removed on 041701
	'	oRs.Close
	'	Set oRs = Nothing
	'	oConn.Close
	'	Set oConn = Nothing
	'	myTarget="/default.asp?expired"
	'else 'A valid user
		'myFirstName = oRs("FirstName") 
		'myLastName = oRs("LastName")
		myEmail = oRs("Email")
		myUserName = oRs("UserName")
		myPassword = oRs("Password")
		myCompany = oRs("Company")
		myAddress1 = oRs("Address1")
		myAddress2 = oRs("Address2")
		myCity = oRs("City")
		myState = oRs("State")
		myZip = oRs("Zip")
		myCountry = oRs("Country")
		myID = oRs("ID")
		myContract = oRs("Contract")
		myBulkReg = oRs("BulkReg")
		
		'myAccess = oRs("AccessLevel")
		myMLB = oRs("Mlb")
		myMinor = oRs("Minor")
		myCoop = oRs("Coop")
		myAlls = oRs("Alls")
		myWorld = oRs("World")
		myMascot = oRs("Mascot")
		mySpring = oRs("Spring")
		myTrend = oRs("Trend")
		mySuper = oRs("Super")
		myMlb2003 = oRs("Mlb2003")
		myCreative = oRs("Creative")
		myAlls2007 = oRs("Alls2007")
		
		myMinorleaguestyleguide = oRs("Minorleaguestyleguide")
		
		'New Security 022808
		myUserLevel = oRs("UserLevel")
		myUserCategory = oRs("UserCategory")
		myRequestorID = oRs("RequestorID")
		myFromDate = oRs("FromDate")
		myToDate = oRs("ToDate")
		myAllowedYear = oRs("AllowedYear")
		
		'myLimit = oRs("Limit")

		'Session("Legacy").Item("FirstName") = myFirstName
		'Session("Legacy").Item("LastName") = myLastName
		Session("Legacy").Item("Email") = myEmail
		Session("Legacy").Item("UserName") = myUserName
		Session("Legacy").Item("Password") = myPassword
		Session("Legacy").Item("Company") = myCompany
		Session("Legacy").Item("Address1") = myAddress1
		Session("Legacy").Item("Address2") = myAddress2
		Session("Legacy").Item("City") = myCity
		Session("Legacy").Item("State") = myState
		Session("Legacy").Item("Zip") = myZip
		Session("Legacy").Item("Country") = myCountry
		Session("Legacy").Item("ID") = myID
		Session("Legacy").Item("Contract") = myContract
		'Session("Legacy").Item("Limit") = myLimit
		'Session("Legacy").Item("Access") = myAccess
		Session("Legacy").Item("BulkReg") = myBulkReg
		
		Session("Legacy").Item("Mlb") = myMLB
		Session("Legacy").Item("Mlb2003") = myMlb2003
		Session("Legacy").Item("Minor") = myMinor
		Session("Legacy").Item("Coop") = myCoop
		Session("Legacy").Item("Alls") = myAlls
		Session("Legacy").Item("World") = myWorld
		Session("Legacy").Item("Mascot") = myMascot
		Session("Legacy").Item("Spring") = mySpring
		Session("Legacy").Item("Trend") = myTrend
		Session("Legacy").Item("Super") = mySuper
		Session("Legacy").Item("Creative") = myCreative
		Session("Legacy").Item("Alls2007") = myAlls2007

		Session("Legacy").Item("Minorleaguestyleguide") = myMinorleaguestyleguide
		'Response.Cookies("Insensitive")("UserName") = oRs("UserName")
		'Response.Cookies("Insensitive")("email") = oRs("email")
		'Response.Cookies("Insensitive")("FirstName") = oRs("FirstName")
		'Response.Cookies("Insensitive").expires = #1/18/2038 00:00:00#
	
		'If Request.Form("edit") = "true" Then
		'	myTarget = "changepwd.asp"
		'Else
		'	myTarget = "access.asp"
		'End If
		
		'New Security 022808
		Session("Legacy").Item("UserLevel") = myUserLevel
		Session("Legacy").Item("UserCategory") = myUserCategory
		Session("Legacy").Item("RequestorID") = myRequestorID
		Session("Legacy").Item("FromDate") = myFromDate
		Session("Legacy").Item("ToDate") = myToDate
		Session("Legacy").Item("AllowedYear")= myAllowedYear
		
		
		
		oRs.Close
		Set oRs = Nothing
		oConn.Close
		Set oConn = Nothing
	
		myTarget="reregister.asp"
	'end if
Else 'Look up in licensee
	Session("UserReEntryErrors").removeAll
	Session("UserReEntryData").removeAll
	Session("MemberData").Item("mlb2008") = False
    Session("MemberData").Item("mlb2003") = False
    Session("MemberData").Item("spring") = False
    Session("MemberData").Item("alls") = False
    Session("MemberData").Item("world") = False
    Session("MemberData").Item("coop") = False
    Session("MemberData").Item("mascot") = False
    Session("MemberData").Item("minor") = False
    Session("MemberData").Item("trend") = False
    Session("MemberData").Item("creative") = False
	Session("MemberData").Item("restricted") = False
    Session("MemberData").Item("mascotbabies") = False
    Session("MemberData").Item("pressbox") = False
	oRs.Close
	sSQL = "select * from licensee where Password='"&Replace(Request.Form("Password"),"'", "''") & "' and Email = '" & Replace(Request.Form("UserName"),"'","''") & "'"
	oRs.Open sSQL, oConn, adOpenStatic, adLockPessimistic, adCmdText
	If oRs.RecordCount = 1 Then 'When the user is valid
	    myUID = oRs("ID")
		myFirstName = oRs("FirstName") 
		myLastName = oRs("LastName")
		myCompany = oRs("Company")
		myAddress1 = oRs("Address1")
		myAddress2 = oRs("Address2")
		myCity = oRs("City")
		myState = oRs("State")
		myZip = oRs("Zip")
		myCountry = oRs("Country")
		myPhone = oRs("Phone")	
		myEmail = oRs("Email")
		
		
		myMLB = oRs("Mlb")
		myMinor = oRs("Minor")
		myCoop = oRs("Coop")
		myAlls = oRs("Alls")
		myWorld = oRs("World")
		myMascot = oRs("Mascot")
		mySpring = oRs("Spring")
		myTrend = oRs("Trend")
		mySuper = oRs("Super")
		myMlb2003 = oRs("Mlb2003")
		myPrealls = oRs("Prealls")
		myVerify = oRs("Verify")
		myCreative = oRs("Creative")
		myAlls2007 = oRs("Alls2007")
		myOpenDate = oRs("OpenDate")

		Session("MemberData").Item("FirstName") = myFirstName
		Session("MemberData").Item("LastName") = myLastName
		Session("MemberData").Item("Email") = myEmail
		Session("MemberData").Item("Password") = Request.Form("Password")
		
		REM THE NEW SECURITY RULE!!! 022808
		
		myUserLevel = oRs("UserLevel")
		myUserCategory = oRs("UserCategory")
		myRequestorID = oRs("RequestorID")
		myFromDate = oRs("FromDate")
		myToDate = oRs("ToDate")
		myAllowedYear = oRs("AllowedYear")
				
		If myUserLevel <> "X" Then
			Select Case myUserLevel
			    Case "A" ProvideLuxuryService()
			    Case "B" ProvideSuperiorService myUID
			    Case "C" ProvideModerateService myUID, myAllowedYear
			    Case "D" ProvideGeneralService myUID, myFromDate, myToDate
			    Case Else
			End Select
			
			
		    'Added 05-27-09 by Chandan Kanodia
		    'Adding some specific values to a cookie so that ASP.NET can read it as well
		    Response.Cookies("MLBSUser")("Email") = Session("MemberData").Item("Email")
		    Response.Cookies("MLBSUser")("marketing") = Session("MemberData").Item("marketing")
            Response.Cookies("MLBSUser").Expires = DateAdd("d",365,now)
        
			Session("MemberData").Item("OpenDate") = myOpenDate
			
			Response.Cookies("Insensitive")("Email") = oRs("email")
			Response.Cookies("Insensitive")("FirstName") = oRs("FirstName")
			Response.Cookies("Insensitive").expires = #1/18/2038 00:00:00#

			myTarget = "access.asp"
			
			'Dim oRsLog
			'Set oRsLog = Server.CreateObject("ADODB.Recordset")
			'oRsLog.Open "logs", oConn, adOpenKeyset, adLockPessimistic, adCmdTable 
			'oRsLog.AddNew
			'oRsLog.Fields("cip") = Request.ServerVariables("REMOTE_ADDR")
			'oRsLog.Fields("email") = myEmail
			'oRsLog.Fields("date") = now()
			'oRsLog.Update
						
			'oRsLog.Close
			'Set oRsLog = Nothing

			Dim sql, oConnLog 
			sql = "INSERT INTO logs (cip, email, date) VALUES ('" & Request.ServerVariables("REMOTE_ADDR") & "', '" & myEmail & "', '" & now() & "')"
			response.Write(Application("DB_ConnectionString"))
			Set oConnLog = Server.CreateObject("ADODB.Connection")
			oConnLog.Open Application("DB_ConnectionString")
			oConnLog.Execute sql
			oConnLog.Close
			Set oConnLog = nothing

			oRs.Close
			Set oRs = Nothing

			'Set oConn = Server.CreateObject("ADODB.Connection")
			'oConn.Open Application("DB_ConnectionString")
			Set TypeLib = CreateObject("Scriptlet.TypeLib")
			myGuid = typeLib.Guid
			myGuid = Left(myGuid, Len(myGuid)-2)
			cleanGuid = Replace(myGuid, "{", "")
			cleanGuid = Replace(cleanGuid, "}", "")
			Session("Guid") = cleanGuid
			set objCommand=Server.CreateObject("ADODB.command")
			'response.write("UPDATE licensee SET token = '" & myGuid & "'")
			'response.write("UPDATE licensee SET token = '" & myGuid & "' where Password='"&Replace(Request.Form("Password"),"'", "''") & "' and Email = '" & Replace(Request.Form("UserName"),"'","''") & "'")
			'response.end()
			objCommand.ActiveConnection = oConn
			objCommand.CommandText = "UPDATE licensee SET token = '" & myGuid  & "', LastLogin = '" & Now & "' where Password='"&Replace(Request.Form("Password"),"'", "''") & "' and Email = '" & Replace(Request.Form("UserName"),"'","''") & "'"
			objCommand.Execute			

			'response.Write("<h1>Bingo2</h1>")
			'response.End()

			oConn.Close
			Set oConn = Nothing

			Response.Cookies("sessionInfo") = "Valid"


			response.redirect "access.asp"
		Else
			Response.Redirect("/default.asp?c=x")
		End If

	Else
		myTarget="/default.asp?c=invalid"
	End If
End If



If Err.Number <> 0 Then
	Response.Redirect ("sorry.asp?err="&Server.URLEncode(Err.Description))
Else
	Response.Redirect(myTarget)
End If

Sub ProvideLuxuryService()
    REM New security logic for level 'A'! They can be excluded from some sitelets 091408
    Set oRsLicenseeSitelets = Server.CreateObject("ADODB.Recordset")
    sSQLLicenseeSitelets = "select * from licensee2sitelets where uid = "& myUID 
    oRsLicenseeSitelets.Open sSQLLicenseeSitelets, oConn, adOpenStatic, adLockPessimistic, adCmdText
    
    Do while not oRsLicenseeSitelets.EOF
        Select Case  oRsLicenseeSitelets("sid")
		    Case "1" REM ATTENTION! ATTENTION! ATTENTION!
		             REM When launching 2021 'ADD' Session("MemberData").Item("mlb2021") = True below!
		             Session("MemberData").Item("mlb2020") = True
					 Session("MemberData").Item("mlb2019") = True
                     Session("MemberData").Item("mlb2018") = True
					 Session("MemberData").Item("mlb2012") = True
		             Session("MemberData").Item("mlb2011") = True
			         Session("MemberData").Item("mlb2010") = True
		             Session("MemberData").Item("mlb2009") = True
		             Session("MemberData").Item("mlb2003") = True
			         Session("MemberData").Item("mlb") = True
			         Session("MemberData").Item("mlb2008") = True	
		    Case "2" Session("MemberData").Item("spring") = True
		    Case "3" Session("MemberData").Item("alls") = True
		    Case "4" Session("MemberData").Item("world") = True
		    Case "5" Session("MemberData").Item("coop") = True
		    Case "6" Session("MemberData").Item("mascot") = True
		    Case "7" Session("MemberData").Item("minor") = True
		    Case "8" Session("MemberData").Item("trend") = True
		    Case "9" Session("MemberData").Item("creative") = True
			Case "10" Session("MemberData").Item("marketing") = True
			Case "11" Session("MemberData").Item("restricted") = True
            Case "12" Session("MemberData").Item("opening") = True
            Case "13" Session("MemberData").Item("mascotbabies") = True
            Case "14" Session("MemberData").Item("pressbox") = True
            Case "15" Session("MemberData").Item("playball") = True
			Case "16" Session("MemberData").Item("sponsors") = True
            Case "17" Session("MemberData").Item("london") = True
			Case "18" Session("MemberData").Item("restricted2") = True
			Case "19" Session("MemberData").Item("restricted3") = True
		    Case Else
		End Select
        oRsLicenseeSitelets.MoveNext
    Loop

End Sub

Sub ProvideSuperiorService(ByRef myUID)

    Set oRsLicenseeSitelets = Server.CreateObject("ADODB.Recordset")
    sSQLLicenseeSitelets = "select * from licensee2sitelets where uid = "& myUID 
    oRsLicenseeSitelets.Open sSQLLicenseeSitelets, oConn, adOpenStatic, adLockPessimistic, adCmdText
    
    Do while not oRsLicenseeSitelets.EOF
        Select Case  oRsLicenseeSitelets("sid")
		    Case "1" Session("MemberData").Item("mlb2019") = True
                     REM ATTENTION! ATTENTION! ATTENTION!
                     REM When launching 2021 add Session("MemberData").Item("mlb2020") = True above!
		             If Now > DateValue("1/1/20") Then 'And change the date left to '1/1/21'
		                REM ATTENTION! ATTENTION! ATTENTION!
                        REM When launching 2021 replace the below to Session("MemberData").Item("mlb2021") = True!
		                Session("MemberData").Item("mlb2020") = True
		             End If
					 Session("MemberData").Item("mlb2018") = True
					 Session("MemberData").Item("mlb2012") = True
		             Session("MemberData").Item("mlb2011") = True
					 Session("MemberData").Item("mlb2010") = True
		             Session("MemberData").Item("mlb2009") = True
		             Session("MemberData").Item("mlb2003") = True
					 Session("MemberData").Item("mlb") = True
					 Session("MemberData").Item("mlb2008") = True
		    Case "2" Session("MemberData").Item("spring") = True
		    Case "3" Session("MemberData").Item("alls") = True
		    Case "4" Session("MemberData").Item("world") = True
		    Case "5" Session("MemberData").Item("coop") = True
		    Case "6" Session("MemberData").Item("mascot") = True
		    Case "7" Session("MemberData").Item("minor") = True
		    Case "8" Session("MemberData").Item("trend") = True
		    Case "9" Session("MemberData").Item("creative") = True
			Case "10" Session("MemberData").Item("marketing") = True
			Case "11" Session("MemberData").Item("restricted") = True
            Case "12" Session("MemberData").Item("opening") = True
            Case "13" Session("MemberData").Item("mascotbabies") = True
            Case "14" Session("MemberData").Item("pressbox") = True
            Case "15" Session("MemberData").Item("playball") = True
			Case "16" Session("MemberData").Item("sponsors") = True
            Case "17" Session("MemberData").Item("london") = True
			Case "18" Session("MemberData").Item("restricted2") = True
			Case "19" Session("MemberData").Item("restricted3") = True
		    Case Else
		End Select
        oRsLicenseeSitelets.MoveNext
    Loop
    'Response.Redirect("http://www.axis360.com/b.htm")
End Sub

Sub ProvideModerateService(ByRef myUID, ByRef myAllowedYear)
    'Response.Write(DateDiff("d", Now, myAllowedYear))
    'Response.End
    If DateDiff("d", Now, myAllowedYear) >= 0 Then
        Set oRsLicenseeSitelets = Server.CreateObject("ADODB.Recordset")
        sSQLLicenseeSitelets = "SELECT * FROM licensee2sitelets WHERE uid = "& myUID 
        oRsLicenseeSitelets.Open sSQLLicenseeSitelets, oConn, adOpenStatic, adLockPessimistic, adCmdText
        
        Do while not oRsLicenseeSitelets.EOF
            Select Case  oRsLicenseeSitelets("sid")
		        Case "1" Session("MemberData").Item("mlb2019") = True
		             REM ATTENTION! ATTENTION! ATTENTION!
                     REM When launching 2021 add Session("MemberData").Item("mlb2020") = True above!
		             If Now > DateValue("1/1/20") Then 'And change the date left to '1/1/21'
		                REM ATTENTION! ATTENTION! ATTENTION!
                        REM When launching 2021 replace the below to Session("MemberData").Item("mlb2021") = True!
		                Session("MemberData").Item("mlb2020") = True
		             End If
					 Session("MemberData").Item("mlb2018") = True
					 Session("MemberData").Item("mlb2012") = True
		             Session("MemberData").Item("mlb2011") = True
					 Session("MemberData").Item("mlb2010") = True
		             Session("MemberData").Item("mlb2009") = True
		             Session("MemberData").Item("mlb2003") = True
					 Session("MemberData").Item("mlb") = True
					 Session("MemberData").Item("mlb2008") = True
		        Case "2" Session("MemberData").Item("spring") = True
		        Case "3" Session("MemberData").Item("alls") = True
		        Case "4" Session("MemberData").Item("world") = True
		        Case "5" Session("MemberData").Item("coop") = True
		        Case "6" Session("MemberData").Item("mascot") = True
		        Case "7" Session("MemberData").Item("minor") = True
		        Case "8" Session("MemberData").Item("trend") = True
		        Case "9" Session("MemberData").Item("creative") = True
				Case "10" Session("MemberData").Item("marketing") = True
				Case "11" Session("MemberData").Item("restricted") = True
                Case "12" Session("MemberData").Item("opening") = True
                Case "13" Session("MemberData").Item("mascotbabies") = True
                Case "14" Session("MemberData").Item("pressbox") = True
                Case "15" Session("MemberData").Item("playball") = True
                Case "16" Session("MemberData").Item("sponsors") = True
                Case "17" Session("MemberData").Item("london") = True
				Case "18" Session("MemberData").Item("restricted2") = True
				Case "19" Session("MemberData").Item("restricted3") = True
		        Case Else
		    End Select
            oRsLicenseeSitelets.MoveNext
        Loop
    Else
        Response.Redirect("/default.asp?c=expired")
    End If
    'Response.Redirect("http://www.axis360.com/c.htm")
End Sub

Sub ProvideGeneralService(ByRef myUID, ByRef myFromDate, ByRef myToDate)
    'Response.Redirect("http://www.axis360.com/d.htm")
    If DateDiff("d", Now, myFromDate) <= 0 AND DateDiff("d", Now, myToDate) >= 0 Then
        Set oRsLicenseeSitelets = Server.CreateObject("ADODB.Recordset")
        sSQLLicenseeSitelets = "SELECT * FROM licensee2sitelets WHERE uid = "& myUID 
        oRsLicenseeSitelets.Open sSQLLicenseeSitelets, oConn, adOpenStatic, adLockPessimistic, adCmdText
        
        Do while not oRsLicenseeSitelets.EOF
            Select Case  oRsLicenseeSitelets("sid")
		        Case "1" Session("MemberData").Item("mlb2019") = True
		             REM ATTENTION! ATTENTION! ATTENTION!
                     REM When launching 2021 add Session("MemberData").Item("mlb2020") = True above!
		             If Now > DateValue("1/1/20") Then 'And change the date left to '1/1/21'
		                REM ATTENTION! ATTENTION! ATTENTION!
                        REM When launching 2021 replace the below to Session("MemberData").Item("mlb2021") = True!
		                Session("MemberData").Item("mlb2020") = True
		             End If
					 Session("MemberData").Item("mlb2018") = True
					 Session("MemberData").Item("mlb2012") = True
		             Session("MemberData").Item("mlb2011") = True
					 Session("MemberData").Item("mlb2010") = True
		             Session("MemberData").Item("mlb2009") = True
		             Session("MemberData").Item("mlb2003") = True
					 Session("MemberData").Item("mlb") = True
					 Session("MemberData").Item("mlb2008") = True	
		        Case "2" Session("MemberData").Item("spring") = True
		        Case "3" Session("MemberData").Item("alls") = True
		        Case "4" Session("MemberData").Item("world") = True
		        Case "5" Session("MemberData").Item("coop") = True
		        Case "6" Session("MemberData").Item("mascot") = True
		        Case "7" Session("MemberData").Item("minor") = True
		        Case "8" Session("MemberData").Item("trend") = True
		        Case "9" Session("MemberData").Item("creative") = True
				Case "10" Session("MemberData").Item("marketing") = True
				Case "11" Session("MemberData").Item("restricted") = True
                Case "12" Session("MemberData").Item("opening") = True
                Case "13" Session("MemberData").Item("mascotbabies") = True
                Case "14" Session("MemberData").Item("pressbox") = True
                Case "15" Session("MemberData").Item("playball") = True
                Case "16" Session("MemberData").Item("sponsors") = True
				Case "17" Session("MemberData").Item("london") = True
				Case "18" Session("MemberData").Item("restricted2") = True
				Case "19" Session("MemberData").Item("restricted3") = True
		        Case Else
		    End Select
            oRsLicenseeSitelets.MoveNext
        Loop
    Else
        Response.Redirect("/default.asp?c=expired")
    End If
    
    
End Sub
%>