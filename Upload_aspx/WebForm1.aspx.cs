using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
namespace Upload_aspx
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mapa = (Path.Combine(HttpContext.Current.Server.MapPath("~/Content/" + Session["user_id"].ToString() + "/")));
            //  + Session["user_id"].ToString() + "/"
            // string userid = (string)(Session["user_id"]);
            if (!Directory.Exists(mapa))
            {
                Directory.CreateDirectory(mapa);
            }
            if (FileUpload1.HasFile)
            {
              
                if (Convert.ToInt64(FileUpload1.PostedFile.ContentLength) < 10000000)
                {
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Content/" + Session["user_id"].ToString() + "/") + FileUpload1.FileName);
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Datoteka mora biti manjša od 9 MB";
                   
                }
            }
            
                Label1.Visible = false;
                DataTable dt = new DataTable();
                dt.Columns.Add("File", typeof(string));
                dt.Columns.Add("Size", typeof(string));
                dt.Columns.Add("Type", typeof(string));

                foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Content/" + Session["user_id"].ToString() + "/")))
                {
                    FileInfo fi = new FileInfo(strFile);
                    dt.Rows.Add(fi.Name, fi.Length, fi.Extension);

                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
            
            

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Content/") + e.CommandArgument);
                Response.End();
            }
        }
    }
}