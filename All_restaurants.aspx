<%@ Page Title="" Language="C#" MasterPageFile="~/foodfest.Master" AutoEventWireup="true" CodeBehind="All_restaurants.aspx.cs" Inherits="FoodFest.All_restaurants" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div id="under_tell_us">
   <%-- <div id="cont_img_restaurant">--%>
        <div id="title_gallery_food">Choose Restaurants 
        </div>

           <div class="sort_by_div">
               <div class="sort_by_div_1">
              <asp:Label ID="Label1" runat="server" Text="Filter By:" ForeColor="Brown"></asp:Label>
              <asp:LinkButton ID="LinkButton3" runat="server" OnCommand="LinkButton3_Command" Font-Family="Calibri" ForeColor="#993300">Minimum order</asp:LinkButton>
&nbsp;||
              <asp:LinkButton ID="LinkButton4" runat="server" OnCommand="LinkButton4_Command" ForeColor="#993300">Delivery Fee</asp:LinkButton>
           &nbsp;&nbsp;&nbsp;&nbsp;  
                   </div>
              <div class="search_rest_text">    
                   <asp:Label ID="Label14" runat="server" Text="Choose your Location" Font-Names="Calibri" ForeColor="#993300"></asp:Label>
                  <asp:DropDownList ID="DropDownList1" runat="server" Width="150px"  BackColor="#FFCC66" Font-Names="Calibri" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                       <asp:ListItem>Banani</asp:ListItem>
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
                   </asp:DropDownList>
        </div>
               <div class="search_rest_text_1">
                   <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFCC66" BorderColor="#993300" Width="200px"></asp:TextBox>
             
        <asp:Button ID="Button1" runat="server" OnCommand="Button1_Command" Text="Search" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" BackColor="#FFCC66" BorderColor="#993300" />
                  
               </div>
              </div>
          
               
               
          

        

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="menu_name">  
                    <div class="restaurant_top">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("RestaurantName") %>'></asp:Label><br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("RestaurantAddress") %>' Font-Size="Small"></asp:Label>
                    </div>
                    <%--<div class="repeat_content">--%>
                    <div class="image_show">
                        <asp:Image ID="Image1" runat="server" Height="111px" Width="111px" ImageUrl='<%# Eval("RestaurantId", "HandlerImg.ashx?restId={0}") %>' />

                    </div>
                    <div class="restaurant_info_show" style="font-size: medium; font-family: Calibri">
                        <asp:Label ID="Label10" runat="server" Text="Business hour: "></asp:Label><asp:Label ID="Label11" runat="server" Text='<%# Eval("OpeningHour") %>'></asp:Label> - <asp:Label ID="Label12" runat="server" Text='<%# Eval("ClosingHour") %>'></asp:Label><br />
                        <asp:Label ID="Label3" runat="server" Text="Delivery Min: "></asp:Label><asp:Label ID="Label4" runat="server" Text='<%# Eval("RestaurantMinOrder") %>'></asp:Label><asp:Label ID="Label9" runat="server" Text="TK."></asp:Label><br />
                        <asp:Label ID="Label5" runat="server" Text="Delivery Time: "></asp:Label><asp:Label ID="Label6" runat="server" Text="1 Hour"></asp:Label><br />
                        <asp:Label ID="Label7" runat="server" Text="Delivery Fee: "></asp:Label><asp:Label ID="Label8" runat="server" Text='<%# Eval("DeliveryFee") %>'></asp:Label><asp:Label ID="Label13" runat="server" Text=" Tk."></asp:Label><br />

                      <br />
                    
                    

                     <br />
                    <br />
                </div>
                     <div class="goToMenuButton_1">
                         <asp:Button ID="Button2" runat="server" Text="GO TO MENU" BackColor="#00CC00" BorderColor="Black" BorderStyle="None" Font-Bold="True" ForeColor="Black" Height="50px" style="margin-top: 0px" Width="270px" Font-Size="Medium" OnCommand="Button2_Command" CommandArgument='<%# Eval("RestaurantId") %>'/>
                     </div>
             <%--   </div>--%>
               </div>
            </ItemTemplate>
            
        </asp:Repeater>
        <div id="sort_by_div"></div>

                
                   
       <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodFestConn %>" SelectCommand="SELECT * FROM [Restaurant_tbl]"></asp:SqlDataSource>--%>

                
                   
       <%-- </div>--%>
         </div>

  <%--  <div id="cont_add_to_cart">--%>

  <%--  <div id="your_order_title">
        <asp:TextBox ID="Search_TextBox" runat="server" BackColor="#FFCC66" BorderColor="#993300"></asp:TextBox>
        <asp:Button ID="Search_Rest_Button" runat="server" Text="Search" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" BackColor="#FFCC66" BorderColor="#993300" />
    </div>--%>
    
   <%-- </div>--%>
</asp:Content>