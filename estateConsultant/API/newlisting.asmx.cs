using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.ClientServices;
using System.Web.Services;
using System.Web.UI.WebControls;
using System.Xml.Schema;

namespace estateConsultant.API
{
    /// <summary>
    /// Summary description for newlisting
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class newlisting : System.Web.Services.WebService
    {
        TextInfo pcase = new CultureInfo("en-US", false).TextInfo;
        [WebMethod]
        public DataTable newlistingsearch(string sn, string sitename)
        {
            return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from newlisting where sn like'" + sn + "' and sitename like'" + sitename + "'");
        }
        [WebMethod]
        public void newlistingsave(string sitename,string blockno,string plotno,string plotfacing,string length,string width,string sqft,string yard,string facingsideroad,string othersideroad,string park,string connectivity,string ratepersqft,string total,string remark,string status)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into newlisting(sitename, blockno,plotno,plotfacing,length,width,sqft,yard,facingsideroad,othersideroad,park,connectivity,ratepersqft,total,remark,status) values('" + sitename + "','" + blockno + "','" + plotno + "','" + plotfacing + "','" + length +"','" + width + "','" + sqft + "','" + yard + "','" + facingsideroad + "','" + othersideroad + "','" + park + "','" + connectivity + "','" + ratepersqft + "','" + total + "','" + remark + "','" + status + "')");
        }
        [WebMethod]
        public void newlistingdelete(string sn)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from newlisting where sn='" + sn + "'");
        }
    }
}
