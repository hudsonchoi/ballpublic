<%
if not Session("MemberData").Item("marketing") then
	Response.Redirect("/default.asp")
end if
%>