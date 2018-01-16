<%@ Page Title="" Language="C#" MasterPageFile="~/FoodFest_admin.Master" AutoEventWireup="true" CodeBehind="AdminUserList.aspx.cs" Inherits="FoodFest.AdminUserList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="500" height="50" align="center">
       <tr>
           <td style="text-align: center"><h1>User List</h1> </td>
            
       </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="UserId" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="UserId" HeaderText="User Id" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                        <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                        <asp:BoundField DataField="UserEmail" HeaderText="User Email" SortExpression="UserEmail" />
                        <asp:BoundField DataField="UserAddress" HeaderText="User Address" SortExpression="UserAddress" />
                        <asp:BoundField DataField="UserPhone" HeaderText="User Phone" SortExpression="UserPhone" />
                        <asp:BoundField DataField="UserLevel" HeaderText="User Level" SortExpression="UserLevel" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" DeleteCommand="DELETE FROM [User_tbl] WHERE [UserId] = @original_UserId AND [UserName] = @original_UserName AND [UserEmail] = @original_UserEmail AND [UserAddress] = @original_UserAddress AND [UserPhone] = @original_UserPhone AND (([UserLevel] = @original_UserLevel) OR ([UserLevel] IS NULL AND @original_UserLevel IS NULL))" InsertCommand="INSERT INTO [User_tbl] ([UserName], [UserEmail], [UserAddress], [UserPhone], [UserLevel]) VALUES (@UserName, @UserEmail, @UserAddress, @UserPhone, @UserLevel)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserId], [UserName], [UserEmail], [UserAddress], [UserPhone], [UserLevel] FROM [User_tbl] WHERE ([UserLevel] = @UserLevel)" UpdateCommand="UPDATE [User_tbl] SET [UserName] = @UserName, [UserEmail] = @UserEmail, [UserAddress] = @UserAddress, [UserPhone] = @UserPhone, [UserLevel] = @UserLevel WHERE [UserId] = @original_UserId AND [UserName] = @original_UserName AND [UserEmail] = @original_UserEmail AND [UserAddress] = @original_UserAddress AND [UserPhone] = @original_UserPhone AND (([UserLevel] = @original_UserLevel) OR ([UserLevel] IS NULL AND @original_UserLevel IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserId" Type="Int32" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_UserEmail" Type="String" />
                        <asp:Parameter Name="original_UserAddress" Type="String" />
                        <asp:Parameter Name="original_UserPhone" Type="String" />
                        <asp:Parameter Name="original_UserLevel" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="UserEmail" Type="String" />
                        <asp:Parameter Name="UserAddress" Type="String" />
                        <asp:Parameter Name="UserPhone" Type="String" />
                        <asp:Parameter Name="UserLevel" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Customer" Name="UserLevel" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="UserEmail" Type="String" />
                        <asp:Parameter Name="UserAddress" Type="String" />
                        <asp:Parameter Name="UserPhone" Type="String" />
                        <asp:Parameter Name="UserLevel" Type="String" />
                        <asp:Parameter Name="original_UserId" Type="Int32" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_UserEmail" Type="String" />
                        <asp:Parameter Name="original_UserAddress" Type="String" />
                        <asp:Parameter Name="original_UserPhone" Type="String" />
                        <asp:Parameter Name="original_UserLevel" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
