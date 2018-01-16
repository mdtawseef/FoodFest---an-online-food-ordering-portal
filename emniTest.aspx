<%@ Page Title="" Language="C#" MasterPageFile="~/FoodFest_admin.Master" AutoEventWireup="true" CodeBehind="emniTest.aspx.cs" Inherits="FoodFest.emniTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="500" height="50" align="center">
        <tr>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton2" runat="server" />
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Selected="True">free Delivery</asp:ListItem>
                    <asp:ListItem>bKash</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td></td>
        </tr>
         <tr>
            <td></td>
            <td>
                <asp:Label ID="Label2" runat="server" EnableViewState="False" Text="Label" Visible="False"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
             </td>
            <td></td>
        </tr>
         <tr>
            <td></td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
             </td>
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
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </asp:Content>
