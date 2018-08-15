using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPTest
{
    public partial class WfLogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
        }

        protected void btSubmit_Click(object sender, EventArgs e)
        {
            int pw = Convert.ToInt32(txtId.Text);
            tCustomer x = (new dbDataDataContext()).tCustomer.FirstOrDefault(
                t => t.fEmail.Equals(txtMail.Text) && t.fId == pw);
            if (x != null) {
                Session[CDictionary.LOGIN_USER] = x;
                Response.Redirect("WfHome.aspx");
            }
            lblMessage.Visible = true;
            lblMessage.Text = "Wrong password or Email";

        }
    }
}