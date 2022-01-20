<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addtocart.aspx.cs" Inherits="hamrobikepasal.com.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Cart</title>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />  

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
          .lable{
              font-size:30px;
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
        .cartimg{
            width:250px;
            height:250px;
        }

        table.mygridview
{

}
table.mygridview th
{
	font-weight: bold;
	color:#006600;
	font-size:1.1em;
    font-family:Lucida Handwriting;
}
table.mygridview td
{
	font-size: 1em;
	padding: 3px;
    font-family:'Times New Roman';
}
table.mygridview td:nth-child(2){
	text-align:right;
}
.mygridview:hover{
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
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

      </div> 
                
                 </nav>
            </div>
        <div class="navmenu" style="width:100%;margin-top:0px;">
  
             
                
            <asp:Button ID="Button2" runat="server"  class="btnn" Text="home" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" class="btnn" Text="login" OnClick="Button3_Click"/>
            
            <asp:Button ID="Button4" runat="server"  class="btnn" Text="contact" OnClick="Button4_Click" />
            
            <asp:Button ID="Button5" runat="server" class="btnn" Text="map" OnClick="Button5_Click" />
            <asp:Button ID="Button6" runat="server" class="btnn" Text="register" OnClick="Button6_Click" />
             
         </div>
        <div>  <div class="container">
            <asp:Label ID="Label1" class="lable" runat="server" Text="YOUR CART! "></asp:Label>
            <br />
            <span>Your products:</span>

            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />

            <span>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">CONTINUE SHOPPING:</asp:HyperLink>
            </span>

            <div>
                <div class="row">
      <div class="col-md-12">
        <div class="table-responsive">
                <asp:gridview  ID="GridView1" runat="server" Cssclass="mygridview" AutoGenerateColumns="False"  OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="883px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    
                      <Columns>
                       <asp:BoundField DataField="sn" Visible="true" itemStyle-width="0.1px" ControlStyle-Width="1px" /> 
                      
                          <asp:BoundField DataField="Pro_name"  />
                         <asp:ImageField DataImageUrlField="Pro_image" ItemStyle-Width="50px" ControlStyle-Width="100" ControlStyle-Height = "100" >
                        </asp:ImageField>
                       
                          <asp:BoundField DataField="Pro_desc" HeaderText=" "/>
                           <asp:BoundField DataField="Price" HeaderText="price"/>
                        <asp:BoundField DataField="quantity" HeaderText="quantity" />
                          
                        <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                        <asp:CommandField SelectText="Modify" ShowSelectButton="True" />
                        <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                    </Columns>
                          
                    <FooterStyle BackColor="#f8f9fa" ForeColor="black" />
                    <HeaderStyle BackColor="#f8f9fa" Font-Bold="True" ForeColor="black" Height="50px" />
                    <PagerStyle BackColor="#f8f9fa" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:gridview>
            </div>
          </div>
                    </div>

            </div>
            <div>
                <asp:Button ID="Button1"  runat="server" class="btn btn-info" Text="Check Out" OnClick="Button1_Click" />
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

        <asp:ListView ID="ListView1" runat="server">
           
        </asp:ListView>
      
     



    </form>
</body>
</html>
