using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_companylogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["JPOTY"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count(*)from companydetails";
        cmd.Connection = cn;
        int cnt = Convert.ToInt16(cmd.ExecuteScalar()) + 1;
        txtid.Text = cnt.ToString();
        cn.Close();
        cn.Open();
        cmd.CommandText="insert into companydetails values("+txtid.Text+",'"+txtcompany_name.Text+"','"+drpclocation.Text+"',"+txtcompany_contact.Text+",'"+txtcompany_email.Text+"','"+drpcompany_type.Text+"','"+txtdescription.Text+"','"+txtcompany_website.Text+"','"+txtpass.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

    }
}