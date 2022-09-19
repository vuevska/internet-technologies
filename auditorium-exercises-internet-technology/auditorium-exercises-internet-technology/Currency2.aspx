<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Currency2.aspx.cs" Inherits="auditorium_exercises_internet_technology.Currency2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4">
            <br />
            Барање: 
            Да се прошири претходната апликација, така што ќе се 
            овозможи бришење на ставки од листата и 
            прикажување на бројот на ставки во листата.
            Да се воведе контрола секогаш кога ќе има операција 
            со ставка од листа, во листата да има селектирана 
            ставка.
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Внеси име и вредност на валута:"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <br />
            <asp:Button ID="Button1" runat="server" Text="Додади" OnClick="Button1_Click" /> <br />
            <asp:Button ID="Button2" runat="server" Text="Избриши" OnClick="Button2_Click1" /> <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" EnableViewState="True"></asp:RadioButtonList>
            Вкупно ставки во листата: <asp:Label ID="Label2" runat="server" Text="2"></asp:Label> <br />
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
