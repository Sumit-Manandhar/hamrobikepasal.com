using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace hamrobikepasal.com
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {
                Label15.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label15.Text = "0";
            }
            if (Request.QueryString["cat"] != null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("display_product.aspx?cat=helmet");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("display_product.aspx?cat=riding gear");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("display_product.aspx?cat=acessories");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("display_product.aspx?cat=luggage");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("display_product.aspx?cat=oils");
        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addtocart.aspx");
        }
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
       






        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("Addtocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
        }
        
       

        protected void sidadds(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://scramblerducati.com/en/bike/1100-sport-pro?_ga=2.54834856.221023132.1625401970-404577699.1625401970");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.facebook.com");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("customercare.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin/register.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("map.aspx");
        }
    }
}
