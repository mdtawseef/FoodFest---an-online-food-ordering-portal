<%@ Page Title="" Language="C#" MasterPageFile="~/foodfest.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FoodFest.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
          <table border="0" width="500" height="250" align="center">

                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th></th>
                        <td align="left"><h1><u><i>Register</i></u></h1></td>
                        <th></th>
                    </tr>


                   
                    <tr>
                        <td align="right">Full Name:</td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                            *</td>
                    </tr>
                    <tr>
                        <td align="right">Email:</td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                            *</td>
                    </tr>
		  <tr>
                        <td align="right">Password:</td>
                        <td>
                            <asp:TextBox ID="PasswordTextBox" TextMode="Password" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                            *</td>
                    </tr>
                    <tr>
                        <td align="right">Address:</td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                            *</td>
                        </tr>
                    <tr>
                        <td align="right">Phone Number:</td>
                        <td>
                            <asp:TextBox ID="PhoneTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                            *</td>
                    </tr>


                    
                    
                        <tr>
                       <td></td>

                            <td valign="middle">
                            
                            
                                <asp:Button ID="RegisterButton" runat="server" Text="Submit" OnClick="RegisterButton_Click" Font-Names="Calibri" BackColor="GreenYellow" BorderColor="Black" Width="165px"/>
                            </td>
                          

                    </tr>
                    
                 
                    
                    <!--<tr><td></td></tr>-->
                    <tr>
                        <td></td>
                        </tr>
                    <tr>
                        <td></td>
                        <td>
                           <%-- <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />--%>
                            <asp:Label ID="msgLabel" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>To Login&nbsp; <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Login_page.aspx" runat="server">Click here</asp:HyperLink></td>
                        </tr>
                    

                </table>
</asp:Content>