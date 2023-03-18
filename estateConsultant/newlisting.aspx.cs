using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace estateConsultant
{
    public partial class newlisting : System.Web.UI.Page
    {
        API.newlisting newlistingdata = new API.newlisting();
        API.newsite site=new API.newsite();
        API.block block=new API.block();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt = newlistingdata.newlistingsearch("%", "%");
                grddata.DataSource = dt;
                grddata.DataBind();

                dt = site.newsitesearch("%", "%");
                sitename.DataSource = dt.DefaultView.ToTable(true, "sitename");
                sitename.DataTextField = "sitename";
                sitename.DataValueField = "sitename";
                sitename.DataBind();
                sitename.Items.Insert(0, "---Select---");

                dt = block.blocksearch("%", "%");
                blockno.DataSource = dt.DefaultView.ToTable(true, "blockno");
                blockno.DataTextField = "blockno";
                blockno.DataValueField = "blockno";
                blockno.DataBind();
                blockno.Items.Insert(0, "---Select---");
            }
        }

        protected void save_Click(object sender, EventArgs e)
        {

            newlistingdata.newlistingsave(sitename.SelectedValue,blockno.SelectedValue,plotno.Text,plotfacing.Text,length.Text,width.Text,sqft.Text,yard.Text,facingsideroad.Text,othersideroad.Text,park.Text,connectivity.Text,ratepersqft.Text,total.Text,remark.Text,status.SelectedValue);
           /* Response.Write("<script>alert('Data Save Successfully!!!');</script>");*/
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Sucessfully!!!', 'success').then((value) => { window.location = 'newlisting.aspx'})", true);

        }
        protected void grddata_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "btnedt")
                {
                    dt = newlistingdata.newlistingsearch(e.CommandArgument.ToString(), "%");
                    sitename.SelectedValue = dt.Rows[0]["sitename"].ToString();
                    blockno.SelectedValue = dt.Rows[0]["blockno"].ToString();
                    plotno.Text = dt.Rows[0]["plotno"].ToString();
                    plotfacing.Text = dt.Rows[0]["plotfacing"].ToString();
                    length.Text = dt.Rows[0]["length"].ToString();
                    width.Text = dt.Rows[0]["width"].ToString();
                    sqft.Text = dt.Rows[0]["sqft"].ToString();
                    yard.Text = dt.Rows[0]["yard"].ToString();
                    facingsideroad.Text = dt.Rows[0]["facingsideroad"].ToString();
                    othersideroad.Text = dt.Rows[0]["othersideroad"].ToString();
                    park.Text = dt.Rows[0]["park"].ToString();
                    connectivity.Text = dt.Rows[0]["connectivity"].ToString();
                    ratepersqft.Text = dt.Rows[0]["ratepersqft"].ToString();
                    total.Text = dt.Rows[0]["total"].ToString();
                    remark.Text = dt.Rows[0]["remark"].ToString();
                    status.SelectedValue = dt.Rows[0]["status"].ToString();

                }
                else
                {
                    newlistingdata.newlistingdelete(e.CommandArgument.ToString());
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Delete Successfully !!!', 'success').then((value) => {window.location = 'newlisting.aspx'})", true);
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

        protected void length_TextChanged(object sender, EventArgs e)
        {
            try
            {
                sqft.Text = (Convert.ToDecimal(length.Text) * Convert.ToDecimal(width.Text)).ToString();
                yard.Text = Convert.ToString(Convert.ToDecimal(sqft.Text) / 9);
                total.Text = Convert.ToString(Convert.ToDecimal(yard.Text) * Convert.ToDecimal(ratepersqft.Text));
            }
            catch (Exception ex)
            { }
        }
    }
}