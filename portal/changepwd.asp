<html>
<head>
<title>:: MLB Style Guides ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#404040" leftmargin="0" topmargin="0" marginwidth="0" text="#CCCCCC" marginheight="0" link="#FFFFFF" vlink="#FFFFFF" alink="#FF0000" background="images/404040.gif">
<form method="post" action="xt_changepwd.asp" name="login">
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td><img src="images/inv.gif" width="1" height="30"></td>
    <td width="100">&nbsp;</td>
  </tr>
  <tr> 
    <td><img src="images/portal_head_password.gif" width="360" height="89"></td>
    <td width="100">&nbsp;</td>
  </tr>
    <tr> 
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
      <td align="center">  
        <table border="0" cellspacing="0" cellpadding="1" bgcolor="#333333">
          <tr> 
            <td>
              <table border="0" cellspacing="0" cellpadding="4">
                <tr> 
                  <td bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif">Email:</font></td>
                </tr>
                <tr> 
                  <td bgcolor="#464646"><font face="Arial, Helvetica, sans-serif" size="2"> 
                    <input type="text" name="email" value="<% If Not isEmpty (Request.Cookies("Insensitive")("Email")) Then 
		Response.Write(Request.Cookies("Insensitive")("Email"))
   End If%>" size="20">
                    </font></td>
                </tr>
                <tr> 
                  <td bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif">Old 
                    Password:</font></td>
                </tr>
                <tr> 
                  <td bgcolor="#464646"><font face="Arial, Helvetica, sans-serif" size="2"> 
                    <input type="password" name="oldpwd" size="20">
                    </font></td>
                </tr>
              </table>
               
            </td>
          </tr>
        </table>
        <img src="images/inv.gif" width="10" height="5"><br>
		<b><font face="Arial, Helvetica, sans-serif" color="red" size="2"> 
        <%Dim msg
	If Request.QueryString("c")="invalid" Then 
		msg="Invalid old password...<br>"
	ElseIf Request.QueryString("c")="nomatch" Then 	 
		msg="Passwords do not match...<br>"	 
	ElseIf Request.QueryString("c")="empty" Then 	 
		msg="New password must be more<br>than one character...<br>"	 
	Else
		msg=""	
	End If%>
        <%=msg%></font></b>
		<img src="images/inv.gif" width="10" height="5"><br>
        <table border="0" cellspacing="0" cellpadding="1" bgcolor="#333333">
          <tr> 
            <td>
              <table border="0" cellspacing="0" cellpadding="4">
                <tr> 
                  <td bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif">New 
                    Password:</font></td>
                </tr>
                <tr> 
                  <td bgcolor="#464646"><font face="Arial, Helvetica, sans-serif" size="2"> 
                    <input type="password" id="password" name="newpwd" size="20">
                    </font></td>
                </tr>
                <tr> 
                  <td bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif">Confirm 
                    New Password:</font></td>
                </tr>
                <tr> 
                  <td bgcolor="#464646"><font face="Arial, Helvetica, sans-serif" size="1"> 
                    <input type="password" id="password" name="newpwd2" size="20">
                    </font></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
          
        <img src="images/inv.gif" width="10" height="10"><br>
        <input type="image" border="0" name="Submit" src="images/portal_button_CHANGEMYEMAIL.gif" width="159" height="18">
      </td>
  </tr>
</table>
<br> </form>
</body>
 
</html>
