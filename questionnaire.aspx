<%@ Page Language="C#" AutoEventWireup="true" CodeFile="questionnaire.aspx.cs" Inherits="questionnaire" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="./css/mlb.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        #questionBody {
            background-color:#f5f5f5;
            width:900px;
            margin: 0 auto;
            margin-top:120px;
            border-style:solid;
            border-color:#e7e7e9;
            border-width:3px;
            color:#6e6f73;
            padding:5px;
        }

        ol li {
            padding: 10px;
        }

        .requreid {
            color:red;
            font-weight:bold;
            font-size:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <div id="questionBody">
                <div style="width:900px;text-align:center">
                <h1>Troubleshooting Questionnaire</h1>
                </div>
                <asp:Panel ID="pnlQuestionBody" runat="server">
                <ol>
                    <li>
                        Briefly describe the problem that you are experiencing and then kindly complete the form below. <span class="requreid">*</span> <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="tbDescription" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="tbDescription" runat="server" TextMode="MultiLine" Rows="4" Width="700px"></asp:TextBox> 
                    </li>
                    <li>
                        What platform are you using? <asp:DropDownList ID="ddlPlatform" runat="server">
                                                                <asp:ListItem>Select One</asp:ListItem>
                                                                <asp:ListItem>Mac</asp:ListItem>
                                                                <asp:ListItem>PC</asp:ListItem>
                                                                <asp:ListItem>Others</asp:ListItem>
                                                             </asp:DropDownList> <span class="requreid">*</span> <asp:CustomValidator ID="cvPlatform" runat="server" ErrorMessage="Required" ForeColor="Red" OnServerValidate="cvPlatform_ServerValidate" ControlToValidate="ddlPlatform"></asp:CustomValidator>
                    </li>
                    <li>
                        What browser are you using? <asp:DropDownList ID="ddlBrowser" runat="server">
                                                                <asp:ListItem>Select One</asp:ListItem>
                                                                <asp:ListItem>Internet Explorer</asp:ListItem>
                                                                <asp:ListItem>Safari</asp:ListItem>
                                                                <asp:ListItem>Chrome</asp:ListItem>
                                                                <asp:ListItem>Firefox</asp:ListItem>
                                                                <asp:ListItem>Others</asp:ListItem>
                                                             </asp:DropDownList> <span class="requreid">*</span> <asp:CustomValidator ID="cvBrowser" runat="server" ErrorMessage="Required" ForeColor="Red" OnServerValidate="cvPlatform_ServerValidate" ControlToValidate="ddlBrowser"></asp:CustomValidator>
                    </li>
                    <li>
                        What version of your browser are you using? <asp:TextBox ID="tbVersion" runat="server" Width="100px"></asp:TextBox > <span class="requreid">*</span> <asp:RequiredFieldValidator ID="rfvVersion" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="tbVersion" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator> Is there an update due? <asp:DropDownList ID="ddlUpdateDue" runat="server">
                                                                                                                                                                        <asp:ListItem Value="Not Answered">Select One</asp:ListItem>
                                                                                                                                                                        <asp:ListItem>Yes</asp:ListItem>
                                                                                                                                                                        <asp:ListItem>No</asp:ListItem>
                                                                                                                                                                        <asp:ListItem>Don't know</asp:ListItem>
                                                                                                                                                                     </asp:DropDownList>
                    </li>
                    <li>
                        Did this problem occur on the first try? Or, did it initially work and the problem appeared suddenly? <asp:DropDownList ID="ddlPattern" runat="server">
                                                                                                                                <asp:ListItem>Select One</asp:ListItem>
                                                                                                                                <asp:ListItem>The first try</asp:ListItem>
                                                                                                                                <asp:ListItem>Initially worked</asp:ListItem>
                                                                                                                             </asp:DropDownList> <span class="requreid">*</span> <asp:CustomValidator ID="cvPattern" runat="server" ErrorMessage="Required" ForeColor="Red" OnServerValidate="cvPlatform_ServerValidate" ControlToValidate="ddlPattern"></asp:CustomValidator>
                    </li>
                    <li>
                        Please provide your username and password so that we can compare it to the database.<br />
                        Username:<asp:TextBox ID="tbUsername" runat="server"></asp:TextBox> <span class="requreid">*</span> <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="tbUsername" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                        Password:<asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox> <span class="requreid">*</span> <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="tbPassword" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </li>
                    <li>
                        Who is your MLB representative? <asp:DropDownList ID="ddlRepresentative" runat="server"></asp:DropDownList> 
                    </li>
                </ol>
                <div style="text-align:center">
                <asp:Button ID="btnSubmit" runat="server" Text="   Submit   " OnClick="btnSubmit_Click" />
                </div>
                </asp:Panel>
                <asp:Panel ID="pnlThankYou" runat="server" Visible="false">
                    <div style="text-align:center">
                    <br />
                    <h2>Thank you!</h2>
                    <b>MLB Style Guide Web Team</b>
                    </div>
                </asp:Panel>
                
                <br />
                <br />
                <br />
            </div>
        
    </form>
</body>
</html>
