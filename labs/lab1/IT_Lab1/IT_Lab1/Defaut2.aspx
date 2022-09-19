<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Defaut2.aspx.cs" Inherits="IT_Lab1.Defaut2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-4 text-center">
            <asp:Table ID="Table1" runat="server" align="center" Width="200px">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Panel ID="pnlPanela" runat="server" Font-Names="Arial" BackColor="#CC00FF">
                            Operand 1:<asp:TextBox ID="txtOperand1" runat="server" EnableViewState="false"></asp:TextBox>
                            <br />
                             Operand 2:<asp:TextBox ID="txtOperand2" runat="server" AutoPostBack="true"></asp:TextBox>
                            <br />
                            <asp:Label ID="lblResultat" runat="server" Text="Result Here" Width="90px" EnableViewState="false"></asp:Label>
                            <br />
                            <asp:Button ID="btnSoberi" runat="server" Text="Add" width="90px" align="right" OnClick="btnSoberi_Click"/>
                        </asp:Panel>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:CheckBox 
                            ID="chbVidlivo" 
                            runat="server" 
                            Text="Видливо" 
                            OnCheckedChanged="chbVidlivo_CheckedChanged" 
                            AutoPostBack="true" 
                            Checked="true" />
                    </asp:TableCell>
                </asp:TableRow>
                
            </asp:Table>
        </div>
    </div>


</asp:Content>
