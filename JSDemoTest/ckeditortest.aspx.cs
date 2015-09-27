using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JSDemoTest
{
    public partial class ckeditortest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "", " CKEDITOR.replace('txtContent');", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sdfsdf = txtContent.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sdfsdf = txtContent.Text;
            string text = Labelshow.Text;
        }
    }
}