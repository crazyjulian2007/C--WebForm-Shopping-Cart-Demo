using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPTest.ASP
{
    public partial class WfrmUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            string photoName = Guid.NewGuid().ToString()+".jpg";
            e.Values["fPath"] = "~/pics/" + photoName;
            FileUpload1.SaveAs(Server.MapPath("../pics/"+photoName));
        }
    }
}