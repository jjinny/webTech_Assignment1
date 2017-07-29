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
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                string insertQuery = "insert into [Feedback] (comment,feedback) values (@comments,@feedbacks)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@comments", TextBox1.Text);
                cmd.Parameters.AddWithValue("@feedbacks", TextBox2.Text);
                cmd.ExecuteNonQuery();
                Response.Write("Thank you for your comments and feedbacks");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}