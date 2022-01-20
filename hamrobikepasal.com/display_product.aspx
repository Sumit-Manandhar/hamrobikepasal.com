<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="display_product.aspx.cs" Inherits="hamrobikepasal.com.display_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <meta charset="utf-8" /><meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <style>
        #smenu{
            background-color:#f8f9fa;
            width:150px;
            height:auto;
            overflow-x:hidden;
            margin-left:40px;
            padding:0;
            z-index:1;
            margin-top:0;
            float:left;
            }
        #smenu:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        #navbars{
            width:100%;
            height:50px;
            
            margin-top:-20px;
            padding:0;
           text-align:right;
           margin-right:15px;
        }
        .navmenu{
            background-color:#1a1919;
            color:white;
            width:100%;
            height:auto;
            text-align:left;
        }
       
        .sideadds{
            background-color:aquamarine;
            width:20%;
            height:auto;
            float:left;
             margin-top:50px;
        }
         .cata{
           width:1000px;
           
       }
        .imadds{
            width:100%;
            height:500px;
           
        }
         #foot{
            background-color:#f8f9fa;
            
                   margin-top:25px;
            bottom: 0;
            width:100%;
            text-align:center;
            font-family:'Lucida Handwriting';
        }
        .cont{
            width:50px;
            height:50px;
        }
        .cart{
             width:25px;
            height:25px;
          

        }

        .cartth{
            width:125px;
            height:100px;
              float:right;
              text-align:center;
              margin-right:25px;
          
        }
        .cartth:hover{
              box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            
              color:brown;
        }
        .btnn{
              background-color:black;
 

  color: white;
  
  text-align: center;
  text-decoration: none;
  display: inline-block;
  

  transition-duration: 0.4s;
  cursor: pointer;
  margin-right:5px;
  width:75px;
  height:40px;
        }
        .btnn:hover {
  background-color:darkslategrey;
  color: black;
}
     .btnn::after{
            background-color:cadetblue;
        }


       .item:hover{
           box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
       }
        .input-bar-item {
    display: table-cell;
}
        .input-bar {
    display: table;
    width: 100%;
}
        
.input-bar-item > button {
    margin-left: 5px;
}

.width100 {
  width: 100%;
}
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="z-index:5; width:100%;padding:0;">
             <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-bottom:25px;">
  <a class="navbar-brand" href="#">
    
  </a>

                        <div style="width:100%">
          <img src="images/logos.jpg" style="width:192px; height:100px; padding:4px; margin-top:20px;" />
  <button class="navbar-toggler" type="button" style="float:right" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
      </div> 
                 <div class="cartth">
                     <br />
                     <br />
                   
                     no of product:
                   <asp:Label ID="Label15" runat="server" style="font-weight: 700"></asp:Label>
                    
                          
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Addtocart.aspx">MY Cart</asp:HyperLink>
                           

               
                 </div>
                 </nav>
            </div>
        <div class="navmenu" style="width:100%;margin-top:0px;">
  
             
                
            <asp:Button ID="Button1" runat="server"  class="btnn" Text="home" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" class="btnn" Text="login" OnClick="Button2_Click"/>
            
            <asp:Button ID="Button3" runat="server"  class="btnn" Text="contact" OnClick="Button3_Click" />
            
            <asp:Button ID="Button4" runat="server" class="btnn" Text="map" OnClick="Button4_Click"/>
            <asp:Button ID="Button5" runat="server" class="btnn" Text="register" OnClick="Button5_Click" />
             
         </div>
               
        
             
         <div id="smenu">
              
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
             <h3>category </h3>
            <ul class="navbar-nav" >
                
                <li class="nav-item">
                    
                    <asp:LinkButton ID="LinkButton1" runat="server" class="nav-link" OnClick="LinkButton1_Click" Text="white">helmet</asp:LinkButton>
                </li>
                <li class="nav-item">
                <asp:LinkButton ID="LinkButton2" runat="server" class="nav-link" OnClick="LinkButton2_Click" >riding gear</asp:LinkButton>

                </li>
                <li class="nav-item">
                    <asp:LinkButton ID="LinkButton3" runat="server" class="nav-link" OnClick="LinkButton3_Click">accrssories</asp:LinkButton>
                </li>
                <li class="nav-item">
                    <asp:LinkButton ID="LinkButton4" runat="server" class="nav-link" OnClick="LinkButton4_Click">luggage</asp:LinkButton>
                </li>
                <li class="nav-item">
                    <asp:LinkButton ID="LinkButton5" runat="server" class="nav-link" OnClick="LinkButton5_Click">oils</asp:LinkButton>
                </li>
               
            </ul>
                 </div>
             </div>
        <div class="cata" style="margin-left:25%; margin-top:25px; ">
        
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                        
                            
                           <div  class="item" style="margin-left:15px; margin-top:15px; text-align: center;">
                           
                                    <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("Pro_image") %>' class="img-thumbnail" style="width:250px; height:250px;" />
                         
                                <br />
                                    <asp:Label ID="Label3" runat="server" Font-Bold="true" Font-Names="	Lucida Handwriting" Font-Overline="false" Text='<%# Eval("Pro_name") %>'></asp:Label>
                               <br />
                            
                                   Quantity:
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem Selected="True" >1</asp:ListItem>
                                        
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:DropDownList>
                                    
                                 Rs:<asp:Label ID="Label1" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                             <br />
                                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/add.jpg" CommandArgument='<%# Eval("id")%>' CommandName="addtocart" />
                         </div>
                        
                        <br />
                    </ItemTemplate>    
            
            </asp:DataList>
               

            
            
            </div><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project_hamrobikepasal_productConnectionString %>" SelectCommand="SELECT * FROM product"></asp:SqlDataSource>
            
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:project_hamrobikepasal_productConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([Category] = @Category)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Category" QueryStringField="cat" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>


        </form>
</body>
</html>
