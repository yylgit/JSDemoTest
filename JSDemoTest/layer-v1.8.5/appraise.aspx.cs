using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JSDemoTest.layer
{
	public partial class appraise : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
               divAppriseTitle.InnerHtml = "会员<span class='blue'><strong>520yang</strong></span>对货运订单<span class='red'><strong>123456</strong></span>评价如下";
               divAppriseMessage.InnerHtml = "pingjianeirongadfasdfasdfasdfsadfsadf";
               ltAppriseTime.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
		}
	}
}