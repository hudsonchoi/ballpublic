<%
if not Session("MemberData").Item("world") then
	Response.Redirect("/default.asp")
end if
%>