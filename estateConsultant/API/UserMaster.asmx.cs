using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace estateConsultant.API
{
    /// <summary>
    /// Summary description for UserMaster
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class UserMaster : System.Web.Services.WebService
    {

        TextInfo pcase = new CultureInfo("en-US", false).TextInfo;
        [WebMethod]
        public DataTable usersearch(string sn, string firstname)
        {
            {
                return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from usersignup where sn like'" + sn + "' and firstname like'" + firstname + "'");
            }
        }
        [WebMethod]
        public void usersubmit(string firstname, string gender, string phonenum, string emailid, string designation, string username, string password)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into usersignup(firstname, gender, phonenum, emailid, designation, username, password) values('" + firstname + "','" + gender + "','" + phonenum + "','" + emailid + "','" + designation + "','" + username +"','" + password + "')");
        }
        [WebMethod]
        public void userdelete(string sn)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from usersignup where sn='" + sn + "'");
        }
    }
}
