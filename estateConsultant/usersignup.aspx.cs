using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Collections.Specialized.BitVector32;

namespace estateConsultant
{
 
    public partial class usersignup : System.Web.UI.Page
    {
        API.usersignup usersignupdata = new API.usersignup();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            usersignupdata.usersignupsubmit(firstname.Text, lastname.Text, gender.SelectedValue, phonenum.Text, emailid.Text, username.Text, password.Text);
            Response.Write("<script>alert('Data save Successfully!!!');</script>");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('','Data Save Sucessfully!!!','success').then((value)=>{window.location='usersignup.aspx'})", true);
        }
    }
}