<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="newlisting.aspx.cs" Inherits="estateConsultant.newlisting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="container rounded bg-white shadow bg-white-header">
        <div class="row">
            <div class="col-md-12 text-center pt-2 mt-1 text-black ">
              <br />
                <h1> New Listing</h1>
            </div></div>  
      <hr><br />
      <div class="row m-1 p-3 ">
                    <div class="col-md-3">
                        Site Name<asp:DropDownList ID="sitename" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                       Plot No.<asp:TextBox ID="plotno" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        Plot Facing<asp:TextBox ID="plotfacing" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                       Length<asp:TextBox ID="length" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        Width<asp:TextBox ID="width" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                      Sq Ft<asp:TextBox ID="sqft" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                      Unit<asp:TextBox ID="unit" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
           <div class="col-md-3">
                        Facing Side Road<asp:TextBox ID="facingsideroad" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                      Other Side Road<asp:TextBox ID="othersideroad" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                      Park<asp:TextBox ID="park" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
           <div class="col-md-3">
                       Connectivity<asp:TextBox ID="connectivity" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                      Rate Per Sq Ft<asp:TextBox ID="ratepersqft" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                      Total<asp:TextBox ID="total" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
           <div class="col-md-3">
                      Remark<asp:TextBox ID="remark" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
           <div class="col-md-3">
                        Status<asp:DropDownList ID="status" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
           <div class="col-md-3"></div>
                <div class="col-md-2 mt-1">
                        <br />
                        <asp:Button ID="save" runat="server" Text="Save" OnClick="save_Click" CssClass="btn w-100 p-1 rounded-2 bg-warning fa-bold" />
                    </div>
      </div>
    <br /><hr /><br />

          <div class="row m-0 p-0 border-0  table-responsive card-body">
       
<asp:GridView ID="grddata" GridLines="None" AutoGenerateColumns="false" ClientIDMode="Static" OnPreRender="grddata_PreRender" OnRowCommand="grddata_RowCommand" HeaderStyle-BackColor="Teal" HeaderStyle-ForeColor="white" runat="server" CssClass="table table-hover table-bordered">
<Columns>

<asp:BoundField HeaderText="Site Name" DataField="sitename" />
<asp:BoundField HeaderText="Plot No." DataField="plotno" />
<asp:BoundField HeaderText="Plot Facing" DataField="plotfacing" />
<asp:BoundField HeaderText="Length" DataField="length" />
<asp:BoundField HeaderText="Width" DataField="width" />
<asp:BoundField HeaderText="Sq Ft" DataField="sqft" />
<asp:BoundField HeaderText="Unit" DataField="unit" />
<asp:BoundField HeaderText="Facing  Side Road" DataField="facingsideroad" />
<asp:BoundField HeaderText="Other Side Road" DataField="othersideroad" />
<asp:BoundField HeaderText="Park" DataField="park" />
<asp:BoundField HeaderText="Connectivity" DataField="connectivity" />
<asp:BoundField HeaderText="Rate/sqft" DataField="ratepersqft" />
<asp:BoundField HeaderText="Total" DataField="total" />
<asp:BoundField HeaderText="Remark" DataField="remark" />
<asp:BoundField HeaderText="Status" DataField="status" />

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