<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GroupValidation.aspx.cs" Inherits="auditorium_exercises_internet_technology.GroupValidation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md">
            <br />
            <br />
            Барање: <br />
            Да се креира форма со две компоненти од типот 
            TextBox и две од типот Button.
            Да се воведе валидација на влезните полиња по 
            групи.
            Да се креираат две групи кои ќе се состојат од едно 
            копче и едно влезно поле.
            Валидацијата на влезното поле кај секоја од групите ја 
            предизвикува копчето од истата група.
            Валидација на едното влезно поле не треба да се 
            одразува на содржината на другото влезно поле.
            <br />
            <br />

            <asp:TextBox ID="Group1" runat="server"></asp:TextBox> <br />

            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                ControlToValidate="Group1" 
                runat="server" 
                ErrorMessage="Мора да се пополни полето за внес!" 
                ValidationGroup="group1">
            </asp:RequiredFieldValidator> <br />

            <asp:Button ID="Button1" runat="server" Text="Button1" OnClick="Button1_Click" /> <br />
            <asp:Label ID="Label1" runat="server" Text="Успешно!" Visible="false"></asp:Label> <br />


            <asp:TextBox ID="Group2" runat="server"></asp:TextBox> <br />

            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" 
                ControlToValidate="Group2" 
                runat="server" 
                ErrorMessage="Мора да се пополни полето за внес!" 
                ValidationGroup="group2">
            </asp:RequiredFieldValidator> <br />

            <asp:Button ID="Button2" runat="server" Text="Button2" OnClick="Button2_Click" /> <br />
            <asp:Label ID="Label2" runat="server" Text="Успешно!" Visible="false"></asp:Label> <br />
        </div>
    </div>
</asp:Content>
