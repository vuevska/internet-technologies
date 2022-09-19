<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="auditorium_exercises_internet_technology.Exam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md">
            <br />
            Барање:
            Да се креира форма за внесување на податоци за 
            испит.
            Формата треба да содржи компоненти од типот 
            TextBox во кои се внесуваат името на испитот, 
            добиената оцена и датумот на полагање.
            Да се воведе валидација на контролите која нема да 
            дозволува генерирање на барање до серверот ако не 
            е внесено името на испитот, ако внесената оцена не 
            припаѓа во опсегот од 5 до 10 и ако датумот на 
            испитот не e пред 05.10.2022.
            <br />
            <br />
            Име на испит: <br />
            <asp:TextBox ID="ExamName" runat="server"></asp:TextBox> <br />
            Оцена: <br />
            <asp:TextBox ID="Grade" runat="server"></asp:TextBox> <br />
            Датум: <br />
            <asp:TextBox ID="Date" runat="server"></asp:TextBox> <br />
            <asp:Button ID="Button" runat="server" Text="Регистрирај испит" OnClick="Button_Click" /> <br />

            <asp:RequiredFieldValidator 
                ID="ReqExam" 
                ControlToValidate="ExamName"
                runat="server" 
                ErrorMessage="Мора да се внесе име на испит!">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator 
                ID="ReqGrade" 
                ControlToValidate="Grade"
                runat="server" 
                ErrorMessage="Мора да се внесе оцена за испит!">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator 
                ID="ReqDate" 
                ControlToValidate="Date"
                runat="server" 
                ErrorMessage="Мора да се внесе датум на испит!">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RangeValidator 
                ID="RangeGrade"
                ControlToValidate="Grade"
                runat="server" 
                ErrorMessage="Внесената оцена мора да е меѓу 5 и 10!" 
                MaximumValue="10" 
                MinimumValue="5"
                Type="Integer">
            </asp:RangeValidator>
            <br />
            <asp:CompareValidator 
                ID="CompareDate" 
                ControlToValidate="Date"
                runat="server"
                ErrorMessage="Внесениот датум не е точен!" 
                Type="Date" 
                ValueToCompare="05.10.2022" 
                Operator="LessThan">
            </asp:CompareValidator> <br />
            <asp:Label ID="Label" Visible="false" runat="server" Text="Успешно се регистриравте!"></asp:Label>
        </div>
    </div>
</asp:Content>
