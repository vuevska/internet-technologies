<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="BuyPlaneTicket.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container text-left" style="margin: 20px;">
        <div class="row">
            <div class="col-md" style="margin-left: 30px">
                Име<asp:TextBox ID="Name" runat="server" style="width: 80%"></asp:TextBox>
            </div>
            <div class="col-md text-left">
                <asp:RequiredFieldValidator 
                    ID="ReqName"
                    ControlToValidate="Name"
                    runat="server" 
                    ErrorMessage="Внеси име!"
                    Display="None">                    >
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <br />

         <div class="row">
            <div class="col-md">
                Презиме<asp:TextBox ID="Surname" runat="server" style="width: 80%"></asp:TextBox>
            </div>
             <div class="col-md text-left">
                <asp:RequiredFieldValidator 
                    ID="ReqSurname"
                    ControlToValidate="Surname"
                    runat="server" 
                    ErrorMessage="Внеси презиме!"
                    Display="None">                    >
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <br />

         <div class="row">
            <div class="col-md" style="margin-left: -10px">
                ФИНКИ ID<asp:TextBox ID="ID" runat="server" style="width: 80%"></asp:TextBox> @finki.ukim.mk
            </div>
            <div class="col-md text-left">
                <asp:RequiredFieldValidator 
                    ID="ReqID"
                    ControlToValidate="ID"
                    runat="server" 
                    ErrorMessage="Внеси ФИНКИ ID!"
                    Display="None">                   
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator
                    ID="RegularExpressionID" 
                    runat="server" 
                    ControlToValidate="ID"
                    ErrorMessage="Неправилно корисничко име" 
                    ValidationExpression="[A-Z]+\d+(_\d{2})?"
                    CssClass="text-danger">
                </asp:RegularExpressionValidator>
            </div>
        </div>

        <br />

        <div class="row">
            <div class="col-md" style="margin-left: 4px">
                Лозинка<asp:TextBox ID="Password" runat="server" style="width: 80%"></asp:TextBox>
            </div>
            <div class="col-md text-left">
                <asp:RequiredFieldValidator 
                    ID="ReqPass"
                    ControlToValidate="Password"
                    runat="server" 
                    ErrorMessage="Внеси лозинка!"
                    Display="None">                   
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <br />

        <div class="row" style="margin-left: -13px">
            <div class="col-md">
                Потврда<asp:TextBox ID="ConfirmPassword" runat="server" style="width: 80%"></asp:TextBox>
            </div>
            <div class="col-md text-left">
                <asp:RequiredFieldValidator 
                    ID="ReqConfirmPass"
                    ControlToValidate="ConfirmPassword"
                    runat="server" 
                    ErrorMessage="Внеси потврда за лозинка!"
                    Display="None">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator 
                    ID="ComparePassword"
                    runat="server"
                    ErrorMessage="Лозинките не се совпаѓаат!" 
                    ControlToValidate="Password"
                    ControlToCompare="ConfirmPassword"
                    Display="None">
                </asp:CompareValidator>
            </div>
        </div>

        <br />

        <div class="row">
            <div class="col-md" style="margin-left: 6px">
                Адреса<asp:TextBox ID="Address" runat="server" style="width: 80%"></asp:TextBox>
            </div>
            <div class="col-md text-left">
                <asp:RequiredFieldValidator 
                    ID="ReqAddress"
                    ControlToValidate="Address"
                    runat="server" 
                    ErrorMessage="Внеси адреса!"
                    Display="None">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <br />

        <div class="row">
            <div class="col-md" style="margin-left: -3px">
                Телефон<asp:TextBox ID="Telephone" runat="server" style="width: 80%"></asp:TextBox>
            </div>
            <div class="col-md text-left">
                <asp:RequiredFieldValidator 
                    ID="ReqTelephone"
                    ControlToValidate="Telephone"
                    runat="server" 
                    ErrorMessage="Внеси телефон!"
                    Display="None">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                    ID="RegularExpressionTelephone"
                    ControlToValidate="Telephone"
                    runat="server" 
                    ErrorMessage="Неправилен формат на телефон"
                    ValidationExpression="(\+389) ((2 \d{4} \d{3})|(7[0125678] \d{3} \d{3}))"
                    CssClass="text-danger">
                </asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md">
                Пол<asp:RadioButtonList ID="Sex" runat="server" RepeatDirection="Horizontal" Width="7%"></asp:RadioButtonList>
            </div>
            <div class="col-md text-left">
                <asp:RequiredFieldValidator 
                    ID="ReqSex"
                    ControlToValidate="Sex"
                    runat="server" 
                    ErrorMessage="Избери пол!"
                    CssClass="text-danger"
                    Display="None">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md">
                Датум на раѓање <br />
                <asp:Calendar ID="BirthDate" runat="server"></asp:Calendar>
            </div>
        </div>

        <br />
        <br />

        <div class="row">
            <div class="col-md text-left">
                Занимање <br />
                <asp:DropDownList ID="Occupation" runat="server">
                    <asp:ListItem Selected="True">-занимање-</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md text-left">
                <asp:RequiredFieldValidator 
                    ID="ReqOccupation"
                    ControlToValidate="Occupation"
                    InitialValue="-занимање-"
                    runat="server" 
                    ErrorMessage="Изберете занимање!"
                    CssClass="text-danger"
                    Display="None">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md text-left">
                Години на вршење на избраната дејност <br />
                <asp:TextBox ID="Duration" runat="server"></asp:TextBox>
            </div>
            <div class="col-md text-left">
                <asp:RequiredFieldValidator 
                    ID="ReqDuration"
                    ControlToValidate="Duration"
                    runat="server" 
                    ErrorMessage="Внеси години на вршење на избраната дејност!"
                    Display="None">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator 
                    ID="CompareValidatorDuration"
                    runat="server"
                    ControlToValidate="Duration"
                    ErrorMessage="Недозволена вредност" 
                    Type="Integer"
                    Operator="DataTypeCheck"
                    CssClass="text-danger">
                </asp:CompareValidator>
            </div>
        </div>

        <asp:ValidationSummary ID="ValidationSummary" runat="server" ForeColor="Red" CssClass="text-danger"/>

        <div class="row">
            <div class="col-md">
                <asp:Button ID="Submit" runat="server" Text="Поднеси" OnClick="Submit_Click" />
            </div>
            <div>
                <h4>
                    <asp:Label ID="Show" runat="server" Text="" Font-Bold="true"></asp:Label>
                </h4>
               
            </div>
        </div>

        
</div>
</asp:Content>
