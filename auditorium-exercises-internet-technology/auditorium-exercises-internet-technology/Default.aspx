<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="auditorium_exercises_internet_technology._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
       <h4>Аудиториски вежби - Интернет Технологии</h4>
    </div>

    <div class="row">
        <div class="col-md">
            <asp:Label ID="Aud2" runat="server">Аудиториска вежба 2 и 3</asp:Label><br />
            <asp:HyperLink ID="Aud21" runat="server" NavigateUrl="~/Destinations.aspx">Задача 1</asp:HyperLink><br />
            <asp:HyperLink ID="Aud22" runat="server" NavigateUrl="~/Destinations2.aspx">Задача 2</asp:HyperLink><br />
            <asp:HyperLink ID="Aud23" runat="server" NavigateUrl="~/Destinations3.aspx">Задача 3</asp:HyperLink><br />
            <asp:HyperLink ID="Aud24" runat="server" NavigateUrl="~/Currency.aspx">Задача 4</asp:HyperLink><br />
            <asp:HyperLink ID="Aud25" runat="server" NavigateUrl="~/Currency2.aspx">Задача 5</asp:HyperLink><br />
            <asp:HyperLink ID="Aud26" runat="server" NavigateUrl="~/Currency3.aspx">Задача 6</asp:HyperLink><br />
            <asp:HyperLink ID="Aud27" runat="server" NavigateUrl="~/ImagePosition.aspx">Задача 7</asp:HyperLink><br />
            <asp:HyperLink ID="Aud28" runat="server" NavigateUrl="~/BirthdayCard.aspx">Задача 8</asp:HyperLink>
        </div>

        <br />

        <div class="col-md">
            <asp:Label ID="Aud4" runat="server">Аудиториска вежба 4</asp:Label><br />
            <asp:HyperLink ID="Aud41" runat="server" NavigateUrl="~/Register.aspx">Задача 1</asp:HyperLink> <br />
            <asp:HyperLink ID="Aud42" NavigateUrl="~/CitySelect.aspx" runat="server">Задача 2</asp:HyperLink> <br />
            <asp:HyperLink ID="Aud43" NavigateUrl="~/Exam.aspx" runat="server">Задача 3</asp:HyperLink> <br />
            <asp:HyperLink ID="Aud44" NavigateUrl="~/TelephoneNumber.aspx" runat="server">Задача 4</asp:HyperLink> <br />
            <asp:HyperLink ID="Aud45" NavigateUrl="~/ImprovedValidation.aspx" runat="server">Задача 5</asp:HyperLink> <br />
            <asp:HyperLink ID="Aud46" NavigateUrl="~/GroupValidation.aspx" runat="server">Задача 6</asp:HyperLink> <br />
        </div>

        <br />

        <div class="col-md">
            <asp:Label ID="Aud5" runat="server">Аудиториска вежба 5</asp:Label> <br />
            <asp:HyperLink ID="Aud51" NavigateUrl="~/Katalog.aspx" runat="server">Задача 1</asp:HyperLink>
        </div>
    </div>

</asp:Content>
