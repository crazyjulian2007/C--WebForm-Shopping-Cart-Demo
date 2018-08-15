using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPTest.ASP
{
    public partial class WfAddtoCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["pid"];
            if (string.IsNullOrEmpty(id))
                Response.Redirect("WfProduct.aspx");

            lblMessage.Text = id;
        }

        protected void btAdd_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["pid"];
            SqlDataSource sds = new SqlDataSource();
            sds.ConnectionString = @"Data Source=.;Initial Catalog=dbASPDemo;Integrated Security=True";
            sds.SelectCommand = "select * from tProduct where fId = @ID;";
            sds.SelectParameters.Add("ID",id);
            DataView dv = sds.Select(DataSourceSelectArguments.Empty) as DataView;
            if(dv.Table.Rows.Count <= 0 )
                Response.Redirect("WfProduct.aspx");

            List<CShoppingCartItem> list = 
                Session[CDictionary.SHOPPINGCART_ITEMS_LIST] as List<CShoppingCartItem>;

            if (list == null) {
                list = new List<CShoppingCartItem>();
                Session[CDictionary.SHOPPINGCART_ITEMS_LIST] = list;
            }

            CShoppingCartItem item = new CShoppingCartItem();
            item.Name = dv[0]["fName"].ToString();
            item.Quality = Convert.ToInt32(txtMessage.Text);
            item.Price = Convert.ToDouble(dv[0]["fPrice"].ToString());

            list.Add(item);
            Response.Redirect("WfProduct.aspx");
        }
    }
}