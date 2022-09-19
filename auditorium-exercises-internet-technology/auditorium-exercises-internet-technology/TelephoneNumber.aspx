<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelephoneNumber.aspx.cs" Inherits="auditorium_exercises_internet_technology.TelephoneNumber" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md">
            <br />
            Барање: 
            Да се креира форма за внесување на мобилен 
            телефон.
            Да се воведе валидација на полето за внесување, така 
            што ќе се дозволи генерирање на серверско барање 
            само ако е внесен валиден формат на мобилен 
            телефон од Македонија.
            Бројот треба да понува со префиксот 070, 071, 075, 076 
            или 077 и да содржи уште точно 6 цифри.
            <br />
            <br />
            Внеси телефонски број: <br />
            <asp:TextBox ID="Number" runat="server"></asp:TextBox> <br />
            <asp:RequiredFieldValidator 
                ID="ReqPhone" 
                ControlToValidate="Number"
                runat="server" 
                ErrorMessage="Мора да се внесе телефонски број!">
            </asp:RequiredFieldValidator> <br />
            <asp:RegularExpressionValidator 
                ID="ValNumber"
                ControlToValidate="Number"
                runat="server"
                ErrorMessage="Не е внесен точен формат на телефонски број!" 
                ValidationExpression="07[01567]\d{6}"></asp:RegularExpressionValidator>

            <br />
            <asp:Button ID="Submit" runat="server" Text="Регистрирај се" OnClick="Submit_Click" /> <br />
            <asp:Label ID="Label" runat="server" Text="Успешно се регистриравте!" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>
