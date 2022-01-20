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
using System.IO;

namespace hamrobikepasal.com.Admin
{
    public partial class add_products : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["project_hamrobikepasal_productConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string txtone = Convert.ToString(TextBox1.Text);
            string txttwo = Convert.ToString(TextBox2.Text);
            string txtthree = Convert.ToString(TextBox3.Text);
            string txtfour = Convert.ToString(DropDownList1.SelectedValue);


            if (FileUpload1.HasFile)
            {
                string strname = FileUpload1.PostedFile.FileName;

               string filePath= Server.MapPath(@"~/images/" + strname);
                FileUpload1.SaveAs(filePath);

                using(SqlConnection con=new SqlConnection(conn))
                {
                    string commandText = "insert into product(Pro_name, Pro_image,Pro_desc, Price, Category)VALUES('" + txtone + "','images/" + strname + "','" + txttwo + "','" + txtthree + "','" + txtfour + "')";
                    SqlCommand cmd = new SqlCommand(commandText, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }


               

                
                
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();
            FormsAuthentication.SignOut();
            Response.Redirect("~/default.aspx");
        }
    }
}