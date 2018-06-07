<%
if not Session("MemberData").Item("restricted") then
	Response.Redirect("/default.asp")
end if
%>