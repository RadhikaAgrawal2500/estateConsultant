<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="block.aspx.cs" Inherits="estateConsultant.block" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container rounded bg-white shadow bg-white-header">
        <div class="row">
            <div class="col-md-12 text-center pt-2 mt-1 text-black ">
              <br />
                <h1>Block or Area or Plot</h1>
</div></div>
        <hr><br />
        <div class="row m-1 p-3 ">
                    <div class="col-md-4">
                        Site Name<asp:DropDownList ID="sitename" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                       Area<asp:TextBox ID="area" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
   <div class="col-md-4"><br />
       <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" CssClass="btn w-100 p-1 rounded-2 bg-warning fa-bold" />
     </div>
   </div> <br /><hr /><br />
<div class="row m-0 p-0 border-0  table-responsive card-body">
       
<asp:GridView ID="grddata" GridLines="None" AutoGenerateColumns="false" ClientIDMode="Static" OnPreRender="grddata_PreRender" OnRowCommand="grddata_RowCommand" HeaderStyle-BackColor="Teal" HeaderStyle-ForeColor="white" runat="server" CssClass="table table-hover table-bordered">
<Columns>

<asp:BoundField HeaderText="Site Name" DataField="sitename" />
<asp:BoundField HeaderText="Area" DataField="area" />
                   <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnedt" runat="server" CommandName="btnedt" Text="<i class='fa fa-pencil text-sucess'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                               <asp:LinkButton ID="btndlt" runat="server" OnClientClick="return confirm('Are you sure you want to delete this record?');"  CommandName="btndlt" Text="<i class='fa fa-close text-danger'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
       </div>
</asp:Content>
