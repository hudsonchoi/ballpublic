<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<script language="JavaScript" type="text/JavaScript">
<!--
var browserType;



if (document.layers) {browserType = "nn4"}
if (document.all) {browserType = "ie"}
if (window.navigator.userAgent.toLowerCase().match("safari")) {
	browserType= "safari"
}else if (window.navigator.userAgent.toLowerCase().match("gecko")) {
	browserType= "gecko"
}

function hide() {

  if (browserType == "safari" || browserType == "gecko" || browserType == "nn4")
     document.poppedLayer = eval('top.fbody.document.getElementById(\'test\')');
  else if (browserType == "ie")
     document.poppedLayer = eval('top.fbody.document.all[\'test\']');
  else
     document.poppedLayer = eval('top.fbody.document.layers[\'`test\']');
	 
  document.poppedLayer.style.visibility = "hidden";
  
}

function show() {
  if (browserType == "safari" ){
    document.poppedLayer = eval('top.fbody.document.getElementById(\'test\')');
	document.poppedBoxLayer = eval('top.fbody.document.getElementById(\'box\')');
	document.poppedLayer.style.left = (window.event.clientX-5)+"px";
    document.poppedBoxLayer.style.left = (window.event.clientX-20)+"px";
  }else if (browserType == "gecko" || browserType == "nn4" ){
    //alert("Bingo!");
    document.captureEvents(Event.MOUSEOVER);
    document.onmouseover = myMouse
    myMouse();
  }else if (browserType == "ie"){
     document.poppedLayer = eval('top.fbody.document.all[\'test\']');
	 document.poppedBoxLayer = eval('top.fbody.document.all[\'box\']');
	 document.poppedLayer.style.left = (window.event.clientX-5)+"px";
     document.poppedBoxLayer.style.left = (window.event.clientX-20)+"px";
  }else{
     document.poppedLayer = eval('top.fbody.document.layers[\'`test\']');
	 document.poppedBoxLayer = eval('top.fbody.document.all[\'box\']');
	 document.poppedLayer.style.left = (window.event.clientX-5)+"px";
     document.poppedBoxLayer.style.left = (window.event.clientX-20)+"px";
  }
  document.poppedLayer.style.visibility = "visible";
  document.poppedBoxLayer.style.visibility = "visible";
}

function myMouse(e){
    if (!e) 
  	var e = window.event||window.Event; 
  
	//document.captureEvents(Event.MOUSEMOVE); 
	document.poppedLayer = eval('top.fbody.document.getElementById(\'test\')');
	document.poppedBoxLayer = eval('top.fbody.document.getElementById(\'box\')');
	document.poppedLayer.style.left = (e.clientX-5)+"px";
    document.poppedBoxLayer.style.left = (e.clientX-20)+"px";
	
	//alert((e.clientX-5)+"px")
	
}

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

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->
</script>

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
.style1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: x-small;
}
-->
</style>
</head>

<body bgcolor="#003366" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('images/nav_style_3.gif','images/nav_style_2.gif','images/nav_style_4.gif','images/nav_style3_2.gif','images/nav_style3_3.gif','images/nav_style3_4.gif','images/nav_super_2.gif','images/nav_super_3.gif','images/nav_super_4.gif','images/nav_asgv_4.gif','images/gnav_06ClubMarks_ON.gif','images/gnav_06ClubMarks_RO.gif','images/gnav_06ClubMarks_ONRO.gif','images/gnav_06SprgTrain_ON.gif','images/gnav_06ASG_On.gif','images/gnav_06ASG_RO.gif','images/gnav_06ASG_ONRO.gif','images/gnav_06ASG_ON.gif','images/gnav_06PostSeason_RO.gif','images/gnav_06PostSeason_ON.gif','images/gnav_06PostSeason_ONRO.gif','images/gnav_06Coopers_ON.gif','images/gnav_06Coopers_RO.gif','images/gnav_06Coopers_ONRO.gif','images/gnav_06Mascots_ON.gif','images/gnav_06Mascots_RO.gif','images/gnav_06Mascots_ONRO.gif','images/gnav_06MinorLg_ON.gif','images/gnav_06MinorLg_RO.gif','images/gnav_06MinorLg_ONRO.gif','images/gnav_06ThemeArt_ON.gif','images/gnav_06ThemeArt_RO.gif','images/gnav_06ThemeArt_ONRO.gif','images/gnav_CreativeServ_ON.gif','images/gnav_CreativeServ_RO.gif','images/gnav_CreativeServ_ONRO.gif','images/gnav_09CMC_ON.gif','images/gnav_09CMC_RO.gif','images/gnav_09CMC_ONRO.gif','images/gnav_09ClubMarks_ON.gif','images/gnav_09ClubMarks_RO.gif','images/gnav_09ClubMarks_ONRO.gif','images/gnav_08ClubMarks_ON.gif','images/gnav_08ClubMarks_RO.gif','images/gnav_08ClubMarks_ONRO.gif','images/gnav_06SprgTrain_RO.gif','images/gnav_06SprgTrain_ONRO.gif','images/gnav_06openingday_ON.gif','images/gnav_06openingday_RO.gif','images/gnav_06openingday_ONRO.gif')">
<div id="test" style="position:absolute; z-index:1; visibility: hidden">Content for class "test" id "test" Goes Here</div>
<table width="100%"  border="0" cellpadding="0" cellspacing="0" background="images/nav_back.gif">
  <tr> 
    <td><table border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
		  <% REM Club Marketing Center 
		    If Session("MemberData").Item("marketing") Then %>
    		<td><a href="handler.ashx?section=club&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','market','images/gnav_09CMC_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','market','images/gnav_09CMC_RO.gif','images/gnav_09CMC_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="market" src="images/gnav_09CMC_OFF.gif" border="0" width="106" height="22"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
		  <% end if %>
		  
		  <%REM ATTENTION! ATTENTION! ATTENTION!
            REM When launching 2014 replace the below to Session("MemberData").Item("mlb2014") %>
		  <% If Session("MemberData").Item("mlb2013") Then %>
		<td><a href="handler.ashx?section=mlb&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top"  onClick="MM_nbGroup('down','group1','mlb1','images/gnav_13ClubMarks_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','mlb1','images/gnav_13ClubMarks_RO.gif','images/gnav_13ClubMarks_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="mlb1" src="images/gnav_13ClubMarks_OFF.gif" border="0" width="129" height="22"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
        <%REM ATTENTION! ATTENTION! ATTENTION!
          REM When launching 2014 ADD Session("MemberData").Item("mlb2013") below within If condidtion%>
        <% ElseIf Session("MemberData").Item("mlb2012") or Session("MemberData").Item("mlb2011") or Session("MemberData").Item("mlb2010") or Session("MemberData").Item("mlb2003") or Session("MemberData").Item("mlb2008") or Session("MemberData").Item("mlb2009") Then%>
         <td><a href="handler.ashx?section=mlb&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','mlb1','images/gnav_12ClubMarks_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','mlb1','images/gnav_12clubMarks_RO.gif','images/gnav_12ClubMarks_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="mlb1" src="images/gnav_12ClubMarks_OFF.gif" border="0" width="129" height="22"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
		<% End If %>
		
          <% If Session("MemberData").Item("spring") Then %>
          <td nowrap align="center"><a href="handler.ashx?section=spring&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','spring','images/gnav_06SprgTrain_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','spring','images/gnav_06SprgTrain_RO.gif','images/gnav_06SprgTrain_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/gnav_06SprgTrain_OFF.gif" name="spring" width="73" height="22" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
<% end If %>
		<% If Session("MemberData").Item("opening") Then %>
          <td nowrap align="center"><a href="handler.ashx?section=opening&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','openingday','images/gnav_06openingday_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','openingday','images/gnav_06openingday_RO.gif','images/gnav_06openingday_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/gnav_06openingday_OFF.gif" name="openingday" width="58" height="22" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
		<% end if %>
		  <% If Session("MemberData").Item("alls") Then %>
          <td nowrap align="center"><a href="handler.ashx?section=alls&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','allstar','images/gnav_06ASG_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','allstar','images/gnav_06ASG_RO.gif','images/gnav_06ASG_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/gnav_06ASG_OFF.gif" name="allstar" width="67" height="22" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
		  <% end if %>
		  
          <% If Session("MemberData").Item("world") Then %>
          <td nowrap align="center"><a href="handler.ashx?section=world&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','ws','images/gnav_06PostSeason_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','ws','images/gnav_06PostSeason_RO.gif','images/gnav_06PostSeason_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/gnav_06PostSeason_OFF.gif" alt="POST SEASON" name="ws" width="61" height="22" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end if %>
          <% If Session("MemberData").Item("coop") Then %>
          <td nowrap align="center"><img src="images/gnav_06Coopers_OFF.gif" alt="COOPERSTOWN" name="coop" width="112" height="22" border="0"></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end if %>
		  
          <% If Session("MemberData").Item("mascot") Then %>
          <td nowrap align="center"><a href="handler.ashx?section=mascot&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','mascot','images/gnav_06Mascots_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','mascot','images/gnav_06Mascots_RO.gif','images/gnav_06Mascots_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/gnav_06Mascots_OFF.gif" alt="MASCOTS" name="mascot" width="46" height="22" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end If%>
		  
          <% If Session("MemberData").Item("minor") Then %>
          <td nowrap align="center"><a href="/minorlea" target="fbody" onClick="MM_nbGroup('down','group1','minor','images/gnav_06MinorLg_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','minor','images/gnav_06MinorLg_RO.gif','images/gnav_06MinorLg_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/gnav_06MinorLg_OFF.gif" alt="MINOR LEAGUE" name="minor" width="63" height="22" border="0"></a></td>
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
