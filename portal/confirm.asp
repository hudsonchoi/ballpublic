<html>
<head>
<title>:: MLB Style Guides ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#404040" leftmargin="0" topmargin="0" marginwidth="0" text="#CCCCCC" marginheight="0" link="#FFFFFF" vlink="#FFFFFF" alink="#FF0000" background="images/404040.gif">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td><img src="images/inv.gif" width="1" height="30"></td>
      <td width="100">&nbsp;</td>
    </tr>
    <tr> 
      <td><%If Request.Querystring("usr") ="m" Then%><img src="images/portal_head_password.gif" width="360" height="89"><% ElseIf Request.Querystring("usr") ="a" Then%><img src="images/portal_head_reregistration.gif" width="542" height="89"><% ElseIf Request.Querystring("usr") ="f" Then%><img src="images/portal_head_forgot.gif" width="220" height="89"><% ElseIf Request.Querystring("usr") ="b" Then%><img src="images/portal_head_registration.gif" width="542" height="89"><% end if %></td>
      <td width="100">&nbsp;</td>
    </tr><tr> 
    <td valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td valign="top"><img src="images/portal_arrow.gif" width="397" height="77"></td>
          <td valign="top"><img src="images/portal_majorleaguestyleguid.gif" width="362" height="77"></td>
        </tr>
      </table>
    </td>
    <td width="100%" valign="top"> 
      <!--#include virtual="/includes/tablefill.ssi" -->
    </td>
    </tr>
  </table>
 
<table border="0" cellspacing="0" cellpadding="0">
  <tr valign="top"> 
    <td><img src="images/inv.gif" width="397" height="1"></td>
    <td><img src="images/portal_dottedline.gif" width="17" height="233"></td>
    <td>
      <font size="2" face="Arial, Helvetica, sans-serif"> 
      <% If Request.Querystring("usr") ="m" Then%>
      <font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif"><br>Your 
      password has been changed successfully!</font><br>
      <br>
      <a href="/default.asp"><font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif">Return 
      to Welcome Page</font></a><br>
      <% ElseIf Request.Querystring("usr") ="a" or Request.Querystring("usr") ="b" Then%>
      <font face="Arial, Helvetica, sans-serif" size="4" color="red">IMPORTANT!</font><br>
      <br>
      <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">YOU HAVE 
      SUCCESSFULLY 
      <%if Request.Querystring("usr") ="a" then %>
      RE-REGISTERED 
      <%else%>
      REGISTERED 
      <%end if%>
      !!!!<br>
      This is your new login info. <br>
      <b><br>
      </b></font></font> 
      <table border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" width="250">
        <tr>
          <td>
            <table border="0" cellspacing="2" cellpadding="5" width="250">
              <tr> 
                <td bgcolor="#000000"><b><font size="2" face="Arial, Helvetica, sans-serif" color="#666666"><font size="1">EMAIL 
                  ADDRESS:</font></font><font size="2" face="Arial, Helvetica, sans-serif"><br>
                  <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"><%=Request.QueryString("e")%>&nbsp;</font></font></b></td>
              </tr>
              <tr> 
                <td bgcolor="#000000"><b><font size="2" face="Arial, Helvetica, sans-serif" color="#666666"><font size="1">PASSWORD:</font></font><font size="2" face="Arial, Helvetica, sans-serif"><br>
                  <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"><%=Request.QueryString("np")%>&nbsp;</font></font></b></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <font size="2" face="Arial, Helvetica, sans-serif"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"><br>
      DO NOT use the old username and password to log in.<br>
      <br>
      </font></font>
      <table border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" width="250">
        <tr> 
          <td> 
            <table border="0" cellspacing="2" cellpadding="5" width="250">
              <tr> 
                <td bgcolor="#000000"><font size="2" face="Arial, Helvetica, sans-serif"><s><font size="2" face="Arial, Helvetica, sans-serif"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"><%=Request.QueryString("u")%></font></font></s></font></td>
              </tr>
              <tr> 
                <td bgcolor="#000000"><font size="2" face="Arial, Helvetica, sans-serif"><s><font size="2" face="Arial, Helvetica, sans-serif"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"><%=Request.QueryString("op")%></font></font></s></font></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <font size="2" face="Arial, Helvetica, sans-serif"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"><br>
      If you do use the old username and password you will be taken<br>
      to the 
      <%if Request.Querystring("usr") ="a" then %>
      re-registration 
      <%else%>
      registration 
      <%end if%>
      screen again, and again, and again. <br>
      <br>
      Thank You, <br>
      </font> <br>
      <a href="/default.asp"><font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif">Return 
      to Welcome Page</font></a><br>
      <% ElseIf Request.Querystring("usr") ="f" Then%>
      <font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"> Your 
      password has been sent to<br>
      <b><font color="#cc9900"><%=Request.QueryString("e")%></font></b> successfully!</font><br>
      <br>
      <a href="/default.asp"><font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif">Return 
      to Home</font></a><br>
      <% end if %>
      <br>
      </font></td>
  </tr>
</table>
<% a=b REM Test%>
</body>
 </html>
