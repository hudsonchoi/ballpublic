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
            if (context.Request.QueryString["section"] == "mlb2018")
            {
                if (context.Session["mlb_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["mlb_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://clubmarks.mlbstyleguide.com/sitelet/2018?token=" + context.Request.QueryString["guid"]);
            }
			else if (context.Request.QueryString["section"] == "mlb2017")
            {
                if (context.Session["mlb_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["mlb_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://clubmarks.mlbstyleguide.com/sitelet/2017?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "spring")
            {
                if (context.Session["spring_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["spring_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://springtraining.mlbstyleguide.com/sitelet/2017?token=" + context.Request.QueryString["guid"]);

            }
            else if (context.Request.QueryString["section"] == "opening")
            {
                if (context.Session["opening_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["opening_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://openingday.mlbstyleguide.com/sitelet/2017?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "alls")
            {
                if (context.Session["alls_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["alls_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://allstargame.mlbstyleguide.com/sitelet/2017?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "alls2016")
            {
                if (context.Session["alls_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["alls_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://allstargame.mlbstyleguide.com/sitelet/2016?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "alls2015")
            {
                if (context.Session["alls_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["alls_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://allstargame.mlbstyleguide.com/sitelet/2015?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "alls2014")
            {
                if (context.Session["alls_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["alls_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://allstargame.mlbstyleguide.com/sitelet/2014?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "alls2013")
            {
                if (context.Session["alls_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["alls_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://allstargame.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "world2013")
            {
                if (context.Session["world_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["world_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://postseason.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "world2014")
            {
                if (context.Session["world_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["world_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://postseason.mlbstyleguide.com/sitelet/2014?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "world2015")
            {
                if (context.Session["world_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["world_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://postseason.mlbstyleguide.com/sitelet/2015?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "world")
            {
                if (context.Session["world_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["world_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://postseason.mlbstyleguide.com/sitelet/2016?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "coop")
            {
                if (context.Session["coop_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["coop_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://cooperstown.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "mascot")
            {
                if (context.Session["mascot_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["mascot_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://mascots.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "minor")
            {
                if (context.Session["minor_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["minor_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://minorleague.mlbstyleguide.com/sitelet/2015?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "club")
            {
                if (context.Session["club_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["club_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://clubmarketingcenter.mlbstyleguide.com/sitelet/2013?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "mascotbabies")
            {
                if (context.Session["mascotbabies_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["mascotbabies_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://mascotbabies.mlbstyleguide.com/sitelet/2014?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "pressbox")
            {
                if (context.Session["pressbox_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["pressbox_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://mlbpressbox.mlbstyleguide.com/sitelet/2015?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "restricted")
            {
                if (context.Session["restricted_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["restricted_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://restricteddownload.mlbstyleguide.com/sitelet/2016?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "playball")
            {
                if (context.Session["playball_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["playball_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://playball.mlbstyleguide.com/sitelet/2016?token=" + context.Request.QueryString["guid"]);
            }
            else if (context.Request.QueryString["section"] == "london")
            {
                if (context.Session["london_login"] == null)
                {
                    LogThisLogin(context);
                    context.Session["london_login"] = "true";
                }
                context.Response.Redirect("frameset.asp?target=https://londonseries.mlbstyleguide.com/sitelet/2018?token=" + context.Request.QueryString["guid"]);
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
        string section = string.Empty;
        try
        {
            if (context.Request.QueryString["section"].ToString().IndexOf("mlb") >= 0)
            {
                section = "mlb";
            }
            else if (context.Request.QueryString["section"].ToString().IndexOf("alls") >= 0)
            {
                section = "alls";
            }
            else
            {
                section = context.Request.QueryString["section"].ToString();
            }
            // create and open a connection object
            using (conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MLBStyleGuideConnectionString1"].ConnectionString))
            {
                conn.Open();
                using (command = new SqlCommand("mlbstyleguide.uspLogLogins", conn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("Section", section);
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