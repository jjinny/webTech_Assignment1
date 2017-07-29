using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Assignment1
{
    public partial class AddMailList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                string checkEmail = "select count(*) from [MailingList] where EmailAddress ='" + Email.Text + "'";
                SqlCommand cmd = new SqlCommand(checkEmail, con);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("This email adress already exists.");
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                string insertQuery = "insert into [MailingList] (UserName,EmailAddress) values (@name,@email)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@name", name.Text);
                cmd.Parameters.AddWithValue("@email", Email.Text);
                cmd.ExecuteNonQuery();
                Response.Write("Join our mailing list successfully");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}