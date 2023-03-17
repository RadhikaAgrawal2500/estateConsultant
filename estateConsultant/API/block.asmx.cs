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
    /// Summary description for block
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class block : System.Web.Services.WebService
    {
        TextInfo pcase = new CultureInfo("en-US", false).TextInfo;
        [WebMethod]
        public DataTable blocksearch(string sn, string sitename)
        {
            {
                return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from block where sn like'" + sn + "' and sitename like'" + sitename + "'");
            }
        }
        [WebMethod]
        public void blocksubmit(string sitename,string area)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into block(sitename,area) values('" + sitename + "','" + area + "')");
        }
        [WebMethod]
        public void blockdelete(string sn)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from block where sn='" + sn + "'");
        }
    }
}

