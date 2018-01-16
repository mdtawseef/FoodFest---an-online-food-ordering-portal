<%@ Page Title="" Language="C#" MasterPageFile="~/FoodFest_admin.Master" AutoEventWireup="true" CodeBehind="AdminCheckOrder.aspx.cs" Inherits="FoodFest.AdminCheckOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            text-align: center;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            text-align: right;
            width: 134px;
        }
        .auto-style4 {
            height: 23px;
            text-align: right;
            width: 134px;
        }
        .auto-style5 {
            width: 23px;
        }
        .auto-style6 {
            height: 23px;
            width: 23px;
        }
        .auto-style7 {
            height: 23px;
            text-align: center;
            width: 23px;
        }
        .auto-style8 {
            width: 134px;
        }
        .auto-style9 {
            height: 23px;
            text-align: center;
            width: 134px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table border="0" width="500" height="250" align="center">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style8"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td style="font-size: xx-large; text-align: center;" colspan="2"> <h3>Order Summary</h3></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3">Restaurant Name: </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td></td>
        </tr>
         <tr>
            <td class="auto-style6"></td>
            <td class="auto-style4">Restaurant Address: </td>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
             </td>
            <td class="auto-style2"></td>
        </tr>
         <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3">Restaurant Phone: </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
             </td>
            <td></td>
        </tr>
         <tr>
            <td class="auto-style7"></td>
            <td class="auto-style9"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
         <tr>
            <td class="auto-style6"></td>
            <td class="auto-style4">Customer OrderId: </td>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
             </td>
            <td class="auto-style2"></td>
        </tr>
         <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3">Customer Name: </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
             </td>
            <td></td>

        </tr>
         <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3">Customer&nbsp; Phone: </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
             </td>
            <td></td>
        </tr>
         <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3">Customer Address: </td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
             </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style9"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style1" colspan="2">Foods to be Delivered</td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style8"></td>
            <td></td>
            <td></td>
        </tr>


        </table>
</asp:Content>
