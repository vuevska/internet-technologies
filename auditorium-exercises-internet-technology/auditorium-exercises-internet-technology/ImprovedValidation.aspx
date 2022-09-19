<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ImprovedValidation.aspx.cs" Inherits="auditorium_exercises_internet_technology.ImprovedValidation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
        <div class="col-md">
            <br />
            Барање: <br />
            Да се модифицира Задача 3, така што сите пораки за 
            грешка ќе се прикажат групно во една порака <br />
            Барање од 3та задача:
            <br />
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
            <asp:Button ID="Button" runat="server" Text="Регистрирај испит" OnClick="Button_Click"/> <br />

            <asp:RequiredFieldValidator 
                ID="ReqExam" 
                ControlToValidate="ExamName"
                runat="server" 
                ErrorMessage="Мора да се внесе име на испит!" 
                Display="None">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator 
                ID="ReqGrade" 
                ControlToValidate="Grade"
                runat="server" 
                ErrorMessage="Мора да се внесе оцена за испит!"
                Display="None">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator 
                ID="ReqDate" 
                ControlToValidate="Date"
                runat="server" 
                ErrorMessage="Мора да се внесе датум на испит!"
                Display="None">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RangeValidator 
                ID="RangeGrade"
                ControlToValidate="Grade"
                runat="server" 
                ErrorMessage="Внесената оцена мора да е меѓу 5 и 10!" 
                MaximumValue="10" 
                MinimumValue="5" 
                Operator="LessThan" 
                Type="Integer"
                Display="None">
            </asp:RangeValidator>
            <br />
            <asp:CompareValidator 
                ID="CompareDate" 
                ControlToValidate="Date"
                runat="server"
                ErrorMessage="Внесениот датум не е точен!" 
                Type="Date" 
                ValueToCompare="05.10.2022" 
                Operator="LessThan"
                Display="None">
            </asp:CompareValidator> <br />
            <asp:ValidationSummary 
                ID="ValidationSummary"
                runat="server" 
                DisplayMode="List" /> <br />
            <asp:Label ID="Label" Visible="false" runat="server" Text="Успешно се регистриравте!"></asp:Label>
            <br />
        </div>
    </div>
</asp:Content>
