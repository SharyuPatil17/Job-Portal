using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_contactus : System.Web.UI.Page
{
    public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["JPOTY"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="insert into enquiry values('"+txtname.Text+"','"+txtsubject.Text+"','"+txtmessage.Text+"')";
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "enquiry", "<Script language='javascript'>alert(' Enquiry submitted')</script>");
    }
}