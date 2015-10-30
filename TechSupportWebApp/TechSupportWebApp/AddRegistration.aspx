<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddRegistration.aspx.cs" Inherits="TechSupportWebApp.AddRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 73px;
        }
        .auto-style4 {
            width: 36px;
            background-color: #666666;
        }
        .auto-style5 {
            width: 29px;
            background-color: #999999;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td rowspan="4" style="background-color: #000000">&nbsp;</td>
                <td class="auto-style4" rowspan="4">&nbsp;</td>
                <td class="auto-style5" rowspan="4">&nbsp;</td>
                <td class="auto-style3">Customer:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCustomer" DataTextField="CustomerID" DataValueField="CustomerID" style="margin-left: 0px" Width="100px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Product:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceProduct" DataTextField="ProductCode" DataValueField="ProductCode" Width="100px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Reg Date:</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSourceRegDate" DataTextField="RegistrationDate" DataValueField="RegistrationDate" Width="170px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:LinkButton ID="lbRegister" runat="server" style="color: #000000">Register Product</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT [CustomerID] FROM [Registrations]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceProduct" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT [ProductCode] FROM [Registrations]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceRegDate" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT [RegistrationDate] FROM [Registrations]"></asp:SqlDataSource>
    </p>
</asp:Content>
