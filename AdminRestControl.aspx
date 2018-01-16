<%@ Page Title="" Language="C#" MasterPageFile="~/FoodFest_admin.Master" AutoEventWireup="true" CodeBehind="AdminRestControl.aspx.cs" Inherits="FoodFest.AdminRestControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            text-align: center;
        }
    .auto-style2 {
        height: 31px;
    }
    .auto-style3 {
        height: 23px;
    }
    .auto-style4 {
        height: 30px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table  width="500" height="50" align="center">
        <tr>
            <td class="auto-style1"></td>
           
            <td class="auto-style1" colspan="2" rowspan="1"><h1>Restaurant Controls</h1></td>
            <td class="auto-style1"></td>
        </tr>
         <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add Restaurant" OnClick="Button1_Click" BackColor="GreenYellow" BorderColor="Black" Width="165px"/>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Edit Restaurant" OnClick="Button2_Click" BackColor="GreenYellow" BorderColor="Black" Width="165px"/>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:Button ID="Button3" runat="server" Text="View All Restaurants" OnClick="Button3_Click" BackColor="GreenYellow" BorderColor="Black" Width="165px" />
            </td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2"></td>
        </tr>
           <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Add New Food Item" OnClick="Button4_Click" BackColor="#99ccff" BorderColor="Black" Width="165px" />
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" Text="Edit Food Item" OnClick="Button5_Click" BackColor="#99ccff" BorderColor="Black" Width="165px"/>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4">
                <asp:Button ID="Button7" runat="server" Text="Remove a food item" OnClick="Button5_Click" BackColor="#99ccff" BorderColor="Black" Width="165px" />
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>

    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
