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
    public partial class EditOrder : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

            }
            else
            {
                if (Request.QueryString["sn"] != null)
                {
                    dt = (DataTable)Session["buyitems"];

                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        int sr;
                        int sr1;
                        sr = Convert.ToInt32(dt.Rows[i]["sn"].ToString());
                        Label3.Text = Request.QueryString["sn"];
                        Label4.Text = sr.ToString();
                        sr1 = Convert.ToInt32(Label3.Text);


                        if (sr == sr1)
                        {
                            Label3.Text = dt.Rows[i]["sn"].ToString();
                            Label4.Text = dt.Rows[i]["id"].ToString();
                            Label5.Text = dt.Rows[i]["Pro_name"].ToString();
                            DropDownList1.Text = dt.Rows[i]["quantity"].ToString();
                            Label6.Text = dt.Rows[i]["Price"].ToString();
                            Label7.Text = dt.Rows[i]["totalprice"].ToString();

                            break;
                        }
                    }
                }
                else
                {

                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int q;
            q = Convert.ToInt32(DropDownList1.Text);
            int cost;
            cost = Convert.ToInt32(Label6.Text);

            int totalcost;
            totalcost = cost * q;

            Label7.Text = totalcost.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                sr = Convert.ToInt32(dt.Rows[i]["sn"].ToString());
                sr1 = Convert.ToInt32(Label3.Text);

                if (sr == sr1)
                {
                    dt.Rows[i]["sn"] = Label3.Text;
                    dt.Rows[i]["id"] = Label4.Text;
                    dt.Rows[i]["Pro_name"] = Label5.Text;
                    dt.Rows[i]["quantity"] = DropDownList1.Text;
                    dt.Rows[i]["Price"] = Label6.Text;
                    dt.Rows[i]["totalprice"] = Label7.Text;
                    dt.AcceptChanges();

                    break;

                }
            }
            Response.Redirect("Addtocart.aspx");
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
    }
   
}