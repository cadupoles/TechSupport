<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TechnicianMaintenance.aspx.cs" Inherits="TechSupportWebApp.TechnicianMaintenance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Technician Maintenance</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-weight: bold;
            text-decoration: underline;
        }
        h1 {
            text-align: center;
        }
        .auto-style3 {
            height: 23px;
            text-align: center;
        }
        .auto-style4 {
            font-weight: normal;
            text-decoration: underline;
        }
    </style>

    <h1 class="auto-style4"><strong>Techniciam Maintenance Page</strong></h1>

</head>

<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Tech ID</td>
                <td class="auto-style2">Name</td>
                <td class="auto-style2">E-mail</td>
                <td class="auto-style2">Phone</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="4">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnRemove" runat="server" Text="Remove" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSave" runat="server" Text="Save" Width="100px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
