<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="hamrobikepasal.com.Admin.register" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/login.aspx">login</asp:HyperLink>
        
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-4" style="width: 63%; height: 271px">
                <h2>REGISTER NEW USER</h2>
                <hr />
      <div class="form-group">
    <label for="exampleFormControlInput1">Username</label>
    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="username"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* enter username" ControlToValidate="TextBox1" ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
                <div class="form-group">
    <label for="exampleFormControlInput1">email</label>
    <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="enter email" TextMode="email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*enter email" ControlToValidate="TextBox2" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>


<div class="form-group">
    <label for="exampleFormControlInput1">Password</label>
    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="password" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*enter password" ControlToValidate="TextBox3" ForeColor="#FF3300"></asp:RequiredFieldValidator>
</div>

  <div class="form-group">
    <label for="exampleFormControlSelect1"></label>
      <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" Visible="False">
          <asp:ListItem Selected="True">user</asp:ListItem>
          <asp:ListItem>admin</asp:ListItem>
          <asp:ListItem>market</asp:ListItem>
      </asp:DropDownList>
  </div>
<div style="margin-top:14px; text-align:right;">
    <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-primary" OnClick="Button1_Click" />
</div>
 <div>

     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#33CC33"></asp:Label>
 </div>

            </div>
        </div>
    </div>
   
</asp:Content>
