<%@ Page Title="" Language="C#" MasterPageFile="~/foodfest.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="FoodFest.UserProfile" %>
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
            <td style="font-size: xx-large" colspan="2"><h3 style="text-align: center">Your Profile</h3></td>
            <td></td>
            
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style4"></td>
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
                &nbsp;</td>
            <td> &nbsp;</td>
            <td></td>
        </tr>
         
        <tr>
            <td class="auto-style5"> </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
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
    <table border="0" width="500" height="250" align="center">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style4"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td style="font-size: xx-large" colspan="2"><h3 style="text-align: center">Your Placed Orders</h3></td>
            <td></td>
        </tr>

        <tr>
            <td class="auto-style5"></td>
            <td style="font-size: small" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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

        </table>
</asp:Content>
