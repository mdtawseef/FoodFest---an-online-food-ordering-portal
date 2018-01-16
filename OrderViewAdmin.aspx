<%@ Page Title="" Language="C#" MasterPageFile="~/FoodFest_admin.Master" AutoEventWireup="true" CodeBehind="OrderViewAdmin.aspx.cs" Inherits="FoodFest.OrderViewAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="500" height="50" align="center">
       <tr>
           
            <td></td>
           <td style="text-align: center"><h1>All Orders</h1></td>
           <%--<td></td>
           <td></td>--%>
       </tr>
        <tr>
            <td></td>
           <td>
               <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource1">
                   <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                   <Columns>
                       <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                       <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
                       <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                       <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
                       <asp:BoundField DataField="DeliveryAddress" HeaderText="DeliveryAddress" SortExpression="DeliveryAddress" />
                       <asp:BoundField DataField="DeliveryStatus" HeaderText="DeliveryStatus" SortExpression="DeliveryStatus" />
                       <asp:BoundField DataField="Payment" HeaderText="Payment" SortExpression="Payment" />
                       <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                   </Columns>
                   <EditRowStyle BackColor="#999999" />
                   <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                   <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#E9E7E2" />
                   <SortedAscendingHeaderStyle BackColor="#506C8C" />
                   <SortedDescendingCellStyle BackColor="#FFFDF8" />
                   <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" DeleteCommand="DELETE FROM [Order_tbl] WHERE [OrderId] = @OrderId" InsertCommand="INSERT INTO [Order_tbl] ([UserId], [TotalAmount], [DeliveryAddress], [DeliveryStatus], [Payment], [OrderDate]) VALUES (@UserId, @TotalAmount, @DeliveryAddress, @DeliveryStatus, @Payment, @OrderDate)" SelectCommand="SELECT * FROM [Order_tbl]" UpdateCommand="UPDATE [Order_tbl] SET [UserId] = @UserId, [TotalAmount] = @TotalAmount, [DeliveryAddress] = @DeliveryAddress, [DeliveryStatus] = @DeliveryStatus, [Payment] = @Payment, [OrderDate] = @OrderDate WHERE [OrderId] = @OrderId">
                   <DeleteParameters>
                       <asp:Parameter Name="OrderId" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="UserId" Type="Int32" />
                       <asp:Parameter Name="TotalAmount" Type="Double" />
                       <asp:Parameter Name="DeliveryAddress" Type="String" />
                       <asp:Parameter Name="DeliveryStatus" Type="String" />
                       <asp:Parameter Name="Payment" Type="String" />
                       <asp:Parameter Name="OrderDate" Type="DateTime" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="UserId" Type="Int32" />
                       <asp:Parameter Name="TotalAmount" Type="Double" />
                       <asp:Parameter Name="DeliveryAddress" Type="String" />
                       <asp:Parameter Name="DeliveryStatus" Type="String" />
                       <asp:Parameter Name="Payment" Type="String" />
                       <asp:Parameter Name="OrderDate" Type="DateTime" />
                       <asp:Parameter Name="OrderId" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
            </td>
            <td></td>
           <td></td>
        </tr>
        <tr>
            <td></td>
           <td></td>
            <td></td>
           <td></td>
        </tr>
        <tr>
            <td></td>
           <td></td>
            <td></td>
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
</asp:Content>
