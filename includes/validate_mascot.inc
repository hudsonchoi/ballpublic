<%
if not Session("MemberData").Item("mascot") then
	Response.Redirect("/default.asp")
end if
%>