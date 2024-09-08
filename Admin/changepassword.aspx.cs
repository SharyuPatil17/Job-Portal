using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_changepassword : System.Web.UI.Page
{
    public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["JPOTY"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchangepass_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update admin set apassword='" + txtpass2.Text + "' where aname='"+txtusername.Text+"'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Changepassword", "<Script language='javascript'>alert('Password changed successfully')</script>");

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtusername.Text = " ";
        txtpass1.Text = " ";
        txtpass2.Text= " ";

    }
}