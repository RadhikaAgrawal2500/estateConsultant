<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="estateConsultant.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
       
                 
                 <div class="row m-0 mt-5"></div>
    <div class="row m-0 mt-5">
        <div class="col-md-3"></div>
            <div class="col-md-6 card p-0">
                <div class="card-header bg-body-secondary text-white"><h4>User Signing</h4></div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4  p-2 h5">First Name</div><div class="col-md-8  p-2"><asp:TextBox ID="firstname" runat="server" required="firstname"   CssClass="form-control"></asp:TextBox></div>
                        <div class="col-md-4  p-2 h5">last Name</div><div class="col-md-8  p-2"><asp:TextBox ID="lastname" runat="server" required="lastname"   CssClass="form-control"></asp:TextBox></div>
                        <div class="col-md-4  p-2 h5">Gender</div><div class="col-md-8 mt-1 p-2"><asp:DropDownList ID="gender" runat="server" required="gender" CssClass="form-control">
                            <asp:ListItem>Male</asp:ListItem><asp:ListItem>Female</asp:ListItem><asp:ListItem>Others</asp:ListItem>
                                                                                                 </asp:DropDownList></div>
                        <div class="col-md-4  p-2 h5">Phone Number</div><div class="col-md-8 p-2"><asp:textbox ID="phonenum" runat="server" pattern="[6-9]{1}[0-9]{9}"  MaxLength="10"  required="phonenum" Cssclass="form-control"></asp:textbox></div>
                        <div class="col-md-4  p-2 h5">E-Mail ID</div><div class="col-md-8 p-2"><asp:TextBox ID="emailid" runat="server" required="email" TextMode="Email"  CssClass="form-control"></asp:TextBox></div>
                        
                        <div class="col-md-4  p-2 h5">Username</div><div class="col-md-8 mt-1 p-2"><asp:TextBox ID="username" runat="server"  required="username" CssClass="form-control"></asp:TextBox></div>
                        <div class="col-md-4  p-2 h5">Password</div><div class="col-md-8 mt-1 p-2"><asp:textbox ID="password" runat="server" TextMode="Password"   required="password" Cssclass="form-control"></asp:textbox></div>
                      
                        <br />
                        <div class="col-md-5"></div>
                       
            <div class="col-md-3 mt-4 text-center">
                <asp:Button ID="submit" Text="Submit" runat="server" CssClass="btn w-100 p-1 rounded-2 bg-body-secondary text-white" OnClick="submit_Click" />
                <br /><br />
                
            </div>   
                        
                    </div>
            </div>
        </div>
    
     </div>
     </div>
</asp:Content>
