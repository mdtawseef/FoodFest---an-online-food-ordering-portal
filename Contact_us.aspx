<%@ Page Title="" Language="C#" MasterPageFile="~/foodfest.Master" AutoEventWireup="true" CodeBehind="Contact_us.aspx.cs" Inherits="FoodFest.Contact_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="food_type_title_1">Contact Details</div> 
    <p><h3>&nbsp Address: House-5, Road-6, Dhanmondi,Dhaka-1205.</h3></p>
    <p><h3>&nbsp Call us at: +88-01922435423</h3></p>
     <p><h3>&nbsp Email: foodfest@gmail.com</h3></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <table width="500" height="50" align="center">
        <tr>
            <td></td>
            <td><h3 class="auto-style1">Please leave a Message</h3></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2">Your name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="192px"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2">Email</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="194px"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2">Message</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="98px" TextMode="MultiLine" Width="247px"></asp:TextBox></td>
            <td></td>

        </tr>
        <tr>
            <td></td>
            
            <td><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td></td>

        </tr>
    </table>
</asp:Content>
