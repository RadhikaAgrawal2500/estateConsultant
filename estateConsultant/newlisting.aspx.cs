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
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt = newlistingdata.newlistingsearch("%", "%");
                grddata.DataSource = dt;
                grddata.DataBind();
            }
        }

        protected void save_Click(object sender, EventArgs e)
        {

            newlistingdata.newlistingsave(sitename.SelectedValue,plotno.Text,plotfacing.Text,length.Text,width.Text,sqft.Text,unit.Text,facingsideroad.Text,othersideroad.Text,park.Text,connectivity.Text,ratepersqft.Text,total.Text,remark.Text,status.SelectedValue);
            Response.Write("<script>alert('Data Save Successfully!!!');</script>");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Sucessfully!!!', 'success').then((value) => { window.location = 'newlisting.aspx'})", true);

        }
        protected void grddata_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "btnedt")
                {
                    dt = newlistingdata.newlistingsearch(e.CommandArgument.ToString(), "%");
                    sitename.Text = dt.Rows[0]["sitename"].ToString();
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
    }
}