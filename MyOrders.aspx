<%@ Page Title="" Language="C#" MasterPageFile="~/foodfest.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="FoodFest.MyOrders" %>
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

    <table border="0" width="500" height="250" align="center" >
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style4"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td style="font-size: xx-large" colspan="2"><h4 style="text-align: center">Your total Order Summary</h4></td>
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
            <td class="auto-style4">Your delivery Address</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="60px" TextMode="MultiLine" Width="183px"></asp:TextBox></td>
             <td>
                 <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" /> <asp:Label ID="UPdateLabel6" runat="server"></asp:Label></td>
        </tr>
         <tr>
            <td class="auto-style5"></td>
            <td class="auto-style4"></td>
            <td>* Address must be near the selected area, otherwise the order will be canceled.</td>
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
                
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
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
  

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
