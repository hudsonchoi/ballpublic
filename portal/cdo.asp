<html>
<body>
<h1>CDO</h1>
<%
Set myMail=CreateObject("CDO.Message")
myMail.Subject="Sending email with CDO"
myMail.From="mymail@mydomain.com"
myMail.To="hudsonchoi@gmail.com"
myMail.TextBody="This is a message."
myMail.Send
set myMail=nothing
%>
