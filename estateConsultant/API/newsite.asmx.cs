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
    /// Summary description for newsite
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class newsite : System.Web.Services.WebService
    {
        TextInfo pcase = new CultureInfo("en-US", false).TextInfo;
        [WebMethod]
        public DataTable newsitesubmit(string sitename)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into estate(sitename) values('" + sitename + "')");
        }
    }
}
