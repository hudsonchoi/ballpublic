<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Web.SessionState;
using System.Net;
using System.Threading.Tasks;
using System.Runtime.Serialization.Json;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");
        if (context.Request.QueryString["token"] != null)
        {
            //valid token = F18C9965-FF30-4CED-BF04-933A42ACC715
            //var url = "http://staging.mlbstyleguide.com/service/user.svc/get_user?token="+context.Request.QueryString["token"];
            var url = "https://secure.mlb.com/pressbox_open/validate.jsp?token=" + context.Request.QueryString["token"];
            var syncClient = new WebClient();
            var content = syncClient.DownloadString(url);

            if (content == "true")
            {
                Guid gid = Guid.NewGuid();
                BAMUsersDAL.AddBAMUser(gid);
                context.Response.Redirect("http://mlbpressbox.mlbstyleguide.com/sitelet/2015?token=" + gid);
		//context.Response.Redirect("http://pressbox.dev.mlb.kbweb.me/?token=" + gid);
                context.Response.Write("Valid!!");
            }            
            else
                context.Response.Write("Invalid..");
            //access[] accessArray;
            //////JsonResult jResuts;

            //////using (MemoryStream stream = new MemoryStream(Encoding.UTF8.GetBytes(content)))
            //////{
            //////    DataContractJsonSerializer serializer = new DataContractJsonSerializer(typeof(JsonResult));
            //////    jResuts = (JsonResult)serializer.ReadObject(stream);
            //////}

            //////if (jResuts.GetUserResult.Count > 0)
            //////{
            //////    //Guid gid = Guid.NewGuid();
            //////    //BAMUsersDAL.AddBAMUser(gid);
            //////    //context.Response.Redirect("http://pressbox.dev.mlb.kbweb.me/?token=" + gid);
            //////    context.Response.Write("Valid!!");
            //////}                
            //////else
            //////    context.Response.Write("Invalid..");
        }
        else
        {
            context.Response.Write("Invalid..");
        }

        
        //DataContractSerializer serializer = new DataContractSerializer(
        //context.Response.Write(accessArray.Length);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}