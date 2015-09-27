using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JSDemoTest.AllTest
{
    public partial class ajaxrequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["usercode"] != null)
            {
                string code = Request["usercode"].ToString();
                if (code == "1234")
                {

                    Response.Write("{\"status\":\"success\"}");
                    Response.End();
                }
                else
                {

                    Response.Write("{\"status\":\"false\"}");
                    Response.End();
                }
            }
        }
    }
}