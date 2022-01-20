<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditOrder.aspx.cs" Inherits="hamrobikepasal.com.EditOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Modify</title>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">

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
        .auto-style1 {
            width: 300px;
            border-style: solid;
            border-width: 1px;
        }
          #foot{
            background-color:#f8f9fa;
                   margin-top:25px;
            bottom: 0;
            width:100%;
            text-align:center;
        }
        .cont{
            width:50px;
            height:50px;
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
               
                           

               
                
                 </nav>
            </div>
        
        <div class="container">
      
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>S. No</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Prouct Id</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                              <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                     
                    </td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" class="btn btn-info" OnClick="Button1_Click" Text="Save" />
                    </td>
                </tr>
            </table>


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
