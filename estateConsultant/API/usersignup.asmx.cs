using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Xml.Linq;

namespace estateConsultant.API
{
    /// <summary>
    /// Summary description for usersignup
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class usersignup : System.Web.Services.WebService
    {
        TextInfo pcase = new CultureInfo("en-US", false).TextInfo;
        [WebMethod]
        public void usersignupsearch(string sn, string firstname)
        {
            SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from usersignup where sn like'" + sn + "' and firstname like'" + firstname + "'");
        }
        [WebMethod]
        public void usersignupsubmit(string firstname,string lastname,string gender, string phonenum, string emailid, string username, string password)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into usersignup(firstname,lastname,gender,phonenum,emailid,username,password) values('" + firstname + "','" + lastname + "','" + gender + "','" + phonenum + "','" + emailid + "','" + username + "','" + password +  "')");
        }

     
    }
}
