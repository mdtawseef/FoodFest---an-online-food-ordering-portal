<%@ Page Title="" Language="C#" MasterPageFile="~/foodfest.Master" AutoEventWireup="true" CodeBehind="MyOldOrder.aspx.cs" Inherits="FoodFest.MyOldOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style2 {
            text-align: right;
            width: 71px;
        }
        .auto-style4 {
            width: 125px;
        }
        .auto-style5 {
            width: 71px;
        }
        .auto-style6 {
            width: 125px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table border="0" width="500" height="250" align="center">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style4"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td style="font-size: xx-large" colspan="2"><h3>Your total Order Summary</h3></td>
            <td></td>
            
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style4"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style6">
                Restaurant Name: 
            </td>
            <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2"> </td>
            <td class="auto-style6">
                Restaurant Address:
            </td>
            <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5" > </td>
            <td class="auto-style6" >
                Restaurant Phone:
            </td>
            <td ><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
            <td ></td>
        </tr>
        <tr>
            <td class="auto-style5" > </td>
            <td class="auto-style6">
               Delivery Time:
            </td>
            <td> <asp:Label ID="Label4" runat="server" Text="60 Min"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5"> </td>
            <td class="auto-style6">
               Your Order id:
            </td>
            <td> <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
            <td></td>
        </tr>
         
        <tr>
            <td class="auto-style5"> </td>
            <td class="auto-style6">Your total payable: </td>
            <td><asp:Label ID="tamtLabel" runat="server" Text=""></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style4"></td>
            <td></td>
             <td></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td colspan="2">
                
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" CellPadding="2" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
            </td>
       
            <td></td>
        </tr>

        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style4"></td>
            <td></td>
            <td></td>
        </tr>

        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style4" colspan="2">
                <asp:Label ID="MsgLabel" runat="server" Text=""></asp:Label></td>
         
            <td></td>
        </tr>



    </table>
</asp:Content>
