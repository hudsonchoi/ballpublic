<%@ Language=VBScript %>
<% Option Explicit %>
<!-- #include virtual="/includes/Adovbs.inc" -->
<%
Dim oConn, oRs, oRsLicenseeSitelet, oRsLegacySitelet
Dim myErr, strSQL, sSQLLegacySitelet, myTarget
Dim em, pr
Dim myCompany, myID, myContract, myMlb, myMinor, myAlls, myCoop, myWorld, myMascot, mySpring, myTrend, mySuper, myMlb2003, myBulkReg, myUserName, myPassword, myCreative, myAlls2007
'New Security 022808
Dim myUserLevel, myUserCategory, myRequestorID, myFromDate, myToDate, myAllowedYear
Dim myUID

myCompany = Session("Legacy").Item("Company")
myID = Session("Legacy").Item("ID")
myContract = Session("Legacy").Item("Contract")
myUserName = Session("Legacy").Item("UserName")
myPassword = Session("Legacy").Item("Password")
		
myMlb = Session("Legacy").Item("Mlb")
myMinor = Session("Legacy").Item("Minor")
myAlls = Session("Legacy").Item("Alls")
myCoop = Session("Legacy").Item("Coop")
myWorld = Session("Legacy").Item("World")
myMascot = Session("Legacy").Item("Mascot")
mySpring = Session("Legacy").Item("Spring")
myTrend = Session("Legacy").Item("Trend")
mySuper = Session("Legacy").Item("Super")
myMlb2003 = Session("Legacy").Item("Mlb2003")
myCreative = Session("Legacy").Item("Creative")
myAlls2007 = Session("Legacy").Item("Alls2007")

myBulkReg = Session("Legacy").Item("BulkReg")


'New Security 022808
myID = Session("Legacy").Item("ID")
myUserLevel = Session("Legacy").Item("UserLevel")
myUserCategory = Session("Legacy").Item("UserCategory")
myRequestorID = Session("Legacy").Item("RequestorID")
myFromDate = Session("Legacy").Item("FromDate")
myToDate = Session("Legacy").Item("ToDate")
myAllowedYear = Session("Legacy").Item("AllowedYear")
		
		
	
em=1 'The flag for the vaild email address format
pr=1 'The flag for checking primary key constraint
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open Application("DB_ConnectionString")

On Error Resume Next
myErr = 0
myErr = ValidateUserInfo()
If myErr > 0 Then
	myTarget = "./reregister.asp" & "?err=" & CStr(myErr) & "&pr=" & CStr(pr) & "&em=" & CStr(em)
	Response.Redirect myTarget
Else 
	Set oRs = Server.CreateObject("ADODB.Recordset")
	oRs.Open "licensee", oConn, adOpenKeyset, adLockPessimistic, adCmdTable
	oRs.AddNew
	oRs.Fields("FirstName") = Request.Form("FirstName")
	oRs.Fields("MI") = Request.Form("Middlei")	
	oRs.Fields("LastName") = Request.Form("LastName")
	oRs.Fields("Company") = myCompany
	oRs.Fields("Contract") = myContract
	'oRs.Fields("Contract") = Request.Form("Contract")
	oRs.Fields("Address1") = Request.Form("Address1")
	oRs.Fields("Address2") = Request.Form("Address2")
	oRs.Fields("City") = Request.Form("City")
	If Request.Form("State") = "Select a State" then 'When state is NOT seleceted, get Province data!
		oRs.Fields("State") = Request.Form("Province")
	else 
		oRs.Fields("State") = Request.Form("State")
	end if
	'oRs.Fields("State") = Request.Form("State")
	oRs.Fields("Zip") = Request.Form("Zip")
	oRs.Fields("Phone") = Request.Form("Phone")
	oRs.Fields("Fax") = Request.Form("Fax")
	oRs.Fields("Country") = Request.Form("Country")
	oRs.Fields("Email") = Request.Form("Email")
	oRs.Fields("Password") = Request.Form("Password")
	oRs.Fields("RegistrationDate") = now()
	oRs.Fields("Mlb") = myMlb
	oRs.Fields("Minor") = myMinor
	oRs.Fields("Alls") = myAlls
	oRs.Fields("Coop") = myCoop
	oRs.Fields("World") = myWorld
	oRs.Fields("Mascot") = myMascot
	oRs.Fields("Spring") = mySpring
	oRs.Fields("Trend") = myTrend
	oRs.Fields("Super") = mySuper
	oRs.Fields("Mlb2003") = myMlb2003
	oRs.Fields("Creative") = myCreative
	oRs.Fields("Alls2007") = myAlls2007
	REM Even though the default value is set at SQL Server, did it just in case e.g. trasferring table loosing default value etc.
	oRs.Fields("MlbLoginCount") = 0
	oRs.Fields("MinorLoginCount") = 0
	oRs.Fields("CoopLoginCount") = 0
	oRs.Fields("AllsLoginCount") = 0
	oRs.Fields("WorldLoginCount") = 0
	oRs.Fields("MascotLoginCount") = 0
	oRs.Fields("SpringLoginCount") = 0
	oRs.Fields("TrendLoginCount") = 0
	oRs.Fields("SuperLoginCount") = 0
	oRs.Fields("Mlb2003LoginCount") = 0
	oRs.Fields("CreativeLoginCount") = 0
	oRs.Fields("Alls2007LoginCount") = 0
	oRs.Fields("cid") = myID
	
	
	'New Security 022808
    oRs.Fields("UserLevel") = myUserLevel
    oRs.Fields("UserCategory") = myUserCategory
    oRs.Fields("RequestorID") = myRequestorID
    oRs.Fields("FromDate") = myFromDate
    oRs.Fields("ToDate") = myToDate
    oRs.Fields("AllowedYear") = myAllowedYear

	oRs.Update
	myUID = oRs("ID")
	
	Set oRsLicenseeSitelet = Server.CreateObject("ADODB.Recordset")
	oRsLicenseeSitelet.Open "licensee2sitelets", oConn, adOpenKeyset, adLockPessimistic, adCmdTable
	
	'oRsLicenseeSitelet.Fields("uid") = Request.Form("FirstName")
	
	
	
    Set oRsLegacySitelet = Server.CreateObject("ADODB.Recordset")
    sSQLLegacySitelet = "select * from legacyusers2sitelets where cid = "& myID 
    oRsLegacySitelet.Open sSQLLegacySitelet, oConn, adOpenStatic, adLockPessimistic, adCmdText
    
    Do while not oRsLegacySitelet.EOF
        oRsLicenseeSitelet.AddNew
        oRsLicenseeSitelet("uid") = myUID
        oRsLicenseeSitelet("sid") = oRsLegacySitelet("sid")
        oRsLicenseeSitelet.Update
        oRsLegacySitelet.MoveNext
    Loop
    

	If Err.number <> 0 Then
		REM Err handling when anything happens to DB server sending email the data to the admin
		Set myMail=CreateObject("CDO.Message")
        myMail.Subject="The error has just been 'FIRED' at www.mlbstyleguide/admin/usr/xt_reregister.asp"
        myMail.From="www.mlbstyleguide.com"
        myMail.To="hudsonchoi@gmail.com"
	
		strBody = "Err.Description: " & Err.Description & "<br>" & Chr(10)
		strBody = strBody & "Err.Source: " & Err.Source & "<br><br>" & Chr(10) & Chr(10)
		strBody = strBody & "The licensee missed (Gotta be stored to db manually!!!):<br><br>" & Chr(10) & Chr(10)
		strBody = strBody & "FristName:" & Request.Form("FirstName") & "<br>" & Chr(10)
		strBody = strBody & "MI:" & Request.Form("Middlei") & "<br>" & Chr(10)
		strBody = strBody & "LastName:" & Request.Form("LastName") & "<br>" & Chr(10)
		strBody = strBody & "Company:" & Request.Form("Company")& "<br>" & Chr(10)
		strBody = strBody & "Contract:" & myContract & "<br>" & Chr(10)
		strBody = strBody & "Address1:" & Request.Form("Address1") & "<br>" & Chr(10)
		strBody = strBody & "Address2:" & Request.Form("Address2") & "<br>" & Chr(10)
		strBody = strBody & "City:" & Request.Form("City") & "<br>" & Chr(10)
		strBody = strBody & "State:" & Request.Form("State") & "<br>" & Chr(10)
		strBody = strBody & "Zip:" & Request.Form("Zip") & "<br>" & Chr(10)
		strBody = strBody & "Phone:" & Request.Form("Phone") & "<br>" & Chr(10)
		strBody = strBody & "Fax:" & Request.Form("Fax") & "<br>" & Chr(10)
		strBody = strBody & "Country:" & Request.Form("Country") & "<br>" & Chr(10)
		strBody = strBody & "RegistrationDate:" & now() & "<br>" & Chr(10)
		strBody = strBody & "Email:" & Request.Form("Email") & "<br>" & Chr(10)
		strBody = strBody & "Password:" & Request.Form("Password") & "<br>" & Chr(10)
		strBody = strBody & "Mlb2002:" & myMlb & "<br>" & Chr(10)
		strBody = strBody & "Minor:" & myMinor & "<br>" & Chr(10)
		strBody = strBody & "Alls:" & myAlls & "<br>" & Chr(10)
		strBody = strBody & "Coop:" & myCoop & "<br>" & Chr(10)
		strBody = strBody & "World:" & myWorld & "<br>" & Chr(10)
		strBody = strBody & "Mascot:" & myMascot & "<br>" & Chr(10)
		strBody = strBody & "Spring:" & mySpring & "<br>" & Chr(10)
		strBody = strBody & "Trend:" & myTrend & "<br>" & Chr(10)
		strBody = strBody & "Super:" & mySuper & "<br>" & Chr(10)
		strBody = strBody & "Mlb2003:" & myMlb2003 & "<br>" & Chr(10)
		strBody = strBody & "Creative:" & myCreative & "<br>" & Chr(10)
		strBody = strBody & "Alls2007:" & myAlls2007 
		
		myMail.HTMLBody =strBody
        myMail.Send
        set myMail=nothing

		Session("UserReEntryErrors").removeAll
		Session("UserReEntryData").removeAll

		oRs.Close
		Set oRs = Nothing
		oRsLicenseeSitelet.Close
		Set oRsLicenseeSitelet = Nothing
		oRsLegacySitelet.Close
		Set oRsLegacySitelet = Nothing	
		oConn.Close
		Set oConn = Nothing
		if myBulkReg then
			Response.Redirect("./confirm.asp?usr=b&e="&Server.URLEncode(Request.Form("Email"))&"&np="&Server.URLEncode(Request.Form("Password"))&"&u="&Server.URLEncode(myUserName)&"&op="&Server.URLEncode(myPassword))'Nobody knows the problem but the admin
		else
			Response.Redirect("./confirm.asp?usr=a&e="&Server.URLEncode(Request.Form("Email"))&"&np="&Server.URLEncode(Request.Form("Password"))&"&u="&Server.URLEncode(myUserName)&"&op="&Server.URLEncode(myPassword))'Nobody knows the problem but the admin
		end if

	End If
	Session("MemberData").Item("FirstName") = Request.Form("FirstName")
	Session("MemberData").Item("LastName") = Request.Form("LastName")
	Session("MemberData").Item("Email") = Request.Form("Email")

	Response.Cookies("Insensitive")("Email") = Session("MemberData").Item("Email")'To be filled into user name field at login page ...
	Response.Cookies("Insensitive")("FirstName") = Session("MemberData").Item("FirstName")
	Response.Cookies("Insensitive").expires = #1/18/2038 00:00:00#

	Dim myMail, strName, strBody


    Set myMail=CreateObject("CDO.Message")
    myMail.Subject="Welcome to www.mlbstyleguide.com!"
    myMail.From="info@mlbstyleguide.com"
    myMail.To=Request.Form("Email")
	
	strBody = "Hello "& Request.Form("FirstName") & " " & Request.Form("LastName") & ",<br><br>" & Chr(10) & Chr(10)
	strBody = strBody & "Thank you for "
	strBody = strBody & "registering at www.mlbstyleguide.com.<br><br>" & Chr(10) & Chr(10)
	strBody = strBody & "Use your login information below:<br><br>" & Chr(10) & Chr(10)
	strBody = strBody & "Email: "& Request.Form("Email") & "<br>" & Chr(10)
	strBody = strBody & "Password: "& Request.Form("Password") & "<br><br>" & Chr(10) & Chr(10)
	strBody = strBody & "You can login at <a href=""" & "http://" & Request.ServerVariables("SERVER_NAME") & "/default.asp?e=" & Server.URLEncode(Request.Form("Email")) & """>http://"&Request.ServerVariables("SERVER_NAME")&"</a><br><br>" & chr(10) & chr(10)
	strBody = strBody & "If you have any questions or need any other assistance, please contact us at <a href=""" & "mailto:info@mlbstyleguide.com"& """>info@mlbstyleguide.com</a>.<br><br>"  & Chr(10) & Chr(10)
	strBody = strBody & "The MLB Style Guide Team<br>" & Chr(10)
	strBody = strBody & "<a href=""" & "http://" & Request.ServerVariables("SERVER_NAME") &""">http://" & Request.ServerVariables("SERVER_NAME") & "</a>"

	myMail.HTMLBody =strBody
    myMail.Send
    set myMail=nothing

		
	Session("UserReEntryErrors").removeAll
	Session("UserReEntryData").removeAll
	If Err.number = 0 Then
		REM Subtract 'limit' from legacyusers - removed
		'oRs.Close
		'strSQL = "select Limit from legacyusers where UserName='" & Session("Legacy").Item("UserName") & "'" &_
		'" and Password = '" & Session("Legacy").Item("Password") & "'"
		'oRs.Open strSQL, oConn, adOpenKeyset, adLockPessimistic, adCmdText
		'oRs("Limit") = oRs("Limit") - 1
		'oRs.Update
		'oRs.Close
		'Set oRs = Nothing
		'oConn.Close
		'Set oConn = Nothing
	Else
		oRs.Close
		Set oRs = Nothing
		oConn.Close
		Set oConn = Nothing
		Response.Redirect ("./sorry.asp?err="&Server.URLEncode(Err.Description))
	End If
	
	if myBulkReg then
		Response.Redirect("./confirm.asp?usr=b&e="&Server.URLEncode(Request.Form("Email"))&"&np="&Server.URLEncode(Request.Form("Password"))&"&u="&Server.URLEncode(myUserName)&"&op="&Server.URLEncode(myPassword))
	else
		Response.Redirect("./confirm.asp?usr=a&e="&Server.URLEncode(Request.Form("Email"))&"&np="&Server.URLEncode(Request.Form("Password"))&"&u="&Server.URLEncode(myUserName)&"&op="&Server.URLEncode(myPassword))
	end if
		
	REM When the email is syntactically ok but not working technically.. 
	'elseif inStr (Mailer.Response, "503") then 
		REM Since the email is the primary key, delete the record out of db!
	'	oConn.Execute "DELETE FROM licensee WHERE Email = '"&Request.Form("Email")&"'"
	'	oRs.Close
	'	Set oRs = Nothing
	'	oConn.Close
	'	Set oConn = Nothing
	'	Response.Redirect ("./reregister.asp?err=1&em=2")

End If

'''''''''''''''''''''''''''''''''''''''''''''

Function ValidateUserInfo()
			
	Set oRs = Server.CreateObject("ADODB.Recordset")
	'oRs.Open "select * from licensee where UserName = '" & Replace(Request.Form("username"),"'","''") & "'", oConn, adOpenStatic, adLockPessimistic, adCmdText
	oRs.Open "select * from licensee where Email = '" & Replace(Trim(Request.Form("Email")),"'","''") & "'", oConn, adOpenStatic, adLockPessimistic, adCmdText 'The email became the primary key 021501
	
	'If Len(Request.Form("username")) < 1 Then
	'	Session("UserReEntryErrors").Item("UserName") =  "flag"
	'	myErr = myErr + 1
	'ElseIf oRs.RecordCount = 1 Then
	'	Session("UserReEntryErrors").Item("UserName") =  "flag"
	'	Session("UserReEntryData").Item("UserName") = Request.Form("username")	
	'	myErr = myErr + 1
	'	un=0
	'Else
	'	Session("UserReEntryErrors").Item("UserName") = ""
	'	Session("UserReEntryData").Item("UserName") = Request.Form("username")
	'End If
	If Len(Request.Form("FirstName")) < 1 Then
		Session("UserReEntryErrors").Item("FirstName") =  "flag"
		myErr = myErr + 1
	Else
		Session("UserReEntryErrors").Item("FirstName") = ""
		Session("UserReEntryData").Item("FirstName") = Request.Form("FirstName")
	End If
	
	If Len(Request.Form("LastName")) < 1 Then
		Session("UserReEntryErrors").Item("LastName") =  "flag"
		myErr = myErr + 1
	Else
		Session("UserReEntryErrors").Item("LastName") = ""
		Session("UserReEntryData").Item("LastName") = Request.Form("LastName")
	End If

	'If Len(Request.Form("company")) < 1 Then
	'	Session("UserReEntryErrors").Item("company") =  "flag"
	'	myErr = myErr + 1
	'Else
	'	Session("UserReEntryErrors").Item("company") = ""
	'	Session("UserReEntryData").Item("company") = Request.Form("company")
	'End If	

	'If Len(Request.Form("Contract")) < 1 Then
	'	Session("UserReEntryErrors").Item("Contract") =  "flag"
	'	myErr = myErr + 1
	'Else
	'	Session("UserReEntryErrors").Item("Contract") = ""
	'	Session("UserReEntryData").Item("Contract") = Request.Form("Contract")
	'End If
	
	If Len(Request.Form("Phone")) < 1 Then
		Session("UserReEntryErrors").Item("Phone") =  "flag"
		myErr = myErr + 1
	Else
		Session("UserReEntryErrors").Item("Phone") = ""
		Session("UserReEntryData").Item("Phone") = Request.Form("Phone")
	End If	
	If Len(Request.Form("address1")) < 1 Then
		Session("UserReEntryErrors").Item("address1") =  "flag"
		myErr = myErr + 1
	Else
		Session("UserReEntryErrors").Item("address1") = ""
		Session("UserReEntryData").Item("address1") = Request.Form("address1")
	End If
		
	If Len(Request.Form("city")) < 1 Then
		Session("UserReEntryErrors").Item("city") =  "flag"
		myErr = myErr + 1
	Else
		Session("UserReEntryErrors").Item("city") = ""
		Session("UserReEntryData").Item("city") = Request.Form("city")
	End If

	'If Len(Request.Form("state")) < 1 Then
	If Request.Form("State") = "Select a State" and Len(Request.Form("Province")) < 1 Then
		Session("UserReEntryErrors").Item("state") =  "flag"
		myErr = myErr + 1
	Else
		Session("UserReEntryErrors").Item("state") = ""
		Session("UserReEntryData").Item("state") = Request.Form("state")
	End If

	If Len(Request.Form("zip")) < 1 Then
		Session("UserReEntryErrors").Item("zip") =  "flag"
		myErr = myErr + 1
	Else
		Session("UserReEntryErrors").Item("zip") = ""
		Session("UserReEntryData").Item("zip") = Request.Form("zip")
	End If

	If Request.Form("Country") = "Select a Country" Then
		Session("UserReEntryErrors").Item("country") =  "flag"
		myErr = myErr + 1
	Else
		Session("UserReEntryErrors").Item("country") = ""
		Session("UserReEntryData").Item("country") = Request.Form("country")
	End If
	
	'If Len(Request.Form("keyword")) < 1 Then
	'	Session("UserReEntryErrors").Item("keyword") =  "flag"
	'	myErr = myErr + 1
	'Else
	'	Session("UserReEntryErrors").Item("keyword") = ""
	'	Session("UserReEntryData").Item("keyword") = Request.Form("keyword")
	'End If
		
	If Len(Request.Form("Email")) < 1 Then
		Session("UserReEntryErrors").Item("Email") =  "flag"
		myErr = myErr + 1
	ElseIf InStr (1, Request.Form("Email"), "@") <= 1 or _
		InStr (1, Request.Form("Email"), "@") = Len (Request.Form("Email")) or _
		InStr (1, Request.Form("Email"), ".") = 0 Then
		Session("UserReEntryData").Item("Email") = Request.Form("Email")
		Session("UserReEntryErrors").Item("Email") =  "flag"
		myErr = myErr + 1
		em=0
	elseif oRs.RecordCount = 1 Then
		Session("UserReEntryErrors").Item("Email") =  "flag"
		Session("UserReEntryData").Item("Email") = Request.Form("Email")	
		myErr = myErr + 1
		pr=0
	else
		Session("UserReEntryErrors").Item("Email") = ""
		Session("UserReEntryData").Item("Email") = Request.Form("Email")
	End If
	
	If Len(Request.Form("Password")) < 1 Then
		Session("UserReEntryErrors").Item("Password") =  "flag"
		myErr = myErr + 1
	Else
		Session("UserReEntryErrors").Item("Password") = ""
		Session("UserReEntryData").Item("Password") = Request.Form("Password")
	End If
	
	REM Put the non required field into the session variable for user convenience
	Session("UserReEntryData").Item("Middlei") = Request.Form("Middlei")	
	Session("UserReEntryData").Item("Address1") = Request.Form("Address1")
	Session("UserReEntryData").Item("Address2") = Request.Form("Address2")
	Session("UserReEntryData").Item("City") = Request.Form("City")
	Session("UserReEntryData").Item("State") = Request.Form("State")
	Session("UserReEntryData").Item("Zip") = Request.Form("Zip")
	Session("UserReEntryData").Item("Fax") = Request.Form("Fax")
	Session("UserReEntryData").Item("Country") = Request.Form("Country")
	Session("UserReEntryData").Item("Province") = Request.Form("Province")
	
	oRs.Close
	Set oRs = Nothing
	
	ValidateUserInfo = myErr
	
End Function



%>

