<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.SessionState;

public class Handler : IHttpHandler, IRequiresSessionState {

    public void ProcessRequest (HttpContext context) {
	

		if ((context.Request.QueryString["section"] != null)&&(context.Request.QueryString["email"] != null)&&(context.Request.QueryString["guid"] != null)){
            if (context.Request.QueryString["section"] == "mlb2014")
            {
                if (context.Session["mlb_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["mlb_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=http://clubmarks.mlbstyleguide.com/sitelet/2014?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "mlb")
            {
                if (context.Session["mlb_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["mlb_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=http://clubmarks.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "spring")
            {
                if (context.Session["spring_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["spring_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=http://springtraining.mlbstyleguide.com/sitelet/2014?token=" + context.Request.QueryString["guid"]);

            }
            else if (context.Request.QueryString["section"] == "opening")
            {
                if (context.Session["opening_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["opening_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=http://openingday.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);    
            }
            else if (context.Request.QueryString["section"] == "alls")
            {
                if (context.Session["alls_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["alls_login"] = "true";
                }
                context.Response.Redirect("framesetasg.asp?target=http://allstargame.mlbstyleguide.com/sitelet/2014?token=" + context.Request.QueryString["guid"]);
            }
else if (context.Request.QueryString["section"] == "alls2013")
            {
                if (context.Session["alls_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["alls_login"] = "true";
                }
                context.Response.Redirect("framesetasg.asp?target=http://allstargame.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "world")
            {
                if (context.Session["world_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["world_login"] = "true";
                }
                context.Response.Redirect("framesetpost.asp?target=http://postseason.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "coop")
            {
                if (context.Session["coop_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["coop_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=http://cooperstown.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "mascot")
            {
                if (context.Session["mascot_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["mascot_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=http://mascots.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "minor")
            {
                if (context.Session["minor_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["minor_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=http://minorleague.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "club")
            {
                if (context.Session["club_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["club_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=http://clubmarketingcenter.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);
            }
             
		}
		
	}
		

	public bool IsReusable {
		get {
			return false;
		}
    }
	
	private void LogThisLogin(HttpContext context)
	{
		SqlConnection conn = null;
		SqlCommand command = null;
		try
		{
			// create and open a connection object
			using (conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MLBStyleGuideConnectionString1"].ConnectionString))
			{
				conn.Open();
				using (command = new SqlCommand("mlbstyleguide.uspLogLogins", conn))
				{
					command.CommandType = CommandType.StoredProcedure;
					command.Parameters.AddWithValue("Section", context.Request.QueryString["section"]);
					command.Parameters.AddWithValue("Email", context.Request.QueryString["email"]);
					command.ExecuteNonQuery();
				}
			}
		}
		catch (Exception ex)
		{
			try
			{
				System.Net.Mail.SmtpClient smtpClient = new System.Net.Mail.SmtpClient();
				System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
				System.Net.Mail.MailAddress fromAddress = new System.Net.Mail.MailAddress("info@mlbstyleguide.com", "Debugger");
				smtpClient.Host = System.Configuration.ConfigurationManager.AppSettings["SMTPServer"].ToString();
				smtpClient.Port = 25;
				message.From = fromAddress;
				message.To.Add("hudsonchoi@gmail.com");
				message.Subject = "MLBStyleGuide : Error on handler.ashx";
				message.Body = ex.Message;
				smtpClient.Send(message);
			}
			catch (Exception e)
			{
			}
		}
		finally
		{
			if (command != null)
			{
				command.Dispose();
			}

			if (conn != null)
			{
				conn.Close();
			}
		}
	}
}