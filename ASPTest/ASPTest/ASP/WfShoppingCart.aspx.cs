using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPTest
{
    public partial class WfShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<CShoppingCartItem> list = 
                Session[CDictionary.SHOPPINGCART_ITEMS_LIST] as List<CShoppingCartItem>;
            if (list == null)
                Response.Redirect("WfProduct.aspx");

            GridView1.DataSource = list;
            GridView1.DataBind();

            double pay = 0;
            foreach (CShoppingCartItem item in list)
                pay += item.Quality * item.Price;

            lblMessage.Text = "訂單金額：" + pay.ToString("###,###,##0");
            lblMessage.Text += "<br/>　　稅額：" + (pay * 0.05).ToString("###,###,##0");
            lblMessage.Text += "<br/>應付稅額：" + (pay * 1.05).ToString("###,###,##0");
        }
    }
}