<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="UserMaster.aspx.cs" Inherits="estateConsultant.UserMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <div class="container rounded bg-white shadow bg-white-header">
        <div class="row p-2">
            <div class="col-md-12 bg-danger-subtle p-2 pagehead">
                User Master
            </div>
        </div>
        <div class="row card p-0 m-0">
            <div class="card-body">
                <div class="row">                    
                        <div class="col-md-3">Name<br />
                            <asp:TextBox ID="firstname" runat="server" required="firstname" CssClass="form-control"></asp:TextBox></div>
                        <div class="col-md-3">Gender<br />
                            <asp:DropDownList ID="gender" runat="server" required="gender" CssClass="form-control">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">Phone Number<br />
                            <asp:TextBox ID="phonenum" runat="server"  MaxLength="10" required="phonenum" CssClass="form-control"></asp:TextBox></div>
                        <div class="col-md-3">E-Mail ID<br />
                            <asp:TextBox ID="emailid" runat="server" required="email" TextMode="Email" CssClass="form-control"></asp:TextBox></div>
                        <div class="col-md-3">Designation<br />
                            <asp:DropDownList ID="designation" runat="server" required="designation" CssClass="form-control">
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>User</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">Username<br />
                            <asp:TextBox ID="username" runat="server" required="username" CssClass="form-control"></asp:TextBox></div>
                        <div class="col-md-3">Password<br />
                            <asp:TextBox ID="password" runat="server" TextMode="Password" required="password" CssClass="form-control"></asp:TextBox></div>
                        <br />
                        
                        <div class="col-md-1 col-4"><br />
                            <asp:Button ID="submit" Text="Submit" runat="server" CssClass="btn w-100 p-1 rounded-2 bg-body-secondary text-white" OnClick="submit_Click" />
                            <br />
                            <br />
                        </div>
                    </div>
            </div>
        </div>
   
     <div class="row card m-0 mt-1 p-0 table-responsive">
            <asp:GridView ID="grddata" GridLines="None" AutoGenerateColumns="false" ClientIDMode="Static" OnPreRender="grddata_PreRender" OnRowCommand="grddata_RowCommand" HeaderStyle-BackColor="Teal" HeaderStyle-ForeColor="white" runat="server" CssClass="table table-hover table-bordered">
                <Columns>
                    <asp:TemplateField HeaderText="SN" ItemStyle-Width="5%">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Name" DataField="firstname" />
                   <asp:BoundField HeaderText="Phone No" DataField="phonenum" />
                    <asp:BoundField HeaderText="E-Mail" DataField="emailid" />
                    <asp:BoundField HeaderText="Designation" DataField="designation" />
                    <asp:BoundField HeaderText="UserName" DataField="username" />
                    <asp:TemplateField ItemStyle-Width="10%">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnedt" runat="server" CommandName="btnedt" Text="<i class='fa fa-pencil text-sucess'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                            <asp:LinkButton ID="btndlt" runat="server" OnClientClick="return confirm('Are you sure you want to delete this record?');" CommandName="btndlt" Text="<i class='fa fa-close text-danger'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
         <br />
        </div>
</asp:Content>
