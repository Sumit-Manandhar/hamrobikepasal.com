<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="hamrobikepasal.com.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> checkout</title>
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

        .cont{
            width:50px;
            height:50px;
        }
        .privacy{
            width:25%;
            height:auto;
            float:right;
            font-family:'Times New Roman';
            text-align:justify;
            box-shadow:10px 10px 5px grey;
            margin-right:15px;
            background-color:#e5e5e5;
        }
        .pricavy:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
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
    

        <div style="text-align:center"> <div>
            <asp:Label ID="Label1" runat="server" Text="CHECK YOUR ODER:" Font-Bold="True" Font-Size="X-Large"></asp:Label>

            <br />
            <asp:Label ID="Label2" runat="server" Text="BELOW!!"></asp:Label>

            <hr />

                 <div class="privacy">
            <h4 style="text-align:center; font-weight:bold;"> terms and policies</h4>
            We reserve the right to make changes to this Privacy Policy at any time and for any reason. We will alert you about any changes by updating the “Last Updated” date of this Privacy Policy. Any changes or modifications will be effective immediately upon posting the updated Privacy Policy on the Site, and you waive the right to receive specific notice of each such change or modification.

You are encouraged to periodically review this Privacy Policy to stay informed of updates. You will be deemed to have been made aware of, will be subject to, and will be deemed to have accepted the changes in any revised Privacy Policy by your continued use of the Site after the date such revised Privacy Policy is posted. This template was created using Termly’s privacy policy generator.

        </div>
            <table style="border:1px; width:40%; margin-left:10%">
                <tr>
                    <td>ORDER ID</td><td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>ORDER DATE</td><td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <div style="margin-left:10%">
            <asp:GridView ID="GridView1" runat="server" Cssclass="mygridview" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="True" Width="646px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="sn" />
                    <asp:BoundField DataField="id" HeaderText="Product ID" />
                    <asp:BoundField DataField="Pro_name" HeaderText="Product Name" />
                    <asp:ImageField DataImageUrlField="Pro_image" ItemStyle-Width="50px" ControlStyle-Width="100" ControlStyle-Height = "100" HeaderText="Product">
                    </asp:ImageField>
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField ConvertEmptyStringToNull="False" DataField="quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                </div>
            <br />
            <hr />

            <table  class="table table-active" style="text-align:left;border-style: none; border-color: inherit; border-width: 1px; width:40%; margin-left:10%">
                <tr>
                    <td>Your Delevery Address:</td><td>
                      
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"  Width="183px" style="margin:0;padding:0;" ValidateRequestMode="Enabled" OnTextChanged="TextBox1_TextChanged" CssClass="offset-sm-0"></asp:TextBox>
                    
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*insert address" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Contact No:</td><td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="183px" style="margin:0;padding:0;" ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*insert contact number" ForeColor="Red" ></asp:RequiredFieldValidator>

                    </td>
                </tr>
            </table>

       <h4 style="color:red; margin-left:20px;font-family:'Lucida Handwriting'" > by clicking below, you will accept our terms and policy</h4>

            
            <div>
                <asp:Button ID="Button1" runat="server" Text="Placed Order" class="btn btn-info" OnClick="Button1_Click" />
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
