<%@ Language=VBScript %>
<!--#include virtual = "/includes/validate_portal.inc" -->
<%
on error resume next

Dim Legacy, myBulkReg, myAddress1, myAddress2, myCity, myState, myZip, myCountry
Set UserReEntryErrors = Session("UserReEntryErrors")
Set UserReEntryData = Session("UserReEntryData")
Set Legacy = Session("Legacy")
DIM stateArray, bUsState, aState
stateArray = Array ("Select a State","AL","AK","AZ","AR","CA","CO","CT","DE","DC","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY")

myBulkReg = Legacy.Item("BulkReg")
myAddress1 = Legacy.Item("Address1")
myAddress2 = Legacy.Item("Address2")
myCity = Legacy.Item("City")
myState = Legacy.Item("State")
myZip = Legacy.Item("Zip")
myCountry = Legacy.Item("Country")
%>
<html>
<head>
<title>:: MLB Style Guides ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#404040" leftmargin="0" topmargin="0" marginwidth="0" text="#CCCCCC" marginheight="0" link="#FFFFFF" vlink="#FFFFFF" alink="#FF0000" background="images/404040.gif">
<form method="post" action="./xt_reregister.asp" name="adduser1">
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td><img src="images/inv.gif" width="1" height="30"></td>
    <td width="100">&nbsp;</td>
  </tr>
  <tr><td><% if Legacy.Item("BulkReg") then %><img src="images/portal_head_registration.gif" width="542" height="89"><% else %><img src="images/portal_head_reregistration.gif" width="542" height="89"><% end if %></td>
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
<%If Request.QueryString("err") <> "" Then %>
<table border="0" cellspacing="0" cellpadding="1" bgcolor="#333333" width="330">
          <tr>
            <td>
            <table border="0" cellspacing="0" cellpadding="10" bgcolor="#464646" width="330">
                <tr> 
                  <td><font size="2" face="Arial, Helvetica, sans-serif"><%
                    If Request.QueryString("err") = "1" Then
						Response.Write("<b><font face=Arial, Helvetica, sans-serif size=2 color=CC9900>There is an error.<br>Please complete the missing information below.</font></b><br><br>")
					Else 
						Response.Write("<b><font face=Arial, Helvetica, sans-serif size=2 color=CC9900>There are " & Request.QueryString("err") & " errors.<br>Please complete the missing info.</font></b><br><br>")
					End If
					%>
		</font></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
<%end if%>
  <table border="0" cellspacing="0" cellpadding="0">
    <tr valign="top"> 
      <td><img src="images/inv.gif" width="47" height="1"></td>
      <td width="350"><img src="images/inv.gif" width="350" height="1"><br>
        <font size="2" face="Arial, Helvetica, sans-serif"> </font>
         <input type="hidden" name="formname" value="adduser.asp">
<% if not isEmpty (Request.Cookies("Insensitive")("Email")) and not Legacy.Item("BulkReg") then %>
        <table border="0" cellspacing="0" cellpadding="1" bgcolor="#333333" width="330">
          <tr>
            <td>
              <table border="0" cellspacing="0" cellpadding="10" bgcolor="#464646" width="330">
                <tr> 
                  <td><font size="2" face="Arial, Helvetica, sans-serif">
			It seems that you have re-registered before.<br>
                    Please, make sure if you really want to re-register AGAIN. 
                    If not, <a href="javascript:history.back()">go back</a> to 
                    the previous page and use your Email & Password instead.<br>
                    <br>
		</font></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
 <% end if %>
 
<% if Legacy.Item("Minorleaguestyleguide") then %>
        <table border="0" cellspacing="0" cellpadding="1" bgcolor="#333333" width="330">
          <tr>
            <td>
              <table border="0" cellspacing="0" cellpadding="10" bgcolor="#464646" width="330">
                <tr> 
                  <td><font size="2" face="Arial, Helvetica, sans-serif">
                  According to our records you used to be a user at www.minorleaguestyleguide.com.<br><br>
                  If you want to log in to the site please use your email <b><%=Legacy.Item("Email")%></b> instead of your old user name
                  <%=Legacy.Item("UserName")%>.<br><br>
                  You can use the same password you used to use.<br><br>
                    <br>
		</font></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
 <% else %>   
        <font size="2" face="Arial, Helvetica, sans-serif"> </font> </td>
      <td><img src="images/portal_dottedline.gif" width="17" height="233"></td>
      <td>
        <table border="0" cellspacing="0" cellpadding="0" bgcolor="#333333">
          <tr> 
            <td> 
              <table border="0" cellspacing="1" cellpadding="2">
                <tr> 
                  <td nowrap align="right" bgcolor="#464646">&nbsp; </td>
                  <td nowrap bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif" color="#CC9900"> 
                    * = Required Fields</font></td>
                </tr>
                <%
		If Request.QueryString("pr")="0" then
		    Response.Write("<tr><td>&nbsp;</td>")
            Response.Write("<td><b><font size='2' face='Arial, Helvetica, sans-serif' color=red>")
			Response.Write("The email <font face=Arial, Helvetica, sans-serif size=2 color=white> '"& Trim(Session("UserReEntryData").Item("Email")) & "' </font>  is already in use!<br>"&_
			"If you have already re-registered, use your email & password instead of user name & password.<br>"&_
			"Otherwise, please choose another email.</font></b><br>")
			Response.Write("</td></tr>")
		End If
		%>
                <!--
          <tr> 
            <td nowrap align="right"><font size="2" face="Arial, Helvetica, sans-serif" <%If UserReEntryErrors.item("UserName") = "flag" Then Response.Write("color=red") Else Response.Write("color=white") End If %>>Username*</font></td>
            <td nowrap><font size="2" face="Arial, Helvetica, sans-serif"> 
              <input type="text" name="username" size="20" value="<%Response.Write(UserReEntryData.Item("UserName"))%>">
              </font></td>
          </tr>

          <tr> 
            <td nowrap align="right"><font size="2" face="Arial, Helvetica, sans-serif">Salutation</font></td>
            <td nowrap> <font size="2" face="Arial, Helvetica, sans-serif"> 
              <input type="text" name="salu" size="4" value="<%Response.Write(UserReEntryData.Item("salu"))%>">
              </font></td>
          </tr>
          -->
                <tr bgcolor="#404040"> 
                  <td nowrap align="right" bgcolor="#464646"> <font size="1" face="Arial, Helvetica, sans-serif" <%if UserReEntryErrors.Item("FirstName") = "flag" then response.write("color=red") else response.write("color=CC9900") end if %>>First 
                    Name*:</font></td>
                  <td nowrap bgcolor="#464646"><font size="2" face="Arial, Helvetica, sans-serif"> 
                    <input type="text" name="FirstName" size="20" value="<%Response.Write(UserReEntryData.Item("FirstName"))%>">
                    </font></td>
                </tr>
                <tr> 
                  <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif">Middle 
                    Initial:</font></td>
                  <td nowrap bgcolor="#464646"> <font size="2" face="Arial, Helvetica, sans-serif"> 
                    <input type="text" name="Middlei" size="2" value="<%Response.Write(UserReEntryData.Item("Middlei"))%>">
                    </font></td>
                </tr>
                <tr bgcolor="#404040"> 
                  <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif" 
				  <%if UserReEntryErrors.Item("LastName") = "flag" then response.write("color=red") else response.write("color=CC9900") end if %>>Last 
                    Name*:</font></td>
                  <td nowrap bgcolor="#464646"><font size="2" face="Arial, Helvetica, sans-serif"> 
                    <input type="text" name="LastName" size="20" value="<%Response.Write(UserReEntryData.Item("LastName"))%>">
                    </font></td>
                </tr>
                <% if Request.QueryString("em")="0" then 
					'Response.Write("<tr><td>&nbsp;</td>")
					'Response.Write("<td><b><font size='2' face='Arial, Helvetica, sans-serif' color=red>")
					Response.Write("<b><font size='2' face='Arial, Helvetica, sans-serif' color=red>Your email seems to be invalid.</font></b><br>")
					'Response.Write("</td></tr>")
			 elseif Request.QueryString("em")="2" then 
					'Response.Write("<tr><td>&nbsp;</td>")
					'Response.Write("<td><b><font size='2' face='Arial, Helvetica, sans-serif' color=red>")
					Response.Write("<b><font size='2' face='Arial, Helvetica, sans-serif' color=red>Your email seems to be not working. Please, verify if it is working.</font></b><br>")
					'Response.Write("</td></tr>")
			 end if%>
                <tr> 
                  <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif" <%if UserReEntryErrors.item("Email") = "flag" then response.write("color=red") else response.write("color=CC9900") end if %>>Email*:</font></td>
                  <td nowrap bgcolor="#464646"><font size="2" face="Arial, Helvetica, sans-serif"> 
                     <%=Base64Decode(Session("CompanyEmail"))%>
		     <input type="hidden" name="Email" value="<%=Base64Decode(Session("CompanyEmail"))%>">
                    </font></td>
                </tr>
                <tr> 
                  <td nowrap align="right" bgcolor="#464646" colspan="2"> <font size="1" face="Arial, Helvetica, sans-serif">TIP: 
                    Please note that you will use your email <br>
                    address to enter the site after <%if myBulkReg then%>registration<%else%>re-registration<%end if %>.</font></td>
                </tr>
                <tr bgcolor="#404040"> 
                  <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif">Company:</font></td>
                  <td nowrap bgcolor="#464646"><font size="2" face="Arial, Helvetica, sans-serif"><b> 
                    <%=Session("Legacy").Item("Company")%></b></font></td>
                </tr>
                <tr bgcolor="#404040"> 
                  <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif" 
				  <%if UserReEntryErrors.Item("address1") = "flag" then response.write("color=red") else response.write("color=CC9900") end if %>>Address 1*:</font></td>
                  <td nowrap bgcolor="#464646"><font size="2" face="Arial, Helvetica, sans-serif"> 
                    <input type="text" name="Address1" size="20" value="<%If Len(UserReEntryData.Item("Address1"))>0 then Response.Write(UserReEntryData.Item("Address1")) else Response.Write(myAddress1) end if%>">
                    </font></td>
                </tr>
                <tr> 
                  <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif">Address 2:</font></td>
                  <td nowrap bgcolor="#464646"><font size="2" face="Arial, Helvetica, sans-serif"> 
                    <input type="text" name="Address2" size="20" value="<%If Len(UserReEntryData.Item("Address2"))>0 then Response.Write(UserReEntryData.Item("Address2")) else Response.Write(myAddress2) end if%>">
                    </font></td>
                </tr>
                <tr bgcolor="#404040"> 
                  <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif" 
				  <%if UserReEntryErrors.Item("city") = "flag" then response.write("color=red") else response.write("color=CC9900") end if %>>City*:</font></td>
                  <td nowrap bgcolor="#464646"><font size="2" face="Arial, Helvetica, sans-serif"> 
                    <input type="text" name="City" size="20" value="<%If Len(UserReEntryData.Item("City"))>0 then Response.Write(UserReEntryData.Item("City")) else Response.Write(myCity) end if%>">
                    </font></td>
                </tr>
                <tr> 
                  <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif" 
				  <%if UserReEntryErrors.Item("state") = "flag" then response.write("color=red") else response.write("color=CC9900") end if %>>State*:</font></td>
                  <td nowrap bgcolor="#464646">
                  <font size="2" face="Arial, Helvetica, sans-serif"> 
                    <select name="State"><% For i=0 to UBound(stateArray) %>
					<option<%
					if Len(UserReEntryData.Item("State"))>0 then
						if UserReEntryData.Item("State") = stateArray(i) then Response.Write(" selected") end if 
					else
						if myState = stateArray(i) then Response.Write(" selected") end if 
					end if
					%>><%=stateArray(i)%></option><% Next %>
					</select>
                    </font>
                   <font size="1" face="Arial, Helvetica, sans-serif"<%if UserReEntryErrors.Item("state") = "flag" then response.write("color=red") else response.write("color=CC9900") end if %>>OR</font> <font size="1" face="Arial, Helvetica, sans-serif" 
				  <%if UserReEntryErrors.Item("state") = "flag" then response.write("color=red") else response.write("color=CC9900") end if %>>Province/Region:</font>
                    <input type="text" name="Province" size="15" value="<%
                    If Len(UserReEntryData.Item("Province"))>0 then 
						Response.Write(UserReEntryData.Item("Province")) 
					else 
						bUsState = False
						For Each aState in stateArray 'Check State is US
							if aState = myState then
							bUsState = True
							Exit For
							end if
						Next	
						if not bUsState then 'International
							Response.Write(myState) 
						end if
						
					end if
                    %>">
                    </font></td>
                </tr>
                <tr bgcolor="#404040"> 
                  <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif" 
				  <%if UserReEntryErrors.Item("zip") = "flag" then response.write("color=red") else response.write("color=CC9900") end if %>>Zip/Postal Code*:</font></td>
                  <td nowrap bgcolor="#464646"><font size="2" face="Arial, Helvetica, sans-serif"> 
                    <input type="text" name="Zip" size="10" value="<%If Len(UserReEntryData.Item("Zip"))>0 then Response.Write(UserReEntryData.Item("Zip")) else Response.Write(myZip) end if%>">
                    </font></td>
                </tr>
                <tr> 
                 <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif" 
				  <%if UserReEntryErrors.Item("country") = "flag" then response.write("color=red") else response.write("color=CC9900") end if %>>Country*:</font></td>
                  <td nowrap bgcolor="#464646">
                  <% DIM countryArray
                     countryArray = Array ("Select a Country","Albania","Algeria","American Samoa","Andorra","Angola","Anguilla","Antarctica","Antigua And Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia and Herzegowina","Botswana","Bouvet Island","Brazil","British Indian Ocean Territory","Brunei Darussalam","Bulgaria","Burkina Faso","Burma","Burundi","Cambodia","Cameroon","Canada","Cape Verde","Cayman Islands","Central African Republic","Chad","Chile","China","Christmas Island","Cocos (Keeling) Islands","Colombia","Comoros","Congo","Congo, the Democratic Republic of the","Cook Islands","Costa Rica","Cote d'Ivoire","Croatia","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","East Timor","Ecuador","Egypt","El Salvador","England","Equatorial Guinea","Eritrea","Espana","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Guiana","French Polynesia","French Southern Territories","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Great Britain","Greece","Greenland","Grenada","Guadeloupe","Guam","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Heard and Mc Donald Islands","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Ireland","Israel","Italy","Jamaica","Japan","Jordan","Kazakhstan","Kenya","Kiribati","Korea (North)","Korea (South)","Kuwait","Kyrgyzstan","Lao People's Democratic Republic","Latvia","Lebanon","Lesotho","Liberia","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Martinique","Mauritania","Mauritius","Mayotte","Mexico","Micronesia, Federated States of","Moldova, Republic of","Monaco","Mongolia","Montserrat","Morocco","Mozambique","Myanmar","Namibia","Nauru","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","Niue","Norfolk Island","Northern Ireland","Northern Mariana Islands","Norway","Oman","Pakistan","Palau","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Pitcairn","Poland","Portugal","Puerto Rico","Qatar","Reunion","Romania","Russia","Russian Federation","Rwanda","Saint Kitts and Nevis","Saint Lucia","Saint Vincent and the Grenadines","Samoa (Independent)","San Marino","Sao Tome and Principe","Saudi Arabia","Scotland","Senegal","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Georgia and the South Sandwich Islands","South Korea","Spain","Sri Lanka","St. Helena","St. Pierre and Miquelon","Suriname","Svalbard and Jan Mayen Islands","Swaziland","Sweden","Switzerland","Taiwan","Tajikistan","Tanzania","Thailand","Togo","Tokelau","Tonga","Trinidad","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Turks and Caicos Islands","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States","United States Minor Outlying Islands","Uruguay","USA","Uzbekistan","Vanuatu","Vatican City State (Holy See)","Venezuela","Viet Nam","Virgin Islands (British)","Virgin Islands (U.S.)","Wales","Wallis and Futuna Islands","Western Sahara","Yemen","Zambia","Zimbabwe")
                  %>
                  <font size="2" face="Arial, Helvetica, sans-serif"> 
                    <select name="Country"><% For i=0 to UBound(countryArray) %>
					<option<%
					if Len(UserReEntryData.Item("Country"))>0 then
						if UserReEntryData.Item("Country") = countryArray(i) then Response.Write(" selected") end if 
					else
						if myCountry = countryArray(i) then Response.Write(" selected") end if 
					end if
					%>><%=countryArray(i)%></option><% Next %>
					</select>
                    </font></td>
                </tr>
                <tr> 
                  <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif" <%if UserReEntryErrors.Item("Phone") = "flag" then response.write("color=red") else response.write("color=CC9900") end if %>>Phone*:</font></td>
                  <td nowrap bgcolor="#464646"><font size="2" face="Arial, Helvetica, sans-serif"> 
                    <input type="text" name="Phone" size="15" value="<%Response.Write(UserReEntryData.Item("Phone"))%>">
                    </font></td>
                </tr>
                <tr bgcolor="#404040"> 
                  <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif">Fax:</font></td>
                  <td nowrap bgcolor="#464646"><font size="2" face="Arial, Helvetica, sans-serif"> 
                    <input type="text" name="Fax" size="15" value="<%Response.Write(UserReEntryData.Item("Fax"))%>">
                    </font></td>
                </tr>
                <tr bgcolor="#404040"> 
                  <td nowrap align="right" bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif" <%if UserReEntryErrors.item("Password") = "flag" then response.write("color=red") else response.write("color=CC9900") end if %>>Password*:</font></td>
                  <td nowrap bgcolor="#464646"><font size="2" face="Arial, Helvetica, sans-serif"> 
                    <input type="text" name="Password" size="20" value="<%Response.Write(UserReEntryData.Item("Password"))%>">
                    </font></td>
                </tr>
                <!--
          <tr> 
            <td nowrap align="right"><font size="2" face="Arial, Helvetica, sans-serif" <%If UserReEntryErrors.item("keyword") = "flag" Then Response.Write("color=red") Else Response.Write("color=white") End If %>>Keyword 
              to remember password*</font></td>
            <td nowrap> <font size="2" face="Arial, Helvetica, sans-serif"> 
              <input type="text" name="keyword" size="35" value="<%Response.Write(UserReEntryData.Item("keyword"))%>">
              </font></td>
          </tr>
          <tr> 
            <td nowrap align="right"><font size="2" face="Arial, Helvetica, sans-serif">Set 
              Access Level*</font></td>
            <td nowrap> <font size="2" face="Arial, Helvetica, sans-serif">
              <select name="accesslevel">
                <option value="1" selected>Major League Only</option>
                <option value="2">Minor &amp; Major Leagues</option>
              </select>
              </font></td>
          </tr>
          -->
                <tr> 
                  <td nowrap bgcolor="#464646"><font size="1" face="Arial, Helvetica, sans-serif">&nbsp;</font></td>
                  <td nowrap bgcolor="#464646"><font face="Arial, Helvetica, sans-serif" size="2"> 
		<%IF Err.Number = 0 THEN %>
                    <input type="submit" name="Submit" value="Register Me  &gt;&gt;&gt;">
		<%Else%>
	             <script type="text/javascript">
			alert("Invalid access.. Please use the link in the invitation email.");
			window.history.back();
		     </script>
		<%END IF%>

                    </font></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
<br>
<table>
<tr>
<td><img src="images/inv.gif" width="325" height="1"></td>
<td><img src="images/MLB_user_notice_2018.png"></td>
</tr>
</table>

</form>
<% end if %>
</body>
 </html>
<%
Function Base64Decode(ByVal vCode)
    Dim oXML, oNode
    Set oXML = CreateObject("Msxml2.DOMDocument.3.0")
    Set oNode = oXML.CreateElement("base64")
    oNode.dataType = "bin.base64"
    oNode.text = vCode
    Base64Decode = Stream_BinaryToString(oNode.nodeTypedValue)
    Set oNode = Nothing
    Set oXML = Nothing
End Function

Private Function Stream_BinaryToString(Binary)
  Const adTypeText = 2
  Const adTypeBinary = 1
  Dim BinaryStream 'As New Stream
  Set BinaryStream = CreateObject("ADODB.Stream")
  BinaryStream.Type = adTypeBinary
  BinaryStream.Open
  BinaryStream.Write Binary
  BinaryStream.Position = 0
  BinaryStream.Type = adTypeText
  BinaryStream.CharSet = "us-ascii"
  Stream_BinaryToString = BinaryStream.ReadText
  Set BinaryStream = Nothing
End Function

%>