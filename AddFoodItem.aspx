<%@ Page Title="" Language="C#" MasterPageFile="~/FoodFest_admin.Master" AutoEventWireup="true" CodeBehind="AddFoodItem.aspx.cs" Inherits="FoodFest.AddFoodItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table border="0" width="500" height="250" align="center">
                    <tr>
                        <td class="auto-style3"></td>
                        <td class="auto-style3"><h1>Add Food Item</h1></td>
                        <td class="auto-style3"></td>
                    </tr>
                      <%--<tr>
                        <td class="auto-style1"></td>
                        <td class="auto-style1"></td>
                        <td class="auto-style1"></td>
                    </tr>--%>
                      <tr>
                        <td class="auto-style2">Food Name</td>
                        <td>
                            <asp:TextBox ID="FoodNameTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                          </td>
                        <td></td>
                    </tr>
                      <tr>
                        <td class="auto-style2">Food Price</td>
                        <td>
                            <asp:TextBox ID="FoodPriceTextBox" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"></asp:TextBox>
                          </td>
                        <td></td>
                    </tr>
                      <tr>
                        <td class="auto-style2">Food Type</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black">
                                <asp:ListItem Selected="True" Value="0">Select a Cuisine</asp:ListItem>
                                <asp:ListItem>Bengali</asp:ListItem>
                                <asp:ListItem>Chinese</asp:ListItem>
                                <asp:ListItem>Desserts</asp:ListItem>
                                <asp:ListItem Value="fastfood">Fast Food</asp:ListItem>
                                <asp:ListItem>Indian</asp:ListItem>
                                <asp:ListItem>Italian</asp:ListItem>
                                <asp:ListItem>Kabab</asp:ListItem>
                                <asp:ListItem>Mughal</asp:ListItem>
                                <asp:ListItem>Mexican</asp:ListItem>
                            </asp:DropDownList>
                          </td>
                        <td></td>
                    </tr>
                      <tr>
                        <td class="auto-style2">Choose Restaurant</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="RestaurantName" DataValueField="RestaurantId" AppendDataBoundItems="True" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black">
                                <asp:ListItem Selected="True" Value="0">Select a Restaurant</asp:ListItem>
                              
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" SelectCommand="SELECT [RestaurantId], [RestaurantName] FROM [Restaurant_tbl]"></asp:SqlDataSource>
                          </td>
                        <td></td>
                    </tr>
                      <tr>
                        <td class="auto-style2">Upload food Image</td>
                        <td>
                            
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            
                          </td>
                        <td></td>
                    </tr>
                     <tr>
                        <td></td>
                        <td></td>
                         <td></td>
                         </tr>
                          <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="AddFoodButton" runat="server" OnClick="AddFoodButton_Click" Text="Add" BackColor="GreenYellow" BorderColor="Black" Width="165px"/>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" InsertCommand="INSERT INTO Food_tbl(FoodName, FoodPrice, FoodType,FoodSaleTotal, FoodImage, RestaurantId) VALUES (@FoodName, @FoodPrice, @FoodType,@def, @FoodImage, @RestaurantId)" ProviderName="<%$ ConnectionStrings:FoodFestConn.ProviderName %>">
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="FoodNameTextBox" Name="FoodName" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="FoodPriceTextBox" Name="FoodPrice" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="DropDownList2" Name="FoodType" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="FileUpload1" Name="FoodImage" PropertyName="FileBytes" />
                                    <asp:ControlParameter ControlID="DropDownList1" Name="RestaurantId" PropertyName="SelectedValue" />
                                    <asp:Parameter DefaultValue="0" Name="def" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </td>
                         <td></td>
                         </tr>
                      <tr>
                        <td></td>
                        <td>
                            <asp:Label ID="foodMsgLabel" runat="server"></asp:Label>
                          </td>
                        <td></td>
                    </tr>
        </table>
</asp:Content>
