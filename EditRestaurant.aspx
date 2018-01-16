<%@ Page Title="" Language="C#" MasterPageFile="~/FoodFest_admin.Master" AutoEventWireup="true" CodeBehind="EditRestaurant.aspx.cs" Inherits="FoodFest.EditRestaurant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            height: 31px;
            text-align: right;
        }
        .auto-style4 {
            text-align: right;
            height: 27px;
        }
        .auto-style5 {
            height: 27px;
        }
        .auto-style6 {
            text-align: right;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table border="0" width="500" height="250" align="center">  
                    <tr>
                        <td></td>
                        <td style="text-align: center"><h1>Edit Restaurant Information</h1></td>
                        <td></td>
                    </tr>
                       <tr>
                        <td>&nbsp;</td>
                           <td>
                               <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="RestaurantName" DataValueField="RestaurantName" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Visible="False" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:DropDownList>
                               <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" SelectCommand="SELECT [RestaurantId], [RestaurantName] FROM [Restaurant_tbl]"></asp:SqlDataSource>
                           </td>
                           <td></td>
                           </tr>

                   <tr>
                        <td class="auto-style2">Choose Restaurant</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="RestaurantName" DataValueField="RestaurantName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black">
                                <asp:ListItem Selected="True">choose a restaurant</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" SelectCommand="SELECT [RestaurantId], [RestaurantName] FROM [Restaurant_tbl]"></asp:SqlDataSource>
                        </td>
                        <td></td>
                    </tr>
                  <tr>
                        <td class="auto-style3">Restaurant Address</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="ResAddTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td class="auto-style1"></td>
                    </tr>

                   <tr>
                        <td class="auto-style6">Restaurant Phone</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="ResPhoneTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td class="auto-style7"></td>
                    </tr>
                   <tr>
                        <td class="auto-style2">Minimum Order</td>
                        <td>
                            <asp:TextBox ID="MinOrderTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td></td>
                    </tr>

                   <tr>
                        <td class="auto-style4">Opening Hour</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="OpenHrTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td class="auto-style5"></td>
                    </tr>
                  <tr>
                        <td class="auto-style6">Closing Hour</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="CloseHrTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td class="auto-style7"></td>
                    </tr>
         <tr>
                        <td style="text-align: right">Delivery Fee</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                        </td>
             <td></td>

             </tr>

                   <tr>
                        <td class="auto-style6">Logo</td>
                        <td class="auto-style7">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td class="auto-style7"></td>
                    </tr>
         <tr>
                        <td></td>
                        <td>
                            <asp:Image ID="Image1" runat="server" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
        <tr>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="Update" Font-Names="Calibri" BackColor="YellowGreen" BorderColor="Black" />
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" ProviderName="<%$ ConnectionStrings:FoodFestConn.ProviderName %>" UpdateCommand="UPDATE Restaurant_tbl SET RestaurantAddress = @e1, RestaurantPhone = @e2, RestaurantMinOrder = @e3, OpeningHour = @e4, ClosingHour = @e5, LogoImg = @e6, DeliveryFee = @e7 WHERE (RestaurantName = @e8)">
                                <UpdateParameters>
                                    <asp:ControlParameter ControlID="ResAddTextBox" Name="e1" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="ResPhoneTextBox" Name="e2" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="MinOrderTextBox" Name="e3" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="OpenHrTextBox" Name="e4" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="CloseHrTextBox" Name="e5" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="FileUpload1" Name="e6" PropertyName="FileBytes" />
                                    <asp:ControlParameter ControlID="TextBox1" Name="e7" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="DropDownList1" Name="e8" PropertyName="SelectedValue" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
        <tr>
                        <td></td>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" DeleteCommand="DELETE FROM Restaurant_tbl WHERE (RestaurantName = @rN)" ProviderName="<%$ ConnectionStrings:FoodFestConn.ProviderName %>">
                                <DeleteParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="rN" PropertyName="SelectedValue" />
                                </DeleteParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Button ID="DelButton1" runat="server" Text="Delete Restaurant" OnClick="DelButton1_Click" Font-Names="Calibri" BackColor="YellowGreen" BorderColor="Black"/>
                        </td>
                    </tr>
         <tr>
                        <td></td>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" DeleteCommand="DELETE FROM Food_tbl FROM Food_tbl INNER JOIN Restaurant_tbl ON Food_tbl.RestaurantId = Restaurant_tbl.RestaurantId where Restaurant_tbl.RestaurantName=@rID" ProviderName="<%$ ConnectionStrings:FoodFestConn.ProviderName %>">
                                <DeleteParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="rID" PropertyName="SelectedValue" />
                                </DeleteParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                             <asp:Label ID="msgLabel" runat="server"></asp:Label>
                           
                        </td>
                    </tr>

    </table>
                  
</asp:Content>
