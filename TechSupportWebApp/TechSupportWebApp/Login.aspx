<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TechSupportWebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
     <link href="Styles/Styles.css" rel="stylesheet" type="text/css" />
    <asp:Image runat="server"></asp:Image>
    <img class="techsupport_img" alt="techsupport_img" src="/Images/techsupport.jpg" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <table class="table_log" border="0" cellpadding="7" cellspacing="0">
                <tr>
                    <td class="td_right">
                        Login:
                    </td>
                    <td>
                        <asp:TextBox ID="txtBoxLogin" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txtBoxLogin" Display="Dynamic"
                            ErrorMessage="Login is required field." ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="td_right">
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="txtBoxPassword" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="txtBoxPassword" Display="Dynamic"
                            ErrorMessage="Password is required field." ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="colspan" colspan="2">
                        <asp:Button ID="btnLogin" CssClass="button" OnClick="Button_Click" runat="server" Text="Submit" />
                    </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
