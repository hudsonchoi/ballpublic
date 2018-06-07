<%
if not Session("MemberData").Item("opening") then
	Response.Redirect("/default.asp")
end if
%>