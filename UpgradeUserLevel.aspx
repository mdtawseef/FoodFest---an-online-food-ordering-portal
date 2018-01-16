<%@ Page Title="" Language="C#" MasterPageFile="~/FoodFest_admin.Master" AutoEventWireup="true" CodeBehind="UpgradeUserLevel.aspx.cs" Inherits="FoodFest.UpgradeUserLevel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table border="0" width="500" height="250" align="center">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style4"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td style="font-size: xx-large" colspan="2"><h3 style="text-align: center">User Profile</h3></td>
            <td></td>
            
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style4">User Id:</td>
            <td>
                <asp:Label ID="UserIdLabel" runat="server" Visible="False"></asp:Label>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style6">
                &nbsp;Name: 
            </td>
            <td><asp:Label ID="NAmelab" runat="server" Text="Label"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2"> </td>
            <td class="auto-style6">
                Address:
            </td>
            <td><asp:Label ID="AddresLab" runat="server" Text="Label"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5" > </td>
            <td class="auto-style6" >
                Phone: </td>
            <td ><asp:Label ID="Phonelab" runat="server" Text="Label"></asp:Label></td>
            <td ></td>
        </tr>
        <tr>
            <td class="auto-style5" > </td>
            <td class="auto-style6">
                Email:</td>
            <td> <asp:Label ID="Emaillab" runat="server"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5"> </td>
            <td class="auto-style6">
                User level:</td>
            <td> 
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Customer</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td></td>
        </tr>
         
        <tr>
            <td class="auto-style5"> </td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upgrade user Level" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style4"></td>
            <td></td>
             <td></td>
        </tr>
         </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
