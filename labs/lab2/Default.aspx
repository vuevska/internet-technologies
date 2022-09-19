<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BuyPlaneTicket._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Интернет Технологии</h2>
        <h3>Лаб вежба 2</h3>
        <h4>Изработено од Маја Вуевска</h4>
        <h4>Индекс: 203007</h4>        
        <br />
        <br />
        <br />

        Втората задача е во делот <asp:HyperLink ID="Zadaca2" NavigateUrl="~/About.aspx" runat="server">About</asp:HyperLink>
        <br />
        Трета задача <asp:HyperLink ID="Zadaca3" NavigateUrl="~/Najava.aspx" runat="server">тука</asp:HyperLink>
    </div>

    <div class="row" style="margin: 20px">
        <div class="col-md-4">
            <asp:Table ID="Table1" runat="server" Height="403px" Width="565px">
                <asp:TableRow>
                    <asp:TableCell>
                        Име
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell RowSpan="11">
                        <div style="margin-left: 10px">
                            <asp:Panel ID="Show" runat="server" BackColor="#FFFF99" BorderStyle="Solid">
                                Почитуван патнику <br />
                                <asp:Label ID="LblNameSurname" runat="server" Text="Label" ForeColor="Red" Font-Bold="True"></asp:Label> <br />
                                Извадена ви е карта за <br />
                                <asp:Label ID="LblTransportation" runat="server" Text="Label" Font-Bold="True" Font-Italic="True"></asp:Label> <br />
                                со почетна дестинација <br />
                                <asp:Label ID="LblFrom" runat="server" Text="Label" Font-Bold="True" Font-Italic="True"></asp:Label> <br />
                                и крајна дестинација <br />
                                <asp:Label ID="LblTo" runat="server" Text="Label" Font-Bold="True" Font-Italic="True"></asp:Label> <br />
                                Времето на поаѓање е <br />
                                <asp:Label ID="LblTime" runat="server" Text="Label" Font-Bold="True" Font-Italic="True"></asp:Label> <br />
                                <br />
                                Вашето место на седење ќе биде во зоната за <asp:Label ID="LblZone" runat="server" Text="Label" Font-Bold="True" Font-Italic="True"></asp:Label>
                                во <asp:Label ID="LblClass" runat="server" Text="Label" Font-Bold="True" Font-Italic="True"></asp:Label> класа и во текот на патувањето ќе бидете
                                послужени со <asp:Label ID="LblServe" runat="server" Text="" Font-Bold="True" Font-Italic="True"></asp:Label> <br />
                                <asp:Image ID="Image" runat="server" Width="60%" Height="60%"/>
                                <br />
                                Ви благодариме на довербата и ви посакуваме среќен пат!
                            </asp:Panel>
                        </div>
                        
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        Презиме
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="Surname" runat="server"></asp:TextBox>
                    </asp:TableCell>
                   
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        Од
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="From" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                 
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        До
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="To" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                   
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        Датум на тргање
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="Day" runat="server"></asp:DropDownList>
                        <asp:DropDownList ID="Month" runat="server" Width="80px" ItemType="String"></asp:DropDownList>
                        <br />
                        <asp:DropDownList ID="Year" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                    
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        Време на тргање
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="Hour" runat="server"></asp:DropDownList>
                    </asp:TableCell>
                   
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        Превозно средство
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:ListBox ID="Transportation" runat="server">
                            <asp:ListItem Value="~/Airplane.jpg">Авион</asp:ListItem>
                            <asp:ListItem Value="~/Train.jpg">Воз</asp:ListItem>
                            <asp:ListItem Value="~/Tramvaj,jpg">Трамвај</asp:ListItem>
                        </asp:ListBox>
                    </asp:TableCell>
                 
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        Зона
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="Zone" runat="server"></asp:RadioButtonList>
                    </asp:TableCell>
                   
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        Класа
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="Class" runat="server"></asp:RadioButtonList>
                    </asp:TableCell>
               
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                       Послуга
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBoxList ID="Serve" runat="server"></asp:CheckBoxList>
                    </asp:TableCell>
               
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="Submit" runat="server" Text="Поднеси" OnClick="Submit_Click"/>
                    </asp:TableCell>
                 
                </asp:TableRow>

            </asp:Table>

        </div> 
    </div>

</asp:Content>
