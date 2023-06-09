﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace estateConsultant
{
    public partial class block : System.Web.UI.Page
    {
        API.block blockdata = new API.block();
        API.newsite site = new API.newsite();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt = blockdata.blocksearch("%", "%");
                grddata.DataSource = dt;
                grddata.DataBind();

                dt = site.newsitesearch("%", "%");
                sitename.DataSource = dt.DefaultView.ToTable(true, "sitename");
                sitename.DataTextField = "sitename";
                sitename.DataValueField = "sitename";
                sitename.DataBind();
                sitename.Items.Insert(0, "---Select---");
            }
        }
       
        protected void grddata_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "btnedt")
                {
                    dt = blockdata.blocksearch(e.CommandArgument.ToString(), "%");
                    sitename.Text = dt.Rows[0]["sitename"].ToString();
                    blockno.Text = dt.Rows[0]["blockno"].ToString();
                }
                else
                {
                    blockdata.blockdelete(e.CommandArgument.ToString());
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Delete Successfully !!!', 'success').then((value) => {window.location = 'block.aspx'})", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('','" + ex.Message + "', 'error')", true);
            }

        }

        protected void grddata_PreRender(object sender, EventArgs e)
        {
            if (grddata.Rows.Count > 0)
            {
                grddata.UseAccessibleHeader = true;
                grddata.HeaderRow.TableSection = TableRowSection.TableHeader;
                grddata.FooterRow.TableSection = TableRowSection.TableFooter;
            }

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            blockdata.blocksubmit(sitename.SelectedValue,blockno.Text);            
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Sucessfully!!!', 'success').then((value) => { window.location = 'block.aspx'})", true);
        }
    }
}