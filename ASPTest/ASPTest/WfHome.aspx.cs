using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPTest
{
    public partial class WfHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tCustomer t = Session[CDictionary.LOGIN_USER] as tCustomer;
            if (t == null)
                Response.Redirect("WfLogIn.aspx");
            Label1.Text = "目前使用者：" + t.fName + "[" + t.fEmail + "]";
        }
    }
}