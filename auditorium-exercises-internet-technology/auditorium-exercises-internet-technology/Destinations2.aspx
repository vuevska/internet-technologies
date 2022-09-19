<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Destinations2.aspx.cs" Inherits="auditorium_exercises_internet_technology.Destinations2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4">
            <br />
            Барање:
            Да се прошири претходната апликација, така што за 
            секоја селектирана дестинација, покрај нејзиното име 
            ќе се прикаже и нејзиното растојание од Скопје.
            <br />
           
            <br />

            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem Value="0">Скопје</asp:ListItem>
                <asp:ListItem Value="42">Велес</asp:ListItem>
                <asp:ListItem Value="108">Битола</asp:ListItem>
                <asp:ListItem Value="29">Куманово</asp:ListItem>
            </asp:ListBox> <br />
            <asp:Button ID="Button1" runat="server" Text="Избери дестинација" OnClick="Button1_Click" /> <br />
            <asp:Label ID="Label1" runat="server" Text="Не е избран град."></asp:Label>
        </div>
    </div>
</asp:Content>
