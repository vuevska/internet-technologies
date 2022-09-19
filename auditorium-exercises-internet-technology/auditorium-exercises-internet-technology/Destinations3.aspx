<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Destinations3.aspx.cs" Inherits="auditorium_exercises_internet_technology.Destinations3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4">
            <br />
            Барање:
            Да се прошири претходната апликација, така што ќе се 
            овозможи селекција на повеќе ставки одеднаш. Да се 
            испечатат имињата на сите селектирани ставки.
            <br />
            <br />

            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
                <asp:ListItem>Скопје</asp:ListItem>
                <asp:ListItem>Велес</asp:ListItem>
                <asp:ListItem>Битола</asp:ListItem>
                <asp:ListItem>Куманово</asp:ListItem>
            </asp:ListBox> <br />
            <asp:Button ID="Button1" runat="server" Text="Избери" OnClick="Button1_Click" /> <br />
            <asp:Label ID="Label1" runat="server" Text="Не е избран град."></asp:Label>
        </div>
    </div>
</asp:Content>
