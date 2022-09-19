<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GlavnaStranica.aspx.cs" Inherits="BuyPlaneTicket.GlavnaStranica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Jumbotron">
        <h2>Добредојдовте на главната страница!</h2>
        <br />
        <asp:LinkButton ID="btnOdjava" runat="server" OnClick="btnOdjava_Click">Одјава</asp:LinkButton>
    </div>
</asp:Content>
