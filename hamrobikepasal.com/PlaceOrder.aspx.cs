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
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsCallback)
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
            Label4.Text = DateTime.Now.ToShortDateString();
            findorderid();

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
        public void findorderid()
        {
            string pass = "dpargaudanrn9803082801durganandpanjiyarkakadibaranepal";
            Random r = new Random();
            char[] mypass = new char[5];

            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];
            }
            String orderid;
            orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

            Label3.Text = orderid;
        }
        public void saveaddress()
        {

            String updatepass = "Insert into OrderAddress(orderid,address,mobilenumber)values('" + Label3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            String mycon1 = "Data source=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=project_hamrobikepasal_product;Data Source=DESKTOP-2H5N71E";
            SqlConnection s = new SqlConnection(mycon1);
            s.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = s;
            cmd1.ExecuteNonQuery();
            s.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                String updatepass = "insert into OrderDetails(orderid,sno,productid,productname,price,quantity,dateoforder)values('" + Label3.Text + "'," + dt.Rows[i]["sn"] + "," + dt.Rows[i]["id"] + ",'" + dt.Rows[i]["pro_name"] + "'," + dt.Rows[i]["price"] + "," + dt.Rows[i]["quantity"] + ",'" + Label4.Text + "')";
                String mycon1 = "Data source=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=project_hamrobikepasal_product;Data Source=DESKTOP-2H5N71E";
                SqlConnection s = new SqlConnection(mycon1);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                s.Close();
            }
            saveaddress();
            Response.Redirect("placedSuccessfuly.aspx");
        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

      
        protected void LinkButton10_Click(object sender, EventArgs e)
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}