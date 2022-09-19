<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IT_Lab1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Интернет Технологии Лаб 1</h1>
        <br />
        <h3>Изработено од Маја Вуевска</h3>
        <br />
        <h4>Индекс: 203007</h4>
        
    </div>

    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lblVreme1" runat="server" Text="Контрола за приказ на време" Font-Names="Arial" ForeColor="Navy" Font-Size="Medium"></asp:Label>
            <br />
            <asp:Label ID="lblVreme2" runat="server" Text="Лабела за контрола за приказ на време" Font-Names="Arial" ForeColor="Navy" Font-Size="Medium"></asp:Label>
            <br />
            <asp:Button ID="btnVreme" runat="server" Text="Button" Font-Names="Arial" ForeColor="Navy" Font-Size="Medium" OnClick="btnVreme_Click"/>
            <br />
            <br />
            <asp:HyperLink ID="hlSledno" runat="server" NavigateUrl="~/Defaut2.aspx">Втора Страна</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="hlsTreto" runat="server" NavigateUrl="~/Default3.aspx">Трета Страна</asp:HyperLink>
        </div>    
    </div>

</asp:Content>
