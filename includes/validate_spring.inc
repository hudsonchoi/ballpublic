<%
if not Session("MemberData").Item("spring") then
	Response.Redirect("/default.asp")
end if
%>