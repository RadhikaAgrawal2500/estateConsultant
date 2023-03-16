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
    public partial class newsite : System.Web.UI.Page
    {
        API.newsite newsitedata = new API.newsite();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            newsitedata.newsitesubmit(sitename.Text);
            Response.Write("<script>alert('Data Save Successfully!!!');</script>");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Sucessfully!!!', 'success').then((value) => { window.location = 'newsite.aspx'})", true);

        }
    }
}