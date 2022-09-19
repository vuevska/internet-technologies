<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="BuyPlaneTicket.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container text-left">
        <br />
        <br />
        <div class="row">
            <div class="col-md">
                Корисник: <asp:TextBox ID="txtKorisnik" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="ReqKorisnik"
                    runat="server"
                    ControlToValidate="txtKorisnik"
                    ErrorMessage="Внесете корисничко име!"
                    CssClass="text-danger">
                </asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="col-md" style="margin-left: 9px">
                Лозинка: <asp:TextBox ID="txtLozinka" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="ReqLozinka"
                    ControlToValidate="txtLozinka"
                    runat="server" 
                    ErrorMessage="Внесете лозинка!"
                    CssClass="text-danger">
                </asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="col-md">
                <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />
            </div>
            <br />
            <div class="col-md">
                Обиди: <asp:Label ID="lblObidi" runat="server" Text="0"></asp:Label>
            </div>
        </div>



    </div>
</asp:Content>
