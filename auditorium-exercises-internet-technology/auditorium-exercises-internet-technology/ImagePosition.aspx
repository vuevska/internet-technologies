<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ImagePosition.aspx.cs" Inherits="auditorium_exercises_internet_technology.ImagePosition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md">
            <br />
            Барање:
            Да се креира веб страна во која ќе се прикажат Image, 
            Label и ImageButton. Притоа, при клик на ImageButton
            да се прикаже позицијата на која е кликнато.
            <br />
            <br />

            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image.jpg" width="40%" OnClick="ImageButton1_Click"/> <br />
            <asp:Label ID="Label1" runat="server" Text="Не е кликнато ништо."></asp:Label>
        </div>
    </div>

</asp:Content>
