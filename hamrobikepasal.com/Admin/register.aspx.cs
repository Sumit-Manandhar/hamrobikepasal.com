using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace hamrobikepasal.com.Admin
{
    public partial class register : System.Web.UI.Page
    {
        string strConn = ConfigurationManager.ConnectionStrings["project_hamrobikepasal_productConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(strConn))
            {
                SqlCommand comd = new SqlCommand("INSERT INTO allroles( username, email, password, roles)VALUES('" + TextBox1.Text + "','" +TextBox3.Text + " ',' "+ TextBox2.Text + "','" + DropDownList1.SelectedValue + "')", con);

                con.Open();
                comd.ExecuteNonQuery();

            }

            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            DropDownList1.SelectedValue = null;
            Label1.Text = "Registered Susscessfully..";

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