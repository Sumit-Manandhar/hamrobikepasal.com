<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="default.aspx.cs" Inherits="hamrobikepasal.com._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>bike pasal</title>

        <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
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
       .cata{
           width:1000px;
           
       }
        .sideadds{
            background-color:aquamarine;
            width:20%;
            height:auto;
            float:left;
             margin-top:50px;
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
              margin-top:-10px;
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
        
#mybgcarousel{ /* CSS for specific carousel container called #mybgcarousel. */
width:100%;
height:300px;
}

/* ######### Shared CSS for various parts of carousel (in the event of multiple carousels) ######### */

div.bgcarousel{ /* shared CSS for main carousel container */
background: black url(ajaxload.gif) center center no-repeat; /* loading gif while caoursel is loading */
}

div.bgcarousel img.navbutton{ /* CSS for the nav buttons */
}

div.bgcarousel div.slide{ /* CSS for each image's DIV container within main container */
background-color: black;
background-position: center center; /* center image within carousel */
background-repeat: no-repeat;
background-size: cover; /* CSS3 property to scale image within container? "cover" or "contain" */
color: black;
}

div.bgcarousel div.selectedslide{ /* CSS for currently selected slide */
}

div.bgcarousel div.slide div.desc{ /* DIV that contains the textual description inside .slide */
position: absolute;
color: white;
left: 40px;
top: 100px;
width:200px;
padding: 10px;
font: bold 16px sans-serif, Arial;
text-shadow: 0 -1px 1px #8a8a8a; /* CSS3 text shadow */
z-index:5;
}

div.bgcarousel div.selectedslide div.desc{ /* CSS for currently selected slide's desc div */
}

div.bgcarousel div.slide div.desc h2{
font-size:150%;
margin:0;
}

div.bgcarousel div.slide div.desc a{
color:yellow;
text-decoration:none;
}

        </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="crousel/jquery.velocity.min.js"></script>
<script type="text/javascript" src="crousel/jquery.touchSwipe.min.js"></script>

<script src="crousel/bgcarousel.js" type="text/javascript">

/***********************************************
* Background Image Carousel- (c) Dynamic Drive (www.dynamicdrive.com)
* Please keep this notice intact
* Visit http://www.dynamicdrive.com/ for this script and 100s more.
***********************************************/

</script>

<script type="text/javascript">

var firstbgcarousel=new bgCarousel({
	wrapperid: 'mybgcarousel', //ID of blank DIV on page to house carousel
	imagearray: [
		['images/cro.jpg', '<h2>hamro bike pasal</h2>genuene items with minimum price.'], //["image_path", "optional description"]
        ['images/cro2.jpg', '<h2>ride with passon</h2>no compromise to ride.'],
        ['images/cro3.jpg', 'ride till I dye'],
        ['images/cro4.jpg', 'Alone and Lonliness- take a long ride'] //<--no trailing comma after very last image element!
	],
	displaymode: {type:'auto', pause:3000, cycles:2, stoponclick:false, pauseonmouseover:true},
	navbuttons: ['left.gif', 'right.gif', 'up.gif', 'down.gif'], // path to nav images
	activeslideclass: 'selectedslide', // CSS class that gets added to currently shown DIV slide
	orientation: 'h', //Valid values: "h" or "v"
	persist: true, //remember last viewed slide and recall within same session?
	slideduration: 500 //transition duration (milliseconds)
})

</script>

 

</head>
<body style="overflow-x:hidden;">
    <form id="form1" runat="server" >

      
        <div style="z-index:5; width:100%;padding:0;">
             <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-bottom:25px;">
  <a class="navbar-brand" href="#">
    
  </a>

                        <div style="width:100%">
          <img src="images/logos.jpg"  class="navbar-brand" style="width:192px; height:100px; padding:4px; margin-top:20px;" />
  <button class="navbar-toggler" type="button"style="float:right"  data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
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
             
       
         
        <div class="container" style="float:right;z-index:0; margin-top:25px;">
            <div class="col">
       <div id="mybgcarousel" class="bgcarousel"></div>
                </div>
        </div>
           
         
 <br />
        <div class="sideadds">
            <asp:Imagebutton ID="Image2" runat="server" class="imadds" ImageUrl="~/images/adds.jpg" OnClick="sidadds" />

        </div>
             
           <div>

        <div class="cata" style="margin-left:25%; margin-top:25px; ">
        
             <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
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
               

            
            
            </div></div>
        <div class="container" style="margin-left:45%;">
            <button type="button" class="btn btn-outline accordion-body>"> more -></button>
        </div>
            

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project_hamrobikepasal_productConnectionString %>" SelectCommand="SELECT * FROM product"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:project_hamrobikepasal_productConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([Category] = @Category)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Category" QueryStringField="cat" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        

        
       

        <div  id="foot" >
            <h3>
               hamrobikepasal.com
            </h3>  <h5>follow us on social media</h5>
           
            <div>
                <asp:ImageButton ID="ImageButton2" class="cont" runat="server" ImageURL="~/images/fb.png" OnClick="ImageButton2_Click"/>
            <asp:ImageButton ID="ImageButton3" class="cont" runat="server" ImageURL="~/images/insta.png" OnClick="ImageButton3_Click" />
            
            </div>@copyright 2021
        </div>
    </form>
</body>
</html>
