using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using MySql.Data.Types;
using MySql.Data.MySqlClient;
namespace Upload_aspx
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from UserData where UserName='"+ TextBoxUN.Text +"'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if (temp==1)
                {
                    Response.Write("Uporabnik že obstaja");
                }
              
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertquery = "insert into UserData (UserName,Email,Password,guid) values (@Uname ,@Email ,@Password,@GUID)";
            SqlCommand com = new SqlCommand(insertquery, conn);
                
                com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
                com.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
                com.Parameters.AddWithValue("@Password", TextBoxPass.Text);
                com.Parameters.AddWithValue("@GUID", newGUID.ToString());

                com.ExecuteNonQuery();
                Response.Redirect("Login1.aspx");
                Response.Write("Registracija je uspešna");
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error:"+ex.ToString());
            }
        }

        protected void TextBoxPass_TextChanged(object sender, EventArgs e)
        {

        }
    }
}