<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_nbGroup(event, grpName) { //v6.0
  var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : ((args[i+1])? args[i+1] : img.MM_up);
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) {
      img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    nbArr = document[grpName];
    if (nbArr)
      for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = (args[i+1])? args[i+1] : img.MM_up;
      nbArr[nbArr.length] = img;
  } }
}
//-->
</script>
</head>

<body bgcolor="#003366" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('images/nav_style_3.gif','images/nav_style_2.gif','images/nav_style_4.gif','images/nav_style3_2.gif','images/nav_style3_3.gif','images/nav_style3_4.gif','images/nav_style4_2.gif','images/nav_style4_3.gif','images/nav_style4_4.gif','images/nav_coop_3.gif','images/nav_coop_2.gif','images/nav_coop_4.gif','images/nav_spring_3.gif','images/nav_spring_2.gif','images/nav_spring_4.gif','images/nav_ws_3.gif','images/nav_ws_2.gif','images/nav_ws_4.gif','images/nav_asg_3.gif','images/nav_asg_2.gif','images/nav_asg_4.gif','images/nav_minor_3.gif','images/nav_minor_2.gif','images/nav_minor_4.gif','images/nav_mascot_3.gif','images/nav_mascot_2.gif','images/nav_mascot_4.gif','images/nav_trend_3.gif','images/nav_trend_2.gif','images/nav_trend_4.gif','images/nav_super_2.gif','images/nav_super_3.gif','images/nav_super_4.gif','images/nav_asgv_4.gif','images/nav_style5_3.gif','images/nav_style5_2.gif')">
<table width="100%"  border="0" cellpadding="0" cellspacing="0" background="images/nav_back.gif">
  <tr> 
    <td><table border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% If Session("MemberData").Item("mlb2003") Then %> 
		  <td><a href="/secure/2005/legal.htm" target="fbody" onClick="MM_nbGroup('down','group1','mlb1','images/nav_style5_3.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','mlb1','images/nav_style5_2.gif','images/nav_style5_4.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="mlb1" src="images/nav_style5_1.gif" border="0" width="128" height="22"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <td><a href="/secure/2004/legal.htm" target="fbody" onClick="MM_nbGroup('down','group1','mlb4','images/nav_style4_3.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','mlb4','images/nav_style4_2.gif','images/nav_style4_4.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="mlb4" src="images/nav_style4_1.gif" border="0" width="128" height="22"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end if %>
          <% If Session("MemberData").Item("spring") Then %>
          <td nowrap align="center"><a href="/st2006/legal.asp" target="fbody" onClick="MM_nbGroup('down','group1','spring','images/nav_spring_3.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','spring','images/nav_spring_2.gif','images/nav_spring_4.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="spring" src="images/nav_spring_1.gif" border="0" width="75" height="22"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
		  <% end If %>  
          <% If Session("MemberData").Item("alls") Then %>
          <td nowrap align="center"><a href="/asg2006/default.htm" target="fbody" onClick="MM_nbGroup('down','group1','asg','images/nav_asg_3.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','asg','images/nav_asg_2.gif','images/nav_asg_4.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="asg" src="images/nav_asg_1.gif" border="0" width="66" height="22"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
	      <% end if %>
          <% If Session("MemberData").Item("world") Then %>
          <td nowrap align="center"><a href="/ws2005/content/default.asp" target="fbody" onClick="MM_nbGroup('down','group1','ws','images/nav_ws_3.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','ws','images/nav_ws_2.gif','images/nav_ws_4.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="ws" src="images/nav_ws_1.gif" border="0" width="64" height="22"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end if %>
          <% If Session("MemberData").Item("coop") Then %>
          <td nowrap align="center"><a href="/coop/default.htm" target="fbody" onClick="MM_nbGroup('down','group1','coop','images/nav_coop_3.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','coop','images/nav_coop_2.gif','images/nav_coop_4.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="coop" src="images/nav_coop_1.gif" border="0" width="66" height="22"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end if %>
          <% If Session("MemberData").Item("mascot") Then %>
          <td nowrap align="center"><a href="/mascot/content/default.html" target="fbody" onClick="MM_nbGroup('down','group1','mascot','images/nav_mascot_3.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','mascot','images/nav_mascot_2.gif','images/nav_mascot_4.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="mascot" src="images/nav_mascot_1.gif" border="0" width="64" height="22"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end If%>
          <% If Session("MemberData").Item("minor") Then %>
          <td nowrap align="center"><a href="/minorlea/secure/legal.htm" target="fbody" onClick="MM_nbGroup('down','group1','minor','images/nav_minor_3.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','minor','images/nav_minor_2.gif','images/nav_minor_4.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="minor" src="images/nav_minor_1.gif" border="0" width="64" height="22"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end If%>
          <% If Session("MemberData").Item("trend") Then %>
          <td nowrap align="center"><a href="/trend/content/default.html" target="fbody" onClick="MM_nbGroup('down','group1','trend','images/nav_trend_3.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','trend','images/nav_trend_2.gif','images/nav_trend_4.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="trend" src="images/nav_trend_1.gif" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end If%>
        </tr>
      </table></td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tr>
    <td bgcolor="#ffffff"><img src="images/inv.gif" width="10" height="1"></td>
  </tr>
        <tr>
    <td bgcolor="#cccccc"><img src="images/inv.gif" width="10" height="3"></td>
  </tr>
    <tr>
    <td bgcolor="#808080"><img src="images/inv.gif" width="10" height="1"></td>
  </tr>
      <tr>
    <td bgcolor="#404040"><img src="images/inv.gif" width="10" height="1"></td>
  </tr>
</table>
</body>
</html>
