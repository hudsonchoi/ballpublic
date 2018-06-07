using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class questionnaire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack){
            ddlRepresentative.DataSource = RequestorsDAL.GetRequestors();
            ddlRepresentative.DataBind();
            ListItem li = new ListItem("Select One", "Not Selected");
            ddlRepresentative.Items.Insert(0, li);
        }
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string msg = String.Format("<h2>Troubleshooting Questionnaire</h2><ol>" +
                                        "<li>Briefly describe the problem that you are experiencing and then kindly complete the form below. <b>"+tbDescription.Text +"</b></li>" +
                                        "<li>What platform are you using? <b>" + ddlPlatform.SelectedValue + "</b></li>" +
                                        "<li>What browser are you using? <b>" + ddlBrowser.SelectedValue + "</b></li>" +
                                        "<li>What version of your browser are you using? <b>" + tbVersion.Text + "</b> Is there an update due? <b>" + ddlUpdateDue.SelectedValue + "</b></li>" +
                                        "<li>Did this problem occur on the first try? Or, did it initially work and the problem appeared suddenly? <b>" + ddlPattern.SelectedValue + "</b></li>" +
                                        "<li>Please provide your username and password so that we can compare it to the database.<br/>" +
                                        "Username:<b>" + tbUsername.Text + "</b> Password:<b>" + tbPassword.Text + "</b></li>" +
                                        "<li>Who is your MLB representative? <b>" + ddlRepresentative.SelectedValue + "</b></li>" +
                                        "</ol>");
            string _FromName = "Major League Baseball";
            string _FromEmail = "info@mlbstyleguide.com";
            string strSubject = "MLB Style Guide: Troubleshooting Questionnaire";
            SmtpClient smtpClient;
            MailMessage message;
            try
            {
                smtpClient = new SmtpClient();
                smtpClient.Host = ConfigurationManager.AppSettings["SMTPServer"].ToString();
                smtpClient.Port = 25;
                message = new MailMessage();

                MailAddress fromAddress = new MailAddress(_FromEmail, _FromName);
                message.From = fromAddress;

                MailAddress toAddress = new MailAddress(ConfigurationManager.AppSettings["QuestionnaireTo"].ToString());
                message.To.Clear();
                message.To.Add(toAddress);

                //MailAddress ccAddress = new MailAddress(ConfigurationManager.AppSettings["QuestionnaireCC"].ToString());
                //message.CC.Clear();
                //message.CC.Add(ccAddress);

                message.Subject = strSubject;
                message.IsBodyHtml = true;
                message.Body = msg;
                smtpClient.Send(message);

                pnlQuestionBody.Visible = false;
                pnlThankYou.Visible = true;

            }
            catch (Exception ex)
            {
                //throw ex;
                //iBadEmails++;
                //sbBadEmailList.Append("<a href=\"EditUser.aspx?id=" + strID + "\" target=\"_blank\">" + strRecepient + "</a><br/>");
            }
        }
    }
    protected void cvPlatform_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value == "Select One")
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
}