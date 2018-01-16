<%@ Page Title="" Language="C#" MasterPageFile="~/FoodFest_admin.Master" AutoEventWireup="true" CodeBehind="AdminViewAllRestaurants.aspx.cs" Inherits="FoodFest.AdminViewAllRestaurants" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table width="500" height="50" align="center">
       <tr>
           <td style="text-align: center"><h1>All Restaurants</h1> </td>
            
       </tr>
       <tr>
           <td>
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="None" CellSpacing="1">
                   <Columns>
                       <asp:BoundField DataField="Restaurant Name" HeaderText="Restaurant Name" SortExpression="Restaurant Name" />
                       <asp:BoundField DataField="Restaurant Address" HeaderText="Restaurant Address" SortExpression="Restaurant Address" />
                       <asp:BoundField DataField="Restaurant Phone" HeaderText="Restaurant Phone" SortExpression="Restaurant Phone" />
                       <asp:BoundField DataField="Minimum Order Amount" HeaderText="Minimum Order Amount" SortExpression="Minimum Order Amount" />
                       <asp:BoundField DataField="Delivery Fee" HeaderText="Delivery Fee" SortExpression="Delivery Fee" />
                       <asp:BoundField DataField="Opening Hour" HeaderText="Opening Hour" SortExpression="Opening Hour" ReadOnly="True" />
                       <asp:BoundField DataField="Closing Hour" HeaderText="Closing Hour" SortExpression="Closing Hour" ReadOnly="True" />
                   </Columns>
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
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" SelectCommand="SELECT RestaurantName as 'Restaurant Name', RestaurantAddress as 'Restaurant Address', RestaurantPhone as 'Restaurant Phone', RestaurantMinOrder as 'Minimum Order Amount',DeliveryFee as 'Delivery Fee' ,CAST(OpeningHour AS TIME) AS 'Opening Hour', CAST(ClosingHour AS TIME) AS 'Closing Hour' FROM Restaurant_tbl"></asp:SqlDataSource>
           </td>
            
       </tr>
   </table>
</asp:Content>
