<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="auditorium_exercises_internet_technology.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md">
            <br />
            Барање:
            Да се креира форма за регистрирање на корисник 
            каде корисникот го внесува своето име, лозинка и 
            потврда на лозинката во контроли од типот TextBox.
            Откако ќе ги внесе податоците, корисникот притиснува 
            на копче кое треба да го „регистрира“ корисникот.
            Да се воведе валидација која нема да дозволи 
            регистрација на корисникот ако полето за корисничко 
            име е празно и ако лозинките не се совпаѓаат.
            Валидацијата да се изврши на клиентска страна 
            <br />
            <br />
            Име: <br />
            <asp:TextBox ID="Name" runat="server"></asp:TextBox><br />
            Лозинка: <br />
            <asp:TextBox ID="Password" runat="server"></asp:TextBox> <br />
            Потврди лозинка: <br />
            <asp:TextBox ID="ConfirmPassword" runat="server"></asp:TextBox> <br />
            <asp:Button ID="Reg" runat="server" Text="Регистрирај се" OnClick="Reg_Click"/><br />

            <asp:RequiredFieldValidator ID="ReqName" 
                ControlToValidate="Name" 
                runat="server" 
                ErrorMessage="Мора да се внесе име!">
            </asp:RequiredFieldValidator><br />

            <asp:RequiredFieldValidator ID="ReqPass" 
                runat="server" 
                ControlToValidate="Password" 
                ErrorMessage="Мора да се внесе лозинка!">
            </asp:RequiredFieldValidator><br />

            <asp:RequiredFieldValidator ID="ReqCpass" 
                runat="server" 
                ControlToValidate="ConfirmPassword" 
                ErrorMessage="Мора да се повтори лозинката!">
            </asp:RequiredFieldValidator><br />

            <asp:CompareValidator ID="Compare" 
                ControlToCompare="ConfirmPassword" 
                ControlToValidate="Password" 
                runat="server" 
                ErrorMessage="Лозинките не се совпаѓаат!">
            </asp:CompareValidator>

        </div>
    </div>
</asp:Content>
