using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;
using System.Web.Security;

namespace hamrobikepasal.com
{
    public partial class login : System.Web.UI.Page
    {
        string srtConn = ConfigurationManager.ConnectionStrings["project_hamrobikepasal_productConnectionString"].ConnectionString;
        string str, Username, password;
        SqlCommand com;
        SqlDataAdapter sqlda;
        DataTable dt;
        int RowCount;
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(srtConn);
            con.Open();
            str = "select * from allroles";

            com = new SqlCommand(str);
            sqlda = new SqlDataAdapter(com.CommandText, con);
            dt = new DataTable();

            sqlda.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i <= RowCount; i++)
            {
                Username = dt.Rows[i]["Username"].ToString();
                password = dt.Rows[i]["Password"].ToString();

                if (Username == TextBox1.Text && password == TextBox2.Text)
                {
                    Session["Username"] = Username;

                    if (dt.Rows[i]["roles"].ToString() == "admin")
                    {
                        Response.Redirect("~/Admin/add_products.aspx");
                    }
                    if (dt.Rows[i]["roles"].ToString() == "user")
                    {
                        Response.Redirect("default.aspx");
                    }


                }

            }




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