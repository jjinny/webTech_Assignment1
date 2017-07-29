using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace Assignment1
{
    public partial class EditPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DirectoryInfo d = new DirectoryInfo(MapPath("~/images/"));
            FileInfo[] r = d.GetFiles();
            DataTable dt = new DataTable();
            dt.Columns.Add("path");
            for (int i = 0; i < r.Length; i++)
            {
                DataRow row = dt.NewRow();
                row["path"] = "~/images/" + r[i].Name;
                dt.Rows.Add(row);
            }
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void btn_upload_Click(object sender, EventArgs e)
        {
            Boolean fileOk = false;
            if (pic_upload.HasFile)
            {
                string fileExtension = Path.GetExtension(pic_upload.FileName).ToLower();
                fileOk = IsImage(fileExtension);
                if (fileOk)
                {
                    if (pic_upload.PostedFile.ContentLength < 8192000)
                    {
                        string fileName = Path.GetFileName(pic_upload.PostedFile.FileName);
                        pic_upload.PostedFile.SaveAs(Server.MapPath("~/images/") + fileName);
                        Response.Redirect(Request.Url.AbsoluteUri);
                        lbl_pic.Text = "";
                    }
                    else
                    {
                        pic.ImageUrl = "";
                        lbl_pic.Text = "picture is too big！";
                    }
                }
                else
                {
                    pic.ImageUrl = "";
                    lbl_pic.Text = "wrong format！";
                }
            }
            else
            {
                pic.ImageUrl = "";
                lbl_pic.Text = "select a picture！";
            }
        }
        public bool IsImage(string str)
        {
            bool isimage = false;
            string thestr = str.ToLower();
            string[] allowExtension = { ".jpg", ".gif", ".bmp", ".png" };
            for (int i = 0; i < allowExtension.Length; i++)
            {
                if (thestr == allowExtension[i])
                {
                    isimage = true;
                    break;
                }
            }
            return isimage;
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            File.Delete(MapPath(e.CommandArgument.ToString()));
            Response.Write("Delete successfully!");
        }
    }
}