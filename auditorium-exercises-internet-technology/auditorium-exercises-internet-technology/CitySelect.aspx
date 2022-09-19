<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CitySelect.aspx.cs" Inherits="auditorium_exercises_internet_technology.CitySelect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md">
            <br />
            Барање:
            Да се креира форма која ќе содржи компонента од 
            типот DropDownList исполнета со неколку градови.
            Да се додаде контрола за валидација, која ќе дозволи 
            генерирање на ново барање до серверот само ако е 
            селектирана ставка од листата.
            <br />
            <asp:DropDownList ID="Cities" runat="server">
                <asp:ListItem>-град-</asp:ListItem>
                <asp:ListItem>Скопје</asp:ListItem>
                <asp:ListItem>Битола</asp:ListItem>
                <asp:ListItem>Охрид</asp:ListItem>
            </asp:DropDownList> <br />
            <asp:Button ID="Register" runat="server" Text="Регистрирај се" OnClick="Register_Click" /> <br />
            <asp:RequiredFieldValidator 
                ID="ReqCity" 
                ControlToValidate="Cities"
                runat="server" 
                ErrorMessage="Изберете град!"
                InitialValue="-град-"></asp:RequiredFieldValidator> <br />
            <asp:Label ID="Show" Visible="false" runat="server" Text="Успешно се регистриравте."></asp:Label>
        </div>
    </div>
</asp:Content>
