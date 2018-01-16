<%@ Page Title="" Language="C#" MasterPageFile="~/foodfest.Master" AutoEventWireup="true" CodeBehind="Restaurant.aspx.cs" Inherits="FoodFest.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="under_tell_us">
        <div id="restaurant_logo">
            <asp:Image ID="Image2" runat="server" width="90%" Height="170px"/>
        </div>
        <div id="restaurant_address">

            <asp:Label ID="Label5" runat="server" Text="Label" Font-Size="XX-Large"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Phone: "></asp:Label>
            <asp:Label ID="Label10" runat="server" Text=""></asp:Label>

            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reviews" BackColor="GreenYellow" BorderColor="Black"  Font-Names="Calibri" Font-Bold="true" Font-Size="Medium"  />

        </div>
        <div id="restaurant_status">
            <asp:Label ID="Label11" runat="server" Text="Minimum Order value: "></asp:Label>
            <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label13" runat="server" Text="Delivery Fee: "></asp:Label>
            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label15" runat="server" Text="Delivery Time: "></asp:Label>
            <asp:Label ID="Label16" runat="server" Text="1 hour"></asp:Label>
            <br />
            <asp:Label ID="Label17" runat="server" Text="Open From"></asp:Label>
            <asp:Label ID="Label18" runat="server" Text=""></asp:Label> -
            <asp:Label ID="Label19" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label20" runat="server" Text=""></asp:Label>
        </div>
    </div>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div id="under_tell_us_1">
    <div id="cont_img_restaurant"><div id="title_gallery_food">Choose Your Food From Menu</div>
          <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                             <div class="menu_name"> 
                                <%-- <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton1_Command" CommandArgument='<%#Eval("FoodName") %>'> 
                                     <%#Eval("FoodName") %>

                                 </asp:LinkButton>
                                 <br></br>
                                 <%#Eval("FoodPrice") %>--%>
                                  <div class="repeat_content">
                                      <div class="restaurant_top_1"></div>
                    <div class="image_show">
                        <asp:Image ID="Image1" runat="server" Height="128px" Width="128px" ImageUrl='<%# Eval("FoodId", "HandlerFoodImg.ashx?foodId={0}") %>' />

                    </div>
                    <div class="restaurant_info_show_1" style="font-size: medium; font-family: Calibri">
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("FoodName") %>'></asp:Label><br/>
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("FoodPrice") %>'></asp:Label>

                    
                </div>
                     <div class="goToMenuButton">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton1_Command" CommandArgument='<%#Eval("FoodName")  %>' Font-Bold="True" ForeColor="Black" Font-Names="Calibri"> 
                                ADD TO CART</asp:LinkButton>

                     </div>
                </div>


                                 </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
         </div>

    <div id="cont_add_to_cart">

    
     <div id="your_order_title1">
                     Top Items
                 </div>
    <div id="calculate_price1">
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label22" runat="server" Text='<%#Eval("FoodName") %>'></asp:Label><br />
            </ItemTemplate>
        </asp:Repeater>
                    <%--  <div class="startMyOrderButton3">Get Your Food</div>--%>
                    <br />
             </div>
                  <div id="your_order_title">
                     Your Food Cart
                 </div>
             <div id="calculate_price">
                     <asp:DropDownList ID="item1DropdownList" runat="server" Height="18px" style="margin-left: 15px" Visible="False" Width="37px" OnSelectedIndexChanged="item1DropdownList_SelectedIndexChanged" AutoPostBack="True" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black">
                         <asp:ListItem>1</asp:ListItem>
                         <asp:ListItem>2</asp:ListItem>
                         <asp:ListItem Value="3"></asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                         <asp:ListItem>5</asp:ListItem>
                         <asp:ListItem>6</asp:ListItem>
                         <asp:ListItem>7</asp:ListItem>
                         <asp:ListItem Value="8"></asp:ListItem>
                         <asp:ListItem>9</asp:ListItem>
                         <asp:ListItem>10</asp:ListItem>
                          <asp:ListItem>12</asp:ListItem>
                         <asp:ListItem>14</asp:ListItem>
                         <asp:ListItem Value="16"></asp:ListItem>
                         <asp:ListItem>18</asp:ListItem>
                         <asp:ListItem>20</asp:ListItem>



                     </asp:DropDownList>
&nbsp;
                     <asp:Label ID="I1" runat="server"></asp:Label>
                     <asp:Label ID="P1" runat="server"></asp:Label>
                     <asp:Label ID="tk1" runat="server"></asp:Label>
                     &nbsp;<asp:Button ID="DeletItem1" runat="server" OnClick="DeletItem1_Click" Text="x" Visible="False" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black" />
                     <br />&nbsp;<br />
                     <asp:DropDownList ID="item2DropdownList" runat="server"  Height="20px" style="margin-left: 15px" Visible="False" Width="36px" OnSelectedIndexChanged="item1DropdownList_SelectedIndexChanged" AutoPostBack="True" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black">
                         <asp:ListItem>1</asp:ListItem>
                         <asp:ListItem>2</asp:ListItem>
                         <asp:ListItem>3</asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                         <asp:ListItem>5</asp:ListItem>
                          <asp:ListItem>6</asp:ListItem>
                         <asp:ListItem>7</asp:ListItem>
                         <asp:ListItem Value="8"></asp:ListItem>
                         <asp:ListItem>9</asp:ListItem>
                         <asp:ListItem>10</asp:ListItem>
                          <asp:ListItem>12</asp:ListItem>
                         <asp:ListItem>14</asp:ListItem>
                         <asp:ListItem Value="16"></asp:ListItem>
                         <asp:ListItem>18</asp:ListItem>
                         <asp:ListItem>20</asp:ListItem>
                     </asp:DropDownList>
&nbsp;
                     <asp:Label ID="I2" runat="server"></asp:Label>
                     <asp:Label ID="P2" runat="server"></asp:Label>
                     <asp:Label ID="tk2" runat="server"></asp:Label>
                     <asp:Button ID="DeletItem2" runat="server" OnClick="DeletItem2_Click" Text="x" Visible="False" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black" />
                     <br />
                     <br />
                     <asp:DropDownList ID="item3DropdownList" runat="server" Height="17px" style="margin-left: 15px" Visible="False" Width="33px" OnSelectedIndexChanged="item1DropdownList_SelectedIndexChanged" AutoPostBack="True" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black">
                         <asp:ListItem>1</asp:ListItem>
                         <asp:ListItem>2</asp:ListItem>
                         <asp:ListItem>3</asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                         <asp:ListItem>5</asp:ListItem>
                          <asp:ListItem>6</asp:ListItem>
                         <asp:ListItem>7</asp:ListItem>
                         <asp:ListItem Value="8"></asp:ListItem>
                         <asp:ListItem>9</asp:ListItem>
                         <asp:ListItem>10</asp:ListItem>
                          <asp:ListItem>12</asp:ListItem>
                         <asp:ListItem>14</asp:ListItem>
                         <asp:ListItem Value="16"></asp:ListItem>
                         <asp:ListItem>18</asp:ListItem>
                         <asp:ListItem>20</asp:ListItem>
                     </asp:DropDownList>
&nbsp;
                     <asp:Label ID="I3" runat="server"></asp:Label>
                     <asp:Label ID="P3" runat="server"></asp:Label>
                     <asp:Label ID="tk3" runat="server"></asp:Label>
                     <asp:Button ID="DeletItem3" runat="server" OnClick="DeletItem3_Click"  Text="x" Visible="False" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black" />
                     <br />
                     <br />
                     <asp:DropDownList ID="item4DropdownList" runat="server" OnSelectedIndexChanged="item1DropdownList_SelectedIndexChanged" AutoPostBack="True" Height="21px" style="margin-left: 15px" Visible="False" Width="37px" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black">
                         <asp:ListItem>1</asp:ListItem>
                         <asp:ListItem>2</asp:ListItem>
                         <asp:ListItem>3</asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                         <asp:ListItem>5</asp:ListItem>
                          <asp:ListItem>6</asp:ListItem>
                         <asp:ListItem>7</asp:ListItem>
                         <asp:ListItem Value="8"></asp:ListItem>
                         <asp:ListItem>9</asp:ListItem>
                         <asp:ListItem>10</asp:ListItem>
                          <asp:ListItem>12</asp:ListItem>
                         <asp:ListItem>14</asp:ListItem>
                         <asp:ListItem Value="16"></asp:ListItem>
                         <asp:ListItem>18</asp:ListItem>
                         <asp:ListItem>20</asp:ListItem>
                     </asp:DropDownList>
&nbsp;
                     <asp:Label ID="I4" runat="server"></asp:Label>
                     <asp:Label ID="P4" runat="server"></asp:Label>
                     <asp:Label ID="tk4" runat="server"></asp:Label>
                     <asp:Button ID="DeletItem4" runat="server" OnClick="DeletItem4_Click" Text="x" Visible="False" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black" />
                     <br />
                     <br />
                     <asp:DropDownList ID="item5DropdownList" runat="server" OnSelectedIndexChanged="item1DropdownList_SelectedIndexChanged" AutoPostBack="True" Height="21px" style="margin-left: 15px" Visible="False" Width="36px" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black">
                         <asp:ListItem>1</asp:ListItem>
                         <asp:ListItem>2</asp:ListItem>
                         <asp:ListItem>3</asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                         <asp:ListItem>5</asp:ListItem>
                          <asp:ListItem>6</asp:ListItem>
                         <asp:ListItem>7</asp:ListItem>
                         <asp:ListItem Value="8"></asp:ListItem>
                         <asp:ListItem>9</asp:ListItem>
                         <asp:ListItem>10</asp:ListItem>
                          <asp:ListItem>12</asp:ListItem>
                         <asp:ListItem>14</asp:ListItem>
                         <asp:ListItem Value="16"></asp:ListItem>
                         <asp:ListItem>18</asp:ListItem>
                         <asp:ListItem>20</asp:ListItem>
                     </asp:DropDownList>
&nbsp;
                     <asp:Label ID="I5" runat="server"></asp:Label>
                     <asp:Label ID="P5" runat="server"></asp:Label>
                     <asp:Label ID="tk5" runat="server"></asp:Label>
                     <asp:Button ID="DeletItem5" runat="server" OnClick="DeletItem5_Click" Text="x" Visible="False" Font-Names="Calibri" BackColor="#FFCC66" BorderColor="Black"/>
                     <br />
                     <br />
                     <asp:Label ID="NoOfItem" runat="server" Text="0"></asp:Label>
&nbsp; Item Selected<br />..................................<br />
                     <asp:Label ID="Delifeelabel" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="DeliFeetk" runat="server"></asp:Label>
                     <br />
                     <asp:Label ID="Label21" runat="server" Text="TOTAL"></asp:Label>
                     &nbsp; 
                     
&nbsp; =&nbsp;
                     <asp:Label ID="Total" runat="server" Text="0"></asp:Label>
                     &nbsp;
                     <asp:Label ID="Label1" runat="server" Text="tk"></asp:Label>
                     <br />
                     <br />
                     <asp:Label ID="Alert" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#FF3300"></asp:Label>
                     <br />
                     <asp:Label ID="Label3" runat="server"></asp:Label>
                     <br />
                     <asp:Label ID="Label2" runat="server"></asp:Label>
                 <br />
                 <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Font-Names="Calibri" >
                             <asp:ListItem Selected="True">Cash on Delivery</asp:ListItem>
                             <asp:ListItem>Pay by BKash</asp:ListItem>
                         </asp:RadioButtonList>
                     <br />
                 <asp:Label ID="Label24" runat="server" Text="Our bKash No: 01676214009"></asp:Label>      <br />
                 <asp:Label ID="bkashAccNoLabel" runat="server" Text="Your Bkash No: " Visible="false"></asp:Label>                    
                     <asp:TextBox ID="bkAccNoTextBox" runat="server" Width="112px" Visible="false"></asp:TextBox><br />
                 <asp:Label ID="BkTrxLabel" runat="server" Text="Trx Id: " Visible="false"></asp:Label>
                 <asp:TextBox ID="BkTrxTextBox" runat="server" Visible="false"></asp:TextBox>
                      <br />
                     <div class="startMyOrderButton3">
                              <asp:Button ID="GetFoodButton" runat="server"  OnClick="GetFoodButton_Click" Text="Get Your Food" Width="100%" Height="46px" BackColor="GreenYellow" BorderColor="Black"  Font-Names="Calibri" Font-Bold="true" Font-Size="Medium"/>
                     <br />
                      </div>
             </div>
    </div>
</asp:Content>





               
                        
                    
                   
                        
                    