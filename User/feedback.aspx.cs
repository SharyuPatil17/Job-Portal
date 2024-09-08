using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["JPOTY"].ConnectionString);
    SqlCommand cmd=new SqlCommand();
    SqlDataReader dr;
    DataSet ds=new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="insert into feedback values('"+txtname.Text+"',"+txtcontact.Text+",'"+txtemail_id.Text+"','"+txtmessage.Text+"')";
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "feedback", "<Script language='javascript'>alert('Feedback submitted')</script>");
    }
    protected void txtemail_id_TextChanged(object sender, EventArgs e)
    {

    }
}