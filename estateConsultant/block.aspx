﻿<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="block.aspx.cs" Inherits="estateConsultant.block" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container rounded bg-white shadow bg-white-header">
        <div class="row p-2">
            <div class="col-md-12 bg-danger-subtle p-2">
                <h4>New Block Master
                </h4>
            </div>
        </div>
        <div class="row card p-0 m-0">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2">
                        Site Name
                    </div>
                    <div class="col-md-3">
                        <asp:DropDownList ID="sitename" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div class="col-md-2">
                        Block No
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox ID="blockno" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-1 col-4">
                        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" CssClass="btn w-100 p-1 rounded-2 bg-warning text-white fa-bold" />
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
                    <asp:BoundField HeaderText="Site Name" DataField="sitename" />
                    <asp:BoundField HeaderText="Block No" DataField="blockno" />
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
