using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Security.Cryptography;
using MySql.Data.MySqlClient;
using System.Text;
using System.IO;
namespace Upload_aspx
{
    public partial class Profil : System.Web.UI.Page
    {
        public string CalculateMD5Hash(string input)
        {
            // step 1, calculate MD5 hash from input
            MD5 md5 = System.Security.Cryptography.MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
            byte[] hash = md5.ComputeHash(inputBytes);

            // step 2, convert byte array to hex string
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }
            return sb.ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("index.aspx");
            }
        }
//izbris
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            //Kriptira geslo in ga shrani
            var password = CalculateMD5Hash(TextBox1.Text);
            var userid = Session["user_id"];
            //Poveže se na podatkovno bazo
            string constr = ConfigurationManager.ConnectionStrings["baza"].ConnectionString;

            int id = 0;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("delete_user"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("pass", password);
                        cmd.Parameters.AddWithValue("id1", userid);
                        cmd.Connection = con;
                        con.Open();
                        id = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();

                    }
                }

                string message = string.Empty;

                if (id == -1)
                {
                    message = "Napačno geslo";
                }
                else
                { //STARO
               
                    //   Directory.Delete(Server.MapPath("~/Content/" + Session["user_id"].ToString() + "/"));
                    //STARO
                    message = "Izbris uspešen";
                    DirectoryInfo di = new DirectoryInfo(Server.MapPath("~/Content/" + Session["user_id"].ToString() + "/"));

                    foreach (FileInfo file in di.GetFiles())
                    {
                        file.Delete();
                    }
                    foreach (DirectoryInfo dir in di.GetDirectories())
                    {
                        dir.Delete(true);
                    }
                    Directory.Delete(Server.MapPath("~/Content/" + Session["user_id"].ToString() + "/"));


                    Session.Abandon();
                    Response.Redirect("index.aspx");
                }
                Label1.Visible = true;
                Label1.Text = message;
            }
        }

        //sprememba gesla
        protected void Button2_Click(object sender, EventArgs e)
        {
          
            //Kriptira geslo in ga shrani
            var password = CalculateMD5Hash(TextBox3.Text);
            var newpassword = CalculateMD5Hash(TextBox5.Text);
            var userid = Session["user_id"];
            //Poveže se na podatkovno bazo
            string constr = ConfigurationManager.ConnectionStrings["baza"].ConnectionString;

            int id = 0;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("change_pass"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("newpass", newpassword);
                        cmd.Parameters.AddWithValue("pass", password);
                        cmd.Parameters.AddWithValue("id1", userid);
                        cmd.Connection = con;
                        con.Open();
                        id = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();

                    }
                }

                string message = string.Empty;

                if (id == -1)
                {
                    message = "Napačno geslo";
                }
                else
                {
                    message = "Sprememba uspešna";
                   
                }
                Label2.Visible = true;
                Label2.Text = message;
            }
        }
    }
}