<%@ Page Title="" Language="C#" MasterPageFile="~/foodfest.Master" AutoEventWireup="true" CodeBehind="Login_page.aspx.cs" Inherits="FoodFest.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <table border="0" width="500" align="center">

 <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                     <th></th><td align="center"><h1><u><i> Sign in</i></u></h1></td><th></th>
                    </tr>
                    </table>

                <table border="0" width="500" height="200"align="center">
                    <tr>
                        <td align="right">Email:</td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" TextMode="Email" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td align="right">Password:</td>
                        <td>
                            <asp:TextBox ID="PasswordTextBox" TextMode="Password" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>

                        <td valign="middle">
                            <div>
                                <asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="Login" Font-Names="Calibri" BackColor="GreenYellow" BorderColor="Black" Width="150px" Height="30px" />
                            </div>

                            

                                &nbsp;<asp:Label ID="logMsgLabel" runat="server"></asp:Label>
                    <tr><td align="center" colspan="4">New user? please register here <a href="Register.aspx">Register</a></td></tr>
                                    <tr>

                                        <td></td>
                                        <td></td>
                                    </tr>
                                    



                                </table>
</asp:Content>
