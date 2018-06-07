<html>
<head>
<title>:: MLB Style Guides ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#404040" leftmargin="0" topmargin="0" marginwidth="0" text="#CCCCCC" marginheight="0" link="#FFFFFF" vlink="#FFFFFF" alink="#FF0000" background="images/404040.gif">
<form method="post" action="xt_forgotpwd.asp" name="login">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td><img src="images/inv.gif" width="1" height="30"></td>
      <td width="100">&nbsp;</td>
    </tr>
    <tr> 
      <td><img src="images/portal_head_forgot.gif" width="220" height="89"></td>
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
      <td><b><font face="Arial, Helvetica, sans-serif" color="red" size="2">
        <%Dim msg
	If not isEmpty (Request.QueryString("c")) Then 
		msg="Invalid email..."	
	End If%>
        <%=msg%></font></b><br>
        <font size="2" face="Arial, Helvetica, sans-serif"> Please enter your 
        email address below.<br>
        Your password will be emailed to that address.</font><br>
        <br>
        <table border="0" cellspacing="0" cellpadding="1" bgcolor="#333333">
          <tr> 
            <td> 
              <table border="0" cellspacing="0" cellpadding="4">
                <tr> 
                  <td bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif">Email:</font></td>
                </tr>
                <tr> 
                  <td bgcolor="#464646"><font face="Arial, Helvetica, sans-serif" size="2"> 
                    <input type="text" name="Email" value="<% If Not isEmpty (Request.Cookies("Insensitive")("Email")) Then 
		Response.Write(Request.Cookies("Insensitive")("Email"))
   End If%>" size="25">
                    </font></td>
                </tr>
                <tr> 
                  <td bgcolor="#464646"><font face="Arial, Helvetica, sans-serif" size="2"> 
                    <input type="image" border="0" name="Submit" src="images/portal_button_SENDEMAIL.gif" width="95" height="18">
                    </font></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  </form>
</body>
 
</html>
