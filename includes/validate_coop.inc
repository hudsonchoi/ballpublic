<%
if not Session("MemberData").Item("coop") then
	Response.Redirect("/default.asp")
end if
%>