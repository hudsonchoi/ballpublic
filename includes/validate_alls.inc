<%
if not Session("MemberData").Item("alls") then
	Response.Redirect("/default.asp")
end if
%>