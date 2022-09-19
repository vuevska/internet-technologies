<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Destinations.aspx.cs" Inherits="auditorium_exercises_internet_technology.Destinations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4">
            <br />
            Барање:
            Да се креира листа на дестинации, од која корисникот 
            ќе може да избере една дестинација. Да се прикаже 
            името на избраната дестинација откако корисникот ќе 
            кликне на копче.
            Да се користат контролите ListBox, Button и Label. 
            Компонентите да се постават во табела, централно 
            сместена на екранот. 
            Ставките во листата да бидат исполнети статички <br />
            
            <br />

            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem>Скопје</asp:ListItem>
                <asp:ListItem>Велес</asp:ListItem>
                <asp:ListItem>Битола</asp:ListItem>
                <asp:ListItem>Куманово</asp:ListItem>
            </asp:ListBox> <br />
            <asp:Button ID="Button1" runat="server" Text="Избери дестинација" OnClick="Button1_Click" /> <br />
            <asp:Label ID="Label1" runat="server" Text="Не е избран град."></asp:Label>
        </div>
    </div>
</asp:Content>
