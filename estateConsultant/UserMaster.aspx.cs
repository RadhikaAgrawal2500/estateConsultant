using estateConsultant.API;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace estateConsultant
{
    public partial class UserMaster : System.Web.UI.Page
    {
        API.UserMaster user=new API.UserMaster();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt = user.usersearch("%", "%");
                grddata.DataSource = dt;
                grddata.DataBind();
            }
            }

        protected void grddata_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "btnedt")
                {
                    dt = user.usersearch(e.CommandArgument.ToString(), "%");
                    firstname.Text = dt.Rows[0]["firstname"].ToString();
                    gender.Text = dt.Rows[0]["gender"].ToString();
                    phonenum.Text = dt.Rows[0]["phonenum"].ToString();
                    emailid.Text = dt.Rows[0]["emailid"].ToString();
                    designation.Text = dt.Rows[0]["designation"].ToString();
                    username.Text = dt.Rows[0]["username"].ToString();
                    password.Text = dt.Rows[0]["password"].ToString();
                }
                else
                {
                    user.userdelete(e.CommandArgument.ToString());
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Delete Successfully !!!', 'success').then((value) => {window.location = 'UserMaster.aspx'})", true);
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
            user.usersubmit(firstname.Text, gender.SelectedValue, phonenum.Text, emailid.Text, designation.Text, username.Text,password.Text);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Sucessfully!!!', 'success').then((value) => { window.location = 'UserMaster.aspx'})", true);
        }
    }
}