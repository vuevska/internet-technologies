<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Katalog.aspx.cs" Inherits="auditorium_exercises_internet_technology.Katalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-offset-4 col-xs-8">
        Барање:
        Да се креира страница Katalog.aspx која ќе содржи 
        линкови за три различни категории на книги.
        Секој од линковите го пренасочува корисникот на 
        страницата Proizvodi.aspx.
        Во зависност од избраната категорија, во страницата 
        Proizvodi.aspx, да се пренесе идентификациски број и 
        име на одбраната категорија.
        Страницата Proizvodi.aspx да ги прикажува 
        производите од избраната категорија, придружени со 
        нивните цени.

        <br />
        <br />
        <asp:LinkButton ID="lnkTehnickaLiteratura" runat="server" OnClick="lnkTehnickaLiteratura_Click">Техничка литература</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lnkNaucnaFantastika" runat="server" OnClick="lnkNaucnaFantastika_Click">Научна фантастика</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lnkManga" runat="server" OnClick="lnkManga_Click">Манга</asp:LinkButton>
    </div>
</asp:Content>
