<%@ Page Language="C#"   MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TechSupportWebApp.Account.Login" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

             <%--Element control for autorisation--%>
        <asp:Login ID="Login1" runat="server"></asp:Login> 

</asp:Content>