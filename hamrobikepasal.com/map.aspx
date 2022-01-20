<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="hamrobikepasal.com.map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="googlemapselector.css" />
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
        
#mybgcarousel{ /* CSS for specific carousel container called #mybgcarousel. */
width:100%;
height:500px;
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

           div.bgcarousel div.slide div.desc a {
               color: yellow;
               text-decoration: none;
           }
       
	 .frame-abc {
border:none;
overflow:hidden;
margin:0;
height:230px;
width:570px; 
}
     .mapview{
         box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
         width:100%;
         height:auto;
         text-align:center;
         margin-left:50%
     }
	</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>

<script src="googlemapselector.js">

/***********************************************
* Google Map Selector- (c) Dynamic Drive (www.dynamicdrive.com)
* Please keep this notice intact
* Visit http://www.dynamicdrive.com/ for this script and 100s more.
***********************************************/

</script>


</head>
<body>
    <form id="form1" runat="server">
        <div>

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
                   
                    
               
                          
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Addtocart.aspx">MY Cart</asp:HyperLink>
                           

               
                 </div>
                 </nav>
            </div>
        <div class="navmenu" style="width:100%;margin-top:0px;">
  
             
                
            <asp:Button ID="Button1" runat="server"  class="btnn" Text="home" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" class="btnn" Text="login" OnClick="Button2_Click"/>
            
            <asp:Button ID="Button3" runat="server"  class="btnn" Text="contact" OnClick="Button3_Click" />
            
            <asp:Button ID="Button4" runat="server" class="btnn" Text="map" />
            <asp:Button ID="Button5" runat="server" class="btnn" Text="register" OnClick="Button5_Click" />
             
         </div>

            <div id="mapcontainer" style="margin: 0 auto;">
<br />
                
<h3> FIND US</h3>
              
<div id="mapcolumn" class="mapview">

    
<iframe width="1000" height="1000"  id="gmap_canvas" src="https://maps.google.com/maps?width=520&amp;height=400&amp;hl=en&amp;q=banasthali%20Kathmandu+(hamro%20bike%20pasal)&amp;t=&amp;z=12&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe> 

</div>
                      <div style="float:left;margin-top:-300px; font-size:large; font-family:'Lucida Handwriting';color:crimson">
                    <h3 style="font-family:'Times New Roman' ;color:black">contact us:</h3>contact us:
                    <br />
                    Banasthali, Kathmandu
                    <br />
                    9840031352
                          <br />
                          <br />
                          <h4 style="font-family:'Times New Roman'; color:black"> we are available on:</h4>
                          <br />
                          sun-fri: 10 am to 5pm

                </div>
                

</div>
        </div>
        <div class="container" id="foot" >
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
