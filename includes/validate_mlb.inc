<%
if not Session("MemberData").Item("mlb") then
	Response.Redirect("/default.asp")
end if
%>