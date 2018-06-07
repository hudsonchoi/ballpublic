<%
if not Session("MemberData").Item("super") then
	Response.Redirect("/default.asp")
end if
%>