using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Comapny_notifications : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["JPOTY"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        string cname, date;
        cname = Session["coname"].ToString();
        date = System.DateTime.Now.ToShortDateString();
        cn.Open();
        cmd.CommandText = "insert into notifications values('"+cname +"','"+ drpname.Text +"','"+date+"','"+ txtsubject.Text +"','"+ txtcontent.Text +"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Login", "<script language='javascript'>alert('Notification send successfully')</script>");
    }
}