<%@ Page Title="" Language="C#" MasterPageFile="~/FoodFest_admin.Master" AutoEventWireup="true" CodeBehind="Add_restaurant.aspx.cs" Inherits="FoodFest.Add_restaurant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 172px;
        }
        .auto-style3 {
            height: 23px;
            width: 172px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <table border="0" width="500" height="250" align="center">

                    <tr>
                        <td class="auto-style2"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td align="right" ><h1>Add</h1></td>
                        <td align="left" colspan="1"><h1>Restaurant</h1></td>
                         
<th></th>
                    </tr>


                   
                    <tr>
                        <td align="right" class="auto-style2" >Restaurant Name:</td>
                        <td>
                            <asp:TextBox ID="ResNameTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="auto-style2">Restaurant Address:</td>
                        <td>
                            <asp:TextBox ID="ResAddTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                    </tr>
		  <tr>
                        <td align="right" class="auto-style2">Phone:</td>
                        <td>
                            <asp:TextBox ID="ResPhoneTextBox" runat="server" style="margin-left: 0px" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="auto-style2">Minimum Order Value </td>
                        <td>
                            <asp:TextBox ID="MinOrderTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                        </tr>

                    <tr>
                        <td align="right" class="auto-style2">Opening hour:</td>
                        <td>
                            <asp:TextBox ID="OpenHourTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                    </tr>


                    
                    
                        <tr>
                       <td style="text-align: right" class="auto-style2">Closing hour</td>

                            <td valign="middle">
                            
                            
                                <asp:TextBox ID="closeHourTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                            </td>
                          

                    </tr>
                    <tr>
                        <td style="text-align: right" class="auto-style2">Delivery Fee</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                    </tr>
                     
                    
                 
                    
                    <tr><td class="auto-style2"></td><td>
                        <asp:Label ID="LogoMsgLabel" runat="server"></asp:Label>
                        </td></tr>
                    <tr>
                        <td style="text-align: right" class="auto-style2">Restaurant Logo</td>
                        <td>
                            <asp:FileUpload ID="LogoFileUpload" runat="server" />
                        </td>
                        </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td>
                            <asp:Button ID="AddRestaurantButton" runat="server" Text="Save" OnClick="AddRestaurantButton_Click" BackColor="GreenYellow" BorderColor="Black" Width="165px" />
                        </td>
                    </tr>
                         <tr>
                        <td class="auto-style2"></td>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" InsertCommand="INSERT INTO Restaurant_tbl(RestaurantName, RestaurantAddress, RestaurantPhone, RestaurantMinOrder, OpeningHour, ClosingHour, LogoImg, DeliveryFee) VALUES (@a1, @a2, @a3, @a4, @a5, @a6, @a7, @a8)" ProviderName="<%$ ConnectionStrings:FoodFestConn.ProviderName %>">
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="ResNameTextBox" Name="a1" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="ResAddTextBox" Name="a2" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="ResPhoneTextBox" Name="a3" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="MinOrderTextBox" Name="a4" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="OpenHourTextBox" Name="a5" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="closeHourTextBox" Name="a6" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="LogoFileUpload" Name="a7" PropertyName="FileBytes" />
                                    <asp:ControlParameter ControlID="TextBox1" Name="a8" PropertyName="Text" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                             </td>
                        </tr>
                         <tr>
                        <td class="auto-style3"></td>
                        <td class="auto-style1">
                            <asp:Label ID="saveMsgLabel" runat="server"></asp:Label>
                             </td>
                        </tr>
                    

                </table>
</asp:Content>
