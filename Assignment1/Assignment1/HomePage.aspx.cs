using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Assignment1
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/images/"));
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    string fileName = Path.GetFileName(filePath);
                    string text = "news";
                    files.Add(new ListItem(text, "~/images/" + fileName));
                }
                GridView1.DataSource = files;
                GridView1.DataBind();
            }
        }
    }
}