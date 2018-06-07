<%
if isEmpty (Session("Legacy").Item("UserName")) then
	Response.Redirect("/default.asp")
end if
%>