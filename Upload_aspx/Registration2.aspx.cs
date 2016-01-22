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

namespace Upload_aspx
{
    public partial class Registration2 : System.Web.UI.Page
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
            if (Session["username"] != null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //Pridobi email
            var email = TextBoxEmail.Text;
            //Kriptira geslo in ga shrani
            var password = CalculateMD5Hash(TextBoxPass.Text);

            //Poveže se na podatkovno bazo
            string constr = ConfigurationManager.ConnectionStrings["baza"].ConnectionString;

            int id = 0;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("insert_user"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("email", email);
                        cmd.Parameters.AddWithValue("pass", password);
                        cmd.Connection = con;
                        con.Open();
                        id = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();

                    }
                }

                string message = string.Empty;

                if (id == -1)
                {
                    message = "Uporabnik že obstaja";
                }
                else
                {
                    message = "Registracija uspešna <a href=login2.aspx>Vpis</a>";
                    Response.Redirect("Login2.aspx");
                }
                Label1.Visible = true;
                Label1.Text = message;
            }

        }

        
    }
}