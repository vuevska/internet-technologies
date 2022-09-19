<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Currency3.aspx.cs" Inherits="auditorium_exercises_internet_technology.Currency3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4">
            <br />
            Барање: 
            Да се прошири претходната апликација, така што ќе се 
            овозможи конверзија од селектирана валута во 
            денари.
            Вредноста која се конвертира се внесува преку 
            TextBox.
            Конверзијата да се изврши секогаш кога корисникот ќе 
            ја промени селекцијата од листата на валути
            <div class="m-4">
                Внесете име на валута: <br />
                <asp:TextBox ID="ImeValuta" runat="server"></asp:TextBox>
            </div>
            
            <div class="m-4">
                Внесете вредност на валута: <br />
                <asp:TextBox ID="VrednostValuta" runat="server"></asp:TextBox>
            </div>
            <br />
            <br />
            <div class="m-4">
                <asp:Button ID="DodadiValuta" runat="server" Text="Додади валута" OnClick="DodadiValuta_Click" />
                <asp:Button ID="BrisiValuta" runat="server" Text="Бриши валута" OnClick="BrisiValuta_Click"  />
            </div>
            <hr />
            <div class="m-4">
                <asp:RadioButtonList ID="ListaValuti" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListaValuti_SelectedIndexChanged"></asp:RadioButtonList>
            </div>
            <hr />
            <div class="m-4">
                Вкупно валути: <asp:Label ID="Total" runat="server" Text="0"></asp:Label>
            </div>
            <hr />
            <div class="m-4">
                Внесете вредност: <asp:TextBox ID="Vrednost" runat="server"></asp:TextBox>
            </div>
            <br />
            <hr />
            <div class="m-4">
                Статус: <asp:Label ID="Status" runat="server" Text="0"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
