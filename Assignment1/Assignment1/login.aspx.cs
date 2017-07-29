using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Assignment1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
          SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                string checkUser = "select count(*) from [Table] where UserName='" + txtUserName.Text + "'";
                SqlCommand cmd = new SqlCommand(checkUser, con);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                con.Close();
               
                if (temp == 1)
                {
                    con.Open();
                    string checkPassword = "select Password from [Table] where UserName = '" + txtUserName.Text + "'";
                    SqlCommand passcmd = new SqlCommand(checkPassword, con);
                    string password = passcmd.ExecuteScalar().ToString().Replace(" ","");
                    if (password == txtPwd.Text)
                    {
                        Response.Redirect("EditPage.aspx");
                    }
                    else
                    {
                        Response.Write("Wrong Password");
                    }
                }
                else
                {
                    Response.Write("Wrong Username");
                }
            }  
    }
}