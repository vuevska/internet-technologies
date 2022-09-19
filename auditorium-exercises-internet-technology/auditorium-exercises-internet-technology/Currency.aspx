<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Currency.aspx.cs" Inherits="auditorium_exercises_internet_technology.Currency" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4">
            <br />
            Барање: 
            Да се креира листа на валути во која ставките ќе се 
            внесуваат динамички.
            Името и вредноста на валутата во денари ги внесува 
            корисникот преку TextBox. Секоја ставка се креира со 
            притискање на копче.
            Да се користат контролите RadioButtonList, Button,
            TextBox и Label.
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Внеси име и вредност на валута:"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Додади" OnClick="Button1_Click" />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" EnableViewState="True"></asp:RadioButtonList>
        </div>
    </div>
</asp:Content>
