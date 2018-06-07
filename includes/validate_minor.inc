<%
if not Session("MemberData").Item("minor") then
	Response.Redirect("/default.asp")
end if
%>