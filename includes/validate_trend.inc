<%
if not Session("MemberData").Item("trend") then
	Response.Redirect("/default.asp")
end if
%>