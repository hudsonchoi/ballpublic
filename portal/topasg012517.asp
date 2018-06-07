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

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
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

<body bgcolor="#003366" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages(
    'images/gnav_06ASG_On.gif','images/gnav_06ASG_RO.gif','images/gnav_06ASG_ONRO.gif','images/gnav_06ASG_ON.gif',
    'images/gnav_06PostSeason_RO.gif','images/gnav_06PostSeason_ON.gif','images/gnav_06PostSeason_ONRO.gif',
    'images/gnav_06Coopers_ON.gif','images/gnav_06Coopers_RO.gif','images/gnav_06Coopers_ONRO.gif',
    'images/gnav_06Mascots_ON.gif','images/gnav_06Mascots_RO.gif','images/gnav_06Mascots_ONRO.gif',
    'images/gnav_06MinorLg_ON.gif','images/gnav_06MinorLg_RO.gif','images/gnav_06MinorLg_ONRO.gif',
    'images/gnav_09CMC_ON.gif','images/gnav_09CMC_RO.gif','images/gnav_09CMC_ONRO.gif',
    'images/gnav_06SprgTrain_ON.gif','images/gnav_06SprgTrain_RO.gif','images/gnav_06SprgTrain_ONRO.gif',
    'images/gnav_06openingday_ON.gif','images/gnav_06openingday_RO.gif','images/gnav_06openingday_ONRO.gif',
    'images/ASGArc_03_ON.gif','images/ASGArc_03_OFF.gif',
    'images/ASGArc_04_ON.gif','images/ASGArc_04_OFF.gif',
    'images/ASGArc_05_ON.gif','images/ASGArc_05_OFF.gif',
    'images/ASGArc_06_ON.gif','images/ASGArc_06_OFF.gif',
    'images/ASGArc_07_ON.gif','images/ASGArc_07_OFF.gif',
    'images/ASGArc_08_ON.gif','images/ASGArc_08_OFF.gif',
    'images/ASGArc_09_ON.gif','images/ASGArc_09_OFF.gif',
    'images/ASGArc_10_ON.gif','images/ASGArc_10_OFF.gif',
    'images/ASGArc_11_ON.gif','images/ASGArc_11_OFF.gif',
    'images/ASGArc_12_ON.gif','images/ASGArc_12_OFF.gif',
    'images/ASGArc_13_ON.gif','images/ASGArc_13_OFF.gif',
    'images/ASGArc_14_ON.gif','images/ASGArc_14_OFF.gif',
	'images/ASGArc_15_ON.gif','images/ASGArc_15_OFF.gif',
	'images/ASGArc_16_ON.gif','images/ASGArc_16_OFF.gif',
    'images/gnav_16ClubMarks_ON.gif','images/gnav_16ClubMarks_RO.gif','images/gnav_16ClubMarks_ONRO.gif',
    'images/gnav_17ClubMarks_ON.gif','images/gnav_17ClubMarks_RO.gif','images/gnav_17ClubMarks_ONRO.gif',
    'images/gnav_mascotbabies_ON.gif','images/gnav_mascotbabies_RO.gif','images/gnav_mascotbabies_ONRO.gif'
    'images/gnav_pressbox_ON.gif','images/gnav_pressbox_RO.gif,'images/gnav_pressbox_ONRO.gif')">
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
            REM When launching 2018 replace the below to Session("MemberData").Item("mlb2018") %>
		  <% If Session("MemberData").Item("mlb2017") Then %>
		<td><a href="handler.ashx?section=mlb2017&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top"  onClick="MM_nbGroup('down','group1','clubmarksNew','images/gnav_17ClubMarks_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','clubmarksNew','images/gnav_17ClubMarks_RO.gif','images/gnav_17ClubMarks_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="clubmarksNew" src="images/gnav_17ClubMarks_OFF.gif" border="0" width="129" height="22"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
        <%REM ATTENTION! ATTENTION! ATTENTION!
          REM When launching 2018 replace the below to Session("MemberData").Item("mlb2017") AND update the button graphics%>
        <% End If %>
        <% If Session("MemberData").Item("mlb2016") Then%>
		<td><a href="handler.ashx?section=mlb2016&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top"  onClick="MM_nbGroup('down','group1','mlb1','images/gnav_16ClubMarks_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','mlb1','images/gnav_16ClubMarks_RO.gif','images/gnav_16ClubMarks_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img name="mlb1" src="images/gnav_16ClubMarks_OFF.gif" border="0" width="129" height="22"></a></td>
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
          <td nowrap align="center"><a href="handler.ashx?section=alls&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('allstar','','images/gnav_06ASG_ONRO.gif',1)" onMouseOut="MM_swapImage('allstar','','images/gnav_06ASG_ON.gif',1)" onClick="MM_swapImage('arc2001','','images/ASGArc_01_OFF.gif',1);MM_swapImage('arc2002','','images/ASGArc_02_OFF.gif',1);MM_swapImage('arc2003','','images/ASGArc_03_OFF.gif',1);MM_swapImage('arc2004','','images/ASGArc_04_OFF.gif',1);MM_swapImage('arc2005','','images/ASGArc_05_OFF.gif',1)"><img src="images/gnav_06ASG_On.gif" name="allstar" width="67" height="22" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
		  <% end if %>
          <% If Session("MemberData").Item("world") Then %>
          <td nowrap align="center"><a href="handler.ashx?section=world&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','ws','images/gnav_06PostSeason_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','ws','images/gnav_06PostSeason_RO.gif','images/gnav_06PostSeason_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/gnav_06PostSeason_OFF.gif" alt="POST SEASON" name="ws" width="61" height="22" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end if %>
          <% If Session("MemberData").Item("coop") Then %>
          <td nowrap align="center"><a href="handler.ashx?section=coop&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','coop','images/gnav_06Coopers_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','coop','images/gnav_06Coopers_RO.gif','images/gnav_06Coopers_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/gnav_06Coopers_OFF.gif" alt="COOPERSTOWN" name="coop" width="112" height="22" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end if %>
          <% If Session("MemberData").Item("mascot") Then %>
          <td nowrap align="center"><a href="handler.ashx?section=mascot&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','mascot','images/gnav_06Mascots_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','mascot','images/gnav_06Mascots_RO.gif','images/gnav_06Mascots_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/gnav_06Mascots_OFF.gif" alt="MASCOTS" name="mascot" width="46" height="22" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end If%>
          <% If Session("MemberData").Item("minor") Then %>
          <td nowrap align="center"><a href="handler.ashx?section=minor&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','minor','images/gnav_06MinorLg_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','minor','images/gnav_06MinorLg_RO.gif','images/gnav_06MinorLg_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/gnav_06MinorLg_OFF.gif" alt="MINOR LEAGUE" name="minor" width="112" height="22" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end If%>
          <% If Session("MemberData").Item("mascotbabies") Then %>
          <td nowrap align="center"><a href="handler.ashx?section=mascotbabies&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','mascotbabies','images/gnav_mascotbabies_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','mascotbabies','images/gnav_mascotbabies_RO.gif','images/gnav_mascotbabies_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/gnav_mascotbabies_OFF.gif" alt="MASCOT BABIES" name="mascotbabies" width="70" height="22" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end If%>
          <% If Session("MemberData").Item("pressbox") Then %>
          <td nowrap align="center"><a href="handler.ashx?section=pressbox&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','pressbox','images/gnav_pressbox_ON.gif',1);if(this.blur)this.blur();MM_showHideLayers('allsarchive','','hide')" onMouseOver="MM_nbGroup('over','pressbox','images/gnav_pressbox_RO.gif','images/gnav_pressbox_ONRO.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/gnav_pressbox_OFF.gif" alt="PRESS BOX" name="pressbox" width="112" height="22" border="0"></a></td>
          <td><img src="images/nav_pipe.gif" width="2" height="22"></td>
          <% end If%>	 	
        </tr>
      </table></td>
  </tr>
  <tr align="center">
    <td background="images/ASGArc_grayback.gif">
	<a href="/asg2003/content/default.asp" target="fbody" onClick="MM_nbGroup('down','group1','arc2003','images/ASGArc_03_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2003','images/ASGArc_03_ON.gif','images/ASGArc_03_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_03_OFF.gif" name="arc2003" width="121" height="21" border="0"></a>
	<a href="/asg2004/content/legal.asp" target="fbody" onClick="MM_nbGroup('down','group1','arc2004','images/ASGArc_04_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2004','images/ASGArc_04_ON.gif','images/ASGArc_04_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_04_OFF.gif" name="arc2004" width="121" height="21" border="0"></a>
	<a href="/asg2005/content/legal.asp" target="fbody" onClick="MM_nbGroup('down','group1','arc2005','images/ASGArc_05_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2005','images/ASGArc_05_ON.gif','images/ASGArc_05_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_05_OFF.gif" name="arc2005" width="121" height="21" border="0"></a>
	<a href="/asg2006/default.htm" target="fbody" onClick="MM_nbGroup('down','group1','arc2006','images/ASGArc_06_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2006','images/ASGArc_06_ON.gif','images/ASGArc_06_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_06_OFF.gif" name="arc2006" width="121" height="21" border="0"></a>
	<a href="/asg2007/default.htm" target="fbody" onClick="MM_nbGroup('down','group1','arc2007','images/ASGArc_07_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2007','images/ASGArc_07_ON.gif','images/ASGArc_07_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_07_OFF.gif" name="arc2007" width="121" height="21" border="0"></a>
	<a href="/asg2008/default.htm" target="fbody" onClick="MM_nbGroup('down','group1','arc2008','images/ASGArc_08_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2008','images/ASGArc_08_ON.gif','images/ASGArc_08_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_08_OFF.gif" name="arc2008" width="121" height="21" border="0"></a>
	<a href="/asg2009/default.htm" target="fbody" onClick="MM_nbGroup('down','group1','arc2009','images/ASGArc_09_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2009','images/ASGArc_09_ON.gif','images/ASGArc_09_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_09_OFF.gif" name="arc2009" width="121" height="21" border="0"></a><br/>
	<a href="/asg2010/default.htm" target="fbody" onClick="MM_nbGroup('down','group1','arc2010','images/ASGArc_10_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2010','images/ASGArc_10_ON.gif','images/ASGArc_10_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_10_OFF.gif" name="arc2010" width="121" height="21" border="0"></a>
	<a href="/asg2011/default.htm" target="fbody" onClick="MM_nbGroup('down','group1','arc2011','images/ASGArc_11_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2011','images/ASGArc_11_ON.gif','images/ASGArc_11_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_11_OFF.gif" name="arc2011" width="121" height="21" border="0"></a>
	<a href="/asg2012/default.htm" target="fbody" onClick="MM_nbGroup('down','group1','arc2012','images/ASGArc_12_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2012','images/ASGArc_12_ON.gif','images/ASGArc_12_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_12_OFF.gif" name="arc2012" width="121" height="21" border="0"></a>
<a href="handler.ashx?section=alls2013&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','arc2013','images/ASGArc_13_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2013','images/ASGArc_13_ON.gif','images/ASGArc_13_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_13_OFF.gif" name="arc2013" width="121" height="21" border="0"></a>
<a href="handler.ashx?section=alls2014&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','arc2014','images/ASGArc_14_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2014','images/ASGArc_14_ON.gif','images/ASGArc_14_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_14_OFF.gif" name="arc2014" width="121" height="21" border="0"></a>
<a href="handler.ashx?section=alls2015&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','arc2015','images/ASGArc_15_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2015','images/ASGArc_15_ON.gif','images/ASGArc_15_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_15_OFF.gif" name="arc2015" width="121" height="21" border="0"></a>
<a href="handler.ashx?section=alls2016&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onClick="MM_nbGroup('down','group1','arc2016','images/ASGArc_16_ON.gif',1);if(this.blur)this.blur()" onMouseOver="MM_nbGroup('over','arc2016','images/ASGArc_16_ON.gif','images/ASGArc_16_ON.gif',1)" onMouseOut="MM_nbGroup('out')"><img src="images/ASGArc_16_OFF.gif" name="arc2016" width="121" height="21" border="0"></a>
</td>
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
