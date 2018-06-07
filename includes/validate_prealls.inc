<%
if not Session("MemberData").Item("prealls") then
	Response.Redirect("/default.asp")
end if
%>