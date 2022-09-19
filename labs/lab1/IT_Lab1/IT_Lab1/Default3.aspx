<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="IT_Lab1.Default3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4 text-center">
            <br />
            <br />
            <div class="col-md-16">
                Лозинка: <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div class="col-md-16">
                Проака: <asp:TextBox ID="txtPoraka" runat="server"  ReadOnly="True" TextMode="MultiLine" Height="47px" OnTextChanged="txtPoraka_TextChanged" Width="169px" Rows="5"></asp:TextBox>
            </div>
            <br />
            <div class="col-md-16">
                <asp:Button ID="btnProveri" runat="server" Text="Провери" OnClick="btnProveri_Click" Width="103px" />
            </div>
            <br />
            <div class="col-md-16">
                <asp:Button ID="btnPrvaStrana" runat="server" Text="Прва Страна" Enabled="false" OnClick="btnPrvaStrana_Click"/>
            </div>
            <br />
            <div class="col-md-16">
                <asp:Label ID="Label1" runat="server" Text="Лозинките не се совпаѓаат!" Visible="False" ></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
