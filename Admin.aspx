<%@ Page Title="" Language="C#" MasterPageFile="~/FoodFest_admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FoodFest.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="under_tell_us"><img src="images/Welcome_admin.jpg" width="100%" height="280px"/></div>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/OrdersNew.aspx?type=new">SEE NOW</asp:HyperLink>
</asp:Content>
