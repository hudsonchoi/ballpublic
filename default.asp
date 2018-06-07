<% If Not isEmpty (Request.QueryString("token")) Then 
	Response.Redirect("/BAM/Handler.ashx?token="&Request.QueryString("token"))
   End If%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <title>:: MLB Style Guides ::</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <script src="./portal/js/jquery-1.7.1.min.js" type="text/javascript"></script>
        <script type="text/javascript">
        $(document).ready(function() {
            <% If Not isEmpty (Request.QueryString("e")) or Not isEmpty (Request.QueryString("c")) Or Not isEmpty (Request.QueryString("reason")) Then
            Response.Write("$('#username_cover').css('visibility', 'hidden');")
            Response.Write("$('#username').css('color','red');")
            elseif Not isEmpty (Request.Cookies("Insensitive")("Email")) Then 
                Response.Write("$('#username_cover').css('visibility', 'hidden');")
            End If%>
        });
        function MakeItBlank(type) {
            $("#" + type).val("");
            $("#" + type).css('color','black');
        }
        function HideCover(type, focus) {
            $("#" + type + "_cover").css("visibility", "hidden");
            if (focus) {
                $("#" + type).focus();
            }
        }
        </script>

        <link href="./css/mlb.css?<%= Server.URLEncode(now) %>" rel="stylesheet" type="text/css">
    </head>
    <body>
    <form method="post" action="/portal/xt_login.asp" name="login">
        <div id="login">
            <table cellpadding="0" cellspacing="0" border="0">
                <tr><td id="login_banner"><img src="./portal/images/trans_spacer.gif" width="595" height="1" /></td></tr>
                <tr><td id="username_td"><div class="profile_field"><input type="text" name="UserName" id="username" value="<% 
                          If Not isEmpty (Request.QueryString("e")) Then
				            Response.Write(Request.QueryString("e"))
                          ElseIf Not isEmpty (Request.QueryString("c")) Then
                            If Request.QueryString("c")="invalid" then 
                                Response.Write("Invalid Username or Password")
                            ElseIf Request.QueryString("c")="expired" Then 
                                Response.Write("Sorry.. Your account has been expired.")
                            ElseIf Request.QueryString("c")="x" Then 
                                Response.Write("Sorry.. You have no access this time.")
				            End If
                         ElseIf Request.QueryString("reason")="denied_bad_password" Then 
                             Response.Write("The password is case senstive.")  
			             elseif Not isEmpty (Request.Cookies("Insensitive")("Email")) Then 
		            Response.Write(Request.Cookies("Insensitive")("Email"))
               End If%>" size="25" onfocus="HideCover('username', false);MakeItBlank('username')" class="unpw"></div>
                    <div onClick="HideCover('username', true)" class="cover" id="username_cover">Username</div>
                    </td></tr>
                <tr><td id="divider"></td></tr>
                <tr><td id="password_td">
                    <div class="profile_field"><input type="password" id="password" name="Password" title="Password" onfocus="HideCover('password', false);;MakeItBlank('password')" class="unpw"/></div>
                    <div onClick="HideCover('password', true)" class="cover" id="password_cover">Password</div></td></tr>
                <tr><td id="action"><a href="/portal/changepwd.asp"><img src="./portal/images/trans_spacer.gif" width="207" height="27" border="0"/></a><img src="./portal/images/trans_spacer.gif" width="137" height="27" border="0" /><img src="./images/trans_spacer.gif" width="251" height="27" /></td></tr>
                <tr><td id="howto">
                    <div id="signin"><input type="submit" border="0" name="Submit" src="./portal/images/login/signin.jpg" width="266" height="51" id="submit" value=""></div> 
                </td></tr>
            </table>
        </div>
        </form>

    </body>
</html>