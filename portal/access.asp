<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <title>:: MLB Style Guides ::</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <script src="./js/jquery-1.7.1.min.js" type="text/javascript"></script>
        <script type="text/javascript">
        </script>
        <script language="JavaScript">
<!--
    function MM_swapImgRestore() { //v3.0
        var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
    }

    function MM_preloadImages() { //v3.0
        var d = document; if (d.images) {
            if (!d.MM_p) d.MM_p = new Array();
            var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
                if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; }
        }
    }

    function MM_swapImage() { //v3.0
        var i, j = 0, x, a = MM_swapImage.arguments; document.MM_sr = new Array; for (i = 0; i < (a.length - 2) ; i += 3)
            if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src; x.src = a[i + 2]; }
    }

    function MM_findObj(n, d) { //v4.01
        var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
            d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
        }
        if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
        for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
        if (!x && d.getElementById) x = d.getElementById(n); return x;
    }
    //-->
</script>
        <link href="./css/mlb.css?<%= Server.URLEncode(now) %>" rel="stylesheet" type="text/css">
    </head>
    <body onLoad="MM_preloadImages('./images/access/marks22_h.jpg','./images/access/marks22.jpg','./images/access/marks23_h.png','./images/access/marks23.png','./images/access/spring_.jpg','./images/access/spring__h.jpg','./images/access/opening.jpg','./images/access/opening_h.jpg','./images/access/all.jpg','./images/access/all_h.jpg','./images/access/post.jpg','./images/access/post_h.jpg','./images/access/coop.jpg','./images/access/coop_h.jpg','./images/access/mascot.jpg','./images/access/mascot_h.jpg','./images/access/minor.png','./images/access/minor_h.png','./images/access/korea.png','./images/access/korea_h.png','./images/access/playball.jpg','./images/access/playball_h.jpg','./images/access/london.jpg','./images/access/london_h.jpg',,'./images/access/sponsors.jpg','./images/access/sponsors_h.jpg','./images/access/mexico.png','./images/access/mexico_h.png','./images/access/little_league.jpg','./images/access/little_league_h.jpg','./images/access/mlblogovault.jpg','./images/access/mlblogovault_h.jpg','./images/access/restricted4.jpg','./images/access/restricted4_h.jpg','./images/access/allss.png','./images/access/allss_h.png','./images/access/openings.png','./images/access/openings_h.png','./images/access/springs.png','./images/access/springs_h.png')">
    <form method="post" action="/portal/xt_login.asp" name="login">
        <div id="access_panel">
            <div id="panel_header"><img src="./images/trans_spacer.gif" width="1" height="100"/></div>
            <% REM ATTENTION! ATTENTION! ATTENTION!
               REM When launching 2024 replace the below to Session("MemberData").Item("mlb2024") %>
		     <% If Session("MemberData").Item("mlb2023") Then %> 
            <div class="sitelet"><div class="new"><img src="./images/access/new.png" /></div><a href="handler.ashx?section=mlb2023&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('clubmarksNew','','./images/access/marks23_h.png',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/marks23.png" name="clubmarksNew" width="410" height="51" border="0" id="clubmarksNew"/></a></div>
            <% End If%>

            <% If Session("MemberData").Item("mlb2022") Then %> 
            <div class="sitelet"><a href="handler.ashx?section=mlb2022&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('clubmarks','','./images/access/marks22_h.png',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/marks22.png" name="clubmarks" width="410" height="51" border="0" id="clubmarks"/></a></div>
            <% End If%>
			
            <% If Session("MemberData").Item("spring") Then %>
            <div class="sitelet"><a href="handler.ashx?section=spring&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('spring','','./images/access/spring__h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/spring_.jpg" name="spring" width="410" height="51" border="0" id="spring"/></a></div>
            <% End If %>

            <% If Session("MemberData").Item("opening") Then %>
            <div class="sitelet"><a href="handler.ashx?section=opening&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('openingday','','./images/access/opening_h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/opening.jpg" name="openingday" width="410" height="51" border="0" id="openingday"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("alls") Then %>
            <div class="sitelet"><a href="handler.ashx?section=alls&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>"" target="_top" onMouseOver="MM_swapImage('allstar','','./images/access/all_h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/all.jpg" name="allstar" width="410" height="51" border="0" id="allstar"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("world") Then %>
            <div class="sitelet"><a href="handler.ashx?section=world&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('post','','./images/access/post_h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/post.jpg" name="post" width="410" height="51" border="0" id="post"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("coop") Then %>
            <div class="sitelet"><a href="handler.ashx?section=coop&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('coop','','./images/access/coop_h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/coop.jpg" name="coop" width="410" height="51" border="0" id="coop"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("mascot") Then %>
            <div class="sitelet"><a href="handler.ashx?section=mascot&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('mascot','','./images/access/mascot_h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/mascot.jpg" name="mascot" width="410" height="51" border="0" id="mascot"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("minor") Then %>
            <div class="sitelet"><a href="handler.ashx?section=minor&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('minor','','./images/access/minor_h.png',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/minor.png" name="minor" width="410" height="51" border="0" id="minor"></a></div>
            <% End If %>
            
            <% If Session("MemberData").Item("mascotbabies") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=mascotbabies&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('mascotbabies','','./images/access/mascotbabies_h.png',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/mascotbabies.png" name="mascotbabies" width="410" height="51" border="0" id="mascotbabies"></a></div>
            <% End If %>
            
            <% If Session("MemberData").Item("pressbox") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=pressbox&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('pressbox','','./images/access/pressbox_h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/pressbox.jpg" name="pressbox" width="410" height="51" border="0" id="pressbox"></a></div>
            <% End If %>

           <% If Session("MemberData").Item("restricted") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=restricted&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('restricted','','./images/access/korea_h.png',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/korea.png" name="restricted" width="410" height="51" border="0" id="restricted"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("playball") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=playball&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('playball','','./images/access/playball_h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/playball.jpg" name="playball" width="410" height="51" border="0" id="playball"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("sponsors") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=sponsors&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('sponsors','','./images/access/sponsors_h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/sponsors.jpg" name="sponsors" width="410" height="51" border="0" id="sponsors"></a></div>
            <% End If %>
			
            <% If Session("MemberData").Item("london") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=london&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('london','','./images/access/london_h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/london.jpg" name="london" width="410" height="51" border="0" id="london"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("restricted2") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=restricted2&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('restricted2','','./images/access/mexico_h.png',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/mexico.png" name="restricted2" width="410" height="51" border="0" id="restricted2"></a></div>
            <% End If %>
			
			<% If Session("MemberData").Item("restricted3") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=restricted3&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('restricted3','','./images/access/little_league_h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/little_league.jpg" name="restricted3" width="410" height="51" border="0" id="restricted3"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("mlblogovault") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=mlblogovault&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('mlblogovault','','./images/access/mlblogovault_h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/mlblogovault.jpg" name="mlblogovault" width="410" height="51" border="0" id="mlblogovault"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("restricted4") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=restricted4&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('restricted4','','./images/access/restricted4_h.jpg',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/restricted4.jpg" name="restricted4" width="410" height="51" border="0" id="restricted4"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("allscp") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=allscp&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('allscp','','./images/access/allss_h.png',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/allss.png" name="allscp" width="410" height="51" border="0" id="allscp"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("openingcp") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=openingcp&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('openingcp','','./images/access/openings_h.png',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/openings.png" name="openingcp" width="410" height="51" border="0" id="openingcp"></a></div>
            <% End If %>

            <% If Session("MemberData").Item("springcp") Then %>	
            <div class="sitelet"><a href="handler.ashx?section=springcp&email=<%=Session("MemberData").Item("Email")%>&guid=<%=Session("Guid")%>" target="_top" onMouseOver="MM_swapImage('springcp','','./images/access/springs_h.png',1)" onMouseOut="MM_swapImgRestore()" onClick="MM_swapImgRestore()"><img src="./images/access/springs.png" name="springcp" width="410" height="51" border="0" id="springcp"></a></div>
            <% End If %>
            <div style="width:596px; text-align:center; font-size:12px; margin-top:-5px"><a href="/questionnaire.aspx" style="color:#6e6f71">Help! I'm having problems accessing one of the sites.</a></div>       
        </div>
        </form>

    </body>
</html>