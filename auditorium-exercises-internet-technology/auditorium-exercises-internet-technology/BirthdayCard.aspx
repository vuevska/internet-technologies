<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BirthdayCard.aspx.cs" Inherits="auditorium_exercises_internet_technology.BirthdayCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
        <div class="col-md">
            <br />
            <br />
            <asp:Panel ID="First" runat="server" BackColor="LightGray" Width="300px">
                Изберете боја за позадина <br />
                <asp:DropDownList ID="BackgroundColor" runat="server">
                </asp:DropDownList> <br /><br />
                Изберте фонт <br />
                <asp:DropDownList ID="Font" runat="server"></asp:DropDownList> <br /><br />
                Изберете боја на фонт <br />
                <asp:DropDownList ID="FontColor" runat="server"></asp:DropDownList> <br /><br />
                Внесете големина на фонт <br />
                <asp:TextBox ID="FontSize" runat="server"></asp:TextBox> <br /><br />
                Тип на рамка <br />
                <asp:RadioButtonList ID="Frame" runat="server"></asp:RadioButtonList> <br /><br />
                <asp:CheckBox ID="Image" runat="server" /> Додади слика <br />
                Внесете ја содржината на честитката <br />
                <asp:TextBox ID="Text" runat="server" TextMode="MultiLine" Rows="10" Columns="38"></asp:TextBox> <br />
                <asp:Button ID="Create" runat="server" Text="Креирај" OnClick="Create_Click" />
            </asp:Panel>       
        </div>
        <br />
        <div class="col-md text-center">
            <asp:Panel ID="Second" runat="server" Width="300px" Height="400px">
                <asp:Label ID="ShowText" runat="server" Text=""></asp:Label> <br /> <br />
                <asp:Image ID="ShowImage" runat="server" ImageUrl="~/happy-birthday-candles-background-happy-birthday-pics.jpg" Visible="False" Width="120px" Height="100px"/>
            </asp:Panel>
        </div>
  
</asp:Content>
