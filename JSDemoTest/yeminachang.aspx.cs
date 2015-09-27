using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JSDemoTest
{
    public partial class yeminachang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "warn", "alert('验证码填写不正确！')", true);
        }
    }
}