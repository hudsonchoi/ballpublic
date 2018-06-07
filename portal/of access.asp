<html>
<head>
<title>:: MLB Style Guides ::</title>
<!--#include virtual="/secure/2005/includes/openwindow.js" -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}
//-->
</script>
<link href="/main.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
-->
</style>

<style type="text/css">
<!--

a.main:link {
	color: #FFFFFF;
	text-decoration: none;
}

a.main:visited {
	color: #FFFFFF;
	text-decoration: none;
}

a.main:hover {
	color: #FFFFFF;
	text-decoration: underline;
}

a.main:active {
	color: #FFFFFF;
	text-decoration: none;
}
.style3 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: x-small;
}
-->
</style>
</head>
<body bgcolor="#404040" leftmargin="0" topmargin="0" marginwidth="0" text="#FFFFFF" onLoad="MM_preloadImages('images/portal_nav_style2004_2.gif','images/portal_nav_coop_2.gif','images/portal_nav_ws_2.gif','images/portal_nav_as_2.gif','/portal/images/portal_nav_mascot_2.gif','images/portal_nav_spring_2.gif','/portal/images/nav_howtouse_2.gif', '/portal/images/8teams.gif', '/portal/images/portal_nav_NewlyUpdated.gif','images/2006ClubMarks_RO.gif','images/2006SpringTrain_RO.gif','images/2006AllStar_RO.gif','images/2006PostSeason_RO.gif','images/2006cooperstown_RO.gif','images/2006Mascot_RO.gif','images/2006MinorLeague_RO.gif','images/2006ThemeArt_RO.gif','images/2006CreativeServ_RO.gif','images/2008AllStar_RO.gif')" link="#FFFFFF" vlink="#FFFFFF" alink="#CC0000" marginheight="0" background="images/404040.gif">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td><img src="images/inv.gif" width="1" height="30"></td>
    <td width="100">&nbsp;</td>
  </tr>
  <tr> 
    <td><img src="images/portal_head_access.gif" width="482" height="89"></td>
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
    <td width="397" align="center"><img src="images/inv.gif" width="397" height="1"><br>
      <table border="0" cellspacing="0" cellpadding="15">
        <tr>
          <td> 
            

			<table border="0" cellspacing="0" cellpadding="1" bgcolor="#FFFFFF">
              <tr>
                <td><a href="javascript:;" onClick="MM_openBrWindow('pop_howsitelets.htm','','scrollbars=yes,width=350,height=450')" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('howbttn','','/portal/images/nav_howtouse_2.gif',1)"><img src="/portal/images/nav_howtouse_1.gif" name="howbttn" width="360" height="35" border="0"></a></td>
              </tr>
            </table>
		
            
            <table border="0" cellspacing="4" cellpadding="4">
              <tr>
                <td><span class="style1"><!--CODES: Important Information!! 
                	 -->
                </span></td>
              </tr>
            </table>
            </td>
        </tr>
      </table>
    </td>
    <td><img src="images/portal_dottedline.gif" width="17" height="275"></td>
    <td> 
      <table border="0" cellspacing="0" cellpadding="2">
        <tr> 
          <td><img src="images/portal_youhaveaccessto.gif" width="118" height="15"></td>
        </tr>
          <%REM ATTENTION! ATTENTION! ATTENTION!
            REM When launching 2010 replace the below to Session("MemberData").Item("mlb2010") %>
		  <% If Session("MemberData").Item("mlb2009") Then %>
		<tr>
          <td nowrap><a href="frameset.asp?target=<%=Server.URLEncode("/secure/2009/legal.htm")%>" target="_top" onMouseOver="MM_swapImage('clubmarks','','images/2009ClubMarks_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2009ClubMarks_OFF.gif" name="clubmarks" width="192" height="21" border="0" id="clubmarks"></a></td>
        </tr>
        <%REM ATTENTION! ATTENTION! ATTENTION!
          REM When launching 2010 add Session("MemberData").Item("mlb2009") below within If condidtion%>
        <% ElseIf Session("MemberData").Item("mlb2003") or Session("MemberData").Item("mlb2008") Then%>
         <tr>
          <td nowrap><a href="frameset.asp?target=<%=Server.URLEncode("/secure/2008/legal.htm")%>" target="_top" onMouseOver="MM_swapImage('clubmarks','','images/2008ClubMarks_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2008ClubMarks_OFF.gif" name="clubmarks" width="192" height="21" border="0" id="Img1"></a></td>
        </tr>
		<% End If %>
		<% If Session("MemberData").Item("spring") Then %>
        <tr> 
          <td nowrap><a href="frameset.asp?target=<%=Server.URLEncode("/st2009/")%>" target="_top" onMouseOver="MM_swapImage('spring','','images/2006SpringTrain_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2006SpringTrain_OFF.gif" name="spring" width="192" height="21" border="0" id="spring"></a></td>
        </tr>
        <% end if %>
        <%REM ATTENTION! ATTENTION! ATTENTION!
          REM When launching 2010 replace the below to Session("MemberData").Item("mlb2010") %>
		<% If Session("MemberData").Item("mlb2009") Then %>
		  <tr>
          <td><a href="frameset.asp?target=<%=Server.URLEncode("/openingday2009/default.htm")%>" target="_top" onMouseOver="MM_swapImage('openingday','','images/2006openingday_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2006openingday_OFF.gif" name="openingday" width="192" height="21" border="0" id="openingday"></a></td>
        </tr>
		<%REM ATTENTION! ATTENTION! ATTENTION!
          REM When launching 2010 add Session("MemberData").Item("mlb2009") below within If condidtion%>
		<% ElseIf Session("MemberData").Item("mlb2008") OR  Session("MemberData").Item("mlb2003") Then %>
		  <tr>
          <td><a href="frameset.asp?target=<%=Server.URLEncode("/openingday2008/default.htm")%>" target="_top" onMouseOver="MM_swapImage('openingday','','images/2006openingday_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2006openingday_OFF.gif" name="openingday" width="192" height="21" border="0" id="openingday"></a></td>
        </tr>
		<% end if %>
        <% If Session("MemberData").Item("alls") Then %>
        <tr> 
          <td><a href="framesetasg.asp?target=<%=Server.URLEncode("/asg2009/default.htm")%>" target="_top" onMouseOver="MM_swapImage('allstar','','images/2006AllStar_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2006AllStar_OFF.gif" name="allstar" width="192" height="21" border="0" id="allstar"></a></td>
        </tr>
		<% end if %>
		<% If Session("MemberData").Item("world") Then %>
        <tr>
          <td><a href="framesetpost.asp?target=<%=Server.URLEncode("/ws2009/default.htm")%>" target="_top" onMouseOver="MM_swapImage('post','','images/2006PostSeason_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2006PostSeason_OFF.gif" name="post" width="192" height="21" border="0" id="post"></a><a href="frameset.asp?target=<%=Server.URLEncode("/secure/2008/legal.htm")%>" target="_top" onMouseOver="MM_swapImage('clubmarks','','images/2008ClubMarks_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="/portal/images/updated.gif" width="170" height="12" hspace="5" vspace="5" border="0"></a></td>
        </tr>
        <% end if %>
        <% If Session("MemberData").Item("coop") Then %>
        <tr>
          <td nowrap><a href="frameset.asp?target=<%=Server.URLEncode("/coop/default.htm")%>" target="_top" onMouseOver="MM_swapImage('coop','','images/2006cooperstown_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2006cooperstown_OFF.gif" name="coop" width="192" height="21" border="0" id="coop"></a></td>
        </tr>
		<% end if %>
		<% If Session("MemberData").Item("mascot") Then %>
        <tr>
          <td><a href="frameset.asp?target=<%=Server.URLEncode("/mascot/content/default.html")%>" target="_top" onMouseOver="MM_swapImage('mascot','','images/2006Mascot_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2006Mascot_OFF.gif" name="mascot" width="192" height="21" border="0" id="mascot"></a></td>
        </tr>
		<% end if %>
		<% If Session("MemberData").Item("minor") Then %>
        <tr> 
          <td><a href="frameset.asp?target=<%=Server.URLEncode("/minorlea")%>" target="_top" onMouseOver="MM_swapImage('minor','','images/2006MinorLeague_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2006MinorLeague_OFF.gif" name="minor" width="192" height="21" border="0" id="minor"></a><a href="frameset.asp?target=<%=Server.URLEncode("/secure/2008/legal.htm")%>" target="_top" onMouseOver="MM_swapImage('clubmarks','','images/2008ClubMarks_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><!--<img src="/portal/images/updated.gif" width="170" height="12" hspace="5" vspace="5" border="0"> --></a><a href="frameset.asp?target=<%=Server.URLEncode("/secure/2008/legal.htm")%>" target="_top" onMouseOver="MM_swapImage('clubmarks','','images/2008ClubMarks_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="/portal/images/updated.gif" alt="UPDATED" width="170" height="12" hspace="5" vspace="5" border="0"></a></td>
        </tr>
        <% end if %>
        <% If Session("MemberData").Item("trend") Then %>
        <tr> 
          <td nowrap><a href="frameset.asp?target=<%=Server.URLEncode("/trend/content/default.html")%>" onMouseOver="MM_swapImage('theme','','images/2006ThemeArt_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2006ThemeArt_OFF.gif" name="theme" width="192" height="21" border="0" id="theme"></a></td>
        </tr>
        <% end if %>

        		<% If Session("MemberData").Item("creative") Then %>
		        <tr> 
          <td nowrap><a href="frameset.asp?target=<%=Server.URLEncode("/creative")%>" onMouseOver="MM_swapImage('creative','','images/2006CreativeServ_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2006CreativeServ_OFF.gif" name="creative" width="192" height="21" border="0" id="creative"></a></td>
        </tr>
        <% end if %>
		<% If Session("MemberData").Item("alls2007") Then %>
		<tr>
		<!--//Normal way 
          <td nowrap><a href="frameset.asp?target=<%=Server.URLEncode("/asg2007")%>" onMouseOver="MM_swapImage('allstar2007','','images/2006CreativeServ_RO.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="images/2007AllStar_OFF.gif" width="192" height="21" border="0" id="allstar2007"></a></td>-->
		    <td nowrap><!-- <a href="/asg2007" onMouseOver="MM_swapImage('allstar2007','','images/2007AllStar_ON.gif',1)" onMouseOut="MM_swapImgRestore()" target="_blank"><img src="images/2007AllStar_OFF.gif" width="192" height="21" border="0" id="allstar2007"></a> --></td>
        </tr>
        <% end if %>
      </table>
    </td>
  </tr>
</table>
</p>
</body>

</html>
