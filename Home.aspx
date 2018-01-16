<%@ Page Title="" Language="C#" MasterPageFile="~/foodfest.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FoodFest.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--  <div id="content_wrapper">--%><%-- <div id="under_tell_us">
        <div id="restaurant_logo"></div>
    </div>--%><div id="cont_img">
     
		    </div>
			<div id="cont_offer">
                <br />
                   &nbsp;Order From Your NearBy Restaurant
                <br />
                
                <div class="offer">
                    <br />
                        <div class="dropDownList">&nbsp;City:&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFCC66" Font-Names="Calibri" Font-Size="Large" Height="35px" Width="202px">
                        <asp:ListItem Selected="True">Dhaka</asp:ListItem>
                        </asp:DropDownList></div>
                    <div class="dropDownList"> 
                        <br />
                        Place:&nbsp;   <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#FFCC66" Font-Names="Calibri" Font-Size="Large" Height="35px" Width="200px" style="margin-left: 0px">
                             <asp:ListItem Selected="True">Select a Location</asp:ListItem>
                             <asp:ListItem >Banani</asp:ListItem>
                             <asp:ListItem>Baily Road</asp:ListItem>              
                            <asp:ListItem >Badda</asp:ListItem>
                             <asp:ListItem >Dilkusha</asp:ListItem>
                             <asp:ListItem>Dhanmondi</asp:ListItem>
                             <asp:ListItem >Green Road</asp:ListItem>
                             <asp:ListItem >Gulshan</asp:ListItem>
                            <asp:ListItem >Lalmatia</asp:ListItem>
                            <asp:ListItem >Mohammadpur</asp:ListItem>
                             <asp:ListItem >Motijheel</asp:ListItem>
                             <asp:ListItem >Niketon</asp:ListItem> 
                             <asp:ListItem >Nikunja</asp:ListItem>
                             <asp:ListItem >Shantinagar</asp:ListItem>
                            <asp:ListItem >Rampura</asp:ListItem>
                            <asp:ListItem >Uttara</asp:ListItem>
                             
                    </asp:DropDownList></div>
                    </div>
                    <br />
                <br />
                <br />
              
               <div class ="startMyOrderButton"><asp:Button ID="startMyOrderButton" runat="server" OnClick="startMyOrderButton_Click" Text="Start My Order" BackColor="#00CC00" BorderColor="Black" BorderStyle="None" Font-Bold="True" ForeColor="Black" Height="50px" style="margin-top: 0px" Width="190px" Font-Size="Medium" /></div>
                <br />
                
                <%-- <a href=""><div class="btn">New user?Register</div></a>--%>
			<%--</div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="how_to">
        <img src="images/howTo.jpg" />
    </div>
    <%-- eikhane popular item er kaj hobe--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" SelectCommand="SELECT TOP (8) FoodSaleTotal, FoodName, FoodId, FoodImage, RestaurantId FROM Food_tbl ORDER BY FoodSaleTotal"></asp:SqlDataSource>
    <div class="food_type_title">
        Popular Items
    </div>
    <div class="how_to_topItem">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                      <table>
            </HeaderTemplate>
            <ItemTemplate>
                        <td>
                                <div class="restaurant_image_set_1">
                               <asp:Image ID="Image1" runat="server" Height="100px" Width="110px" margin-right="3px" ImageUrl='<%# Eval("FoodId", "HandlerFoodImg.ashx?foodId={0}") %>' />
                            </div>
                        
                              <div class="food_name">
                                   <div class="food_name_written_1">
                                      <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton1_Command" CommandArgument='<%#Eval("RestaurantId") %>' Font-Bold="True" Font-Size="Medium" ForeColor="#993300"> <%#Eval("FoodName") %> </asp:LinkButton>
                                   </div>
                              </div>
                        </td>
                      
            </ItemTemplate>
               <FooterTemplate>
                    </table>
               </FooterTemplate>
          
           
        </asp:Repeater>
        </div>
    <%--ei porjonto popular item er kaj hobe--%>
    

    <div class="food_type_title">
        Cuisines
    </div>
    <div class="how_to_1">
        <div class="restaurant_image_set">
            <img src="images/15.jpg" />
        </div>
        <div class="restaurant_image_set">
             <img src="images/indian.jpg" />
        </div>

        <div class="restaurant_image_set">
             <img src="images/3.jpg" />
        </div>
        <div class="restaurant_image_set">
            <img src="images/14.jpg" />
        </div>
        <div class="restaurant_image_set">
             <img src="images/6.jpg" />
        </div>
        <div class="restaurant_image_set">
             <img src="images/22.jpg" />
        </div>
        <div class="restaurant_image_set">
             <img src="images/16.jpg" />
        </div>
       <div class="restaurant_image_set">
             <img src="images/17.jpg" />
        </div>
         <div class="restaurant_image_set">
             <img src="images/10.jpg" />
        </div>



        <div class="food_name">
            <div class="food_name_written">
                
                <asp:LinkButton ID="Bengali_LinkButton" runat="server" OnCommand="Biriyani_LinkButton_Command" CommandArgument="Bengali" Font-Bold="True" Font-Size="Medium" ForeColor="#993300">Bengali </asp:LinkButton>
                
            </div>
            <div class="food_name_written">

                <asp:LinkButton ID="Indian_LinkButton" runat="server" OnCommand="Biriyani_LinkButton_Command" CommandArgument="Indian" Font-Bold="True" Font-Size="Medium" ForeColor="#993300">Indian</asp:LinkButton>

                </div>
            <div class="food_name_written">

                <asp:LinkButton ID="Burger_LinkButton" runat="server" OnCommand="Biriyani_LinkButton_Command" CommandArgument="fastfood" Font-Bold="True" Font-Size="Medium" ForeColor="#993300">FastFood</asp:LinkButton>

                </div>
            <div class="food_name_written">
                 <asp:LinkButton ID="ChickenFry_LinkButton" runat="server" OnCommand="Biriyani_LinkButton_Command" CommandArgument="Kabab"  Font-Bold="True" Font-Size="Medium" ForeColor="#993300">
                     Kabab</asp:LinkButton>
                </div>
            <div class="food_name_written">
                 <asp:LinkButton ID="Pizza_LinkButton" runat="server" OnCommand="Biriyani_LinkButton_Command" CommandArgument="Italian" Font-Bold="True" Font-Size="Medium" ForeColor="#993300">Italian</asp:LinkButton>
                </div>
            <div class="food_name_written">
                <asp:LinkButton ID="Cake_LinkButton" runat="server" OnCommand="Biriyani_LinkButton_Command" CommandArgument="Desserts" Font-Bold="True" Font-Size="Medium" ForeColor="#993300">Desserts</asp:LinkButton>
                </div>
            <div class="food_name_written">
                 <asp:LinkButton ID="Chinese_LinkButton" runat="server" OnCommand="Biriyani_LinkButton_Command" CommandArgument="Chinese" Font-Bold="True" Font-Size="Medium" ForeColor="#993300">Chinese</asp:LinkButton>
                </div>
            <div class="food_name_written">
                 <asp:LinkButton ID="Biriyani_LinkButton" runat="server" OnCommand="Biriyani_LinkButton_Command" CommandArgument="Mughal" Font-Bold="True" Font-Size="Medium" ForeColor="#993300">Mughal</asp:LinkButton>
                </div>
             <div class="food_name_written">
                  <asp:LinkButton ID="Pasta_LinkButton" runat="server" OnCommand="Biriyani_LinkButton_Command" CommandArgument="Mexican" Font-Bold="True" Font-Size="Medium" ForeColor="#993300">Mexican</asp:LinkButton>
                </div>

        </div>
    </div>
    <div class="food_type_title">
        Featured Restaurants
        </div>
    <div class="how_to_2">
        <img src="images/KFC_LOGO.jpg" />
        <img src="images/bfc.jpg" />
        <img src="images/Thirty3.jpg" />
         <img src="images/boomers.jpg" />
    </div>
    
</asp:Content>