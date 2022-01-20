<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="add_products.aspx.cs" Inherits="hamrobikepasal.com.Admin.add_products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="width:400px; margin:0 auto;">
        <h2>
            &nbsp;</h2>
        <h2>ADD YOUR PRODUCTS</h2>
        <table class="table table-success">
            <tr>
                <td>Product Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Add Image</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Product Description</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Category</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>helmet</asp:ListItem>
                        <asp:ListItem>oils</asp:ListItem>
                        <asp:ListItem>riding gear</asp:ListItem>
                        <asp:ListItem>luggage</asp:ListItem>
                        <asp:ListItem>acessories</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="Button1_Click" />
                    <br />
                    <br />
                    <br />
                    <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                </td>
            </tr>
        </table>

    </div>




</asp:Content>
