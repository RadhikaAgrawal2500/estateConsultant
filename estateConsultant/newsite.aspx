<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="newsite.aspx.cs" Inherits="estateConsultant.newsite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container rounded bg-white shadow bg-white-header">
        <div class="row">
            <div class="col-md-12 text-center pt-2 mt-1 text-danger">
              <br />
                <h2>
               NEW SITE UPLOADING
                    </h2>
            </div>
            </div>
        <hr>
        <br />
             <div class="row m-1 p-3 ">
                     <div class="col-md-4 mt-1 text-danger">New Site Name:</div>
             <div class="col-md-4 mt-1">   <asp:TextBox ID="sitename"  runat ="server" CssClass="form-control" ></asp:TextBox></div>              
                 <div class="col-md-12"></div>
                
                     <br /> <br /><br /> <br />
                 <div class="col-md-4"></div>
                
              
                   <div class="col-md-4 mt-1 text-center">
                        
                      
            
                <asp:Button ID="submit" Text="Submit" runat="server" CssClass="btn w-100 p-1 rounded-2 bg-warning" OnClick="submit_Click"/>
            </div>
            </div>
  </div>
</asp:Content>
