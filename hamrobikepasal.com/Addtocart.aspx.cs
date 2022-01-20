using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace hamrobikepasal.com
{
        public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sn");
                dt.Columns.Add("id");
                dt.Columns.Add("Pro_name");
                dt.Columns.Add("quantity");
                dt.Columns.Add("Price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("Pro_image");
                dt.Columns.Add("Pro_desc");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        string mycon = "Data source=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=project_hamrobikepasal_product;Data Source=DESKTOP-2H5N71E";
                        SqlConnection scon = new SqlConnection(mycon);
                        string myquery = "select * from product where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sn"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["Pro_name"] = ds.Tables[0].Rows[0]["Pro_name"].ToString();
                        dr["Pro_image"] = ds.Tables[0].Rows[0]["Pro_image"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["Pro_desc"] = ds.Tables[0].Rows[0]["Pro_desc"].ToString();

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        

                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Addtocart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        string mycon = "data source=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=project_hamrobikepasal_product;Data Source=DESKTOP-2H5N71E";
                        SqlConnection scon = new SqlConnection(mycon);
                        string myquery = "select * from product where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sn"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["Pro_name"] = ds.Tables[0].Rows[0]["Pro_name"].ToString();
                        dr["Pro_image"] = ds.Tables[0].Rows[0]["Pro_image"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["Pro_desc"] = ds.Tables[0].Rows[0]["Pro_desc"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;

                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Addtocart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    if (GridView1.Rows.Count > 0)
                    {

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }
            }

            Label2.Text = GridView1.Rows.Count.ToString();
        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;

            }
            return gtotal;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - i; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;

                sr = Convert.ToInt32(dt.Rows[i]["id"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["id"] = i;
                dt.AcceptChanges();

            }
            Session["buyitems"] = dt;
            Response.Redirect("Addtocart.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("EditOrder.aspx?sn=" + GridView1.SelectedRow.Cells[0].Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlaceOrder.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("customercare.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin/register.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("map.aspx");
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.facebook.com");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com");
        }
    }
}