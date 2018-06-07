<%
if isEmpty (Session("admin")) then
	Response.Redirect("/admin/login.asp")
end if
%>