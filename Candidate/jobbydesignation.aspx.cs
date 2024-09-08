using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Candidate_jobbydesignation : System.Web.UI.Page
{
     public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["JPOTY"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    int a;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count(*) from jobapplieddetails";
        cmd.Connection = cn;
        a = Convert.ToInt16(cmd.ExecuteScalar()) + 1;

        cn.Close();
        
    }
    protected void btnapply_Click(object sender, EventArgs e)
    {
        int jcode;
        string canname, date1;
        date1 = System.DateTime.Now.ToShortDateString();
        Button btn = sender as Button;
        jcode = Convert.ToInt32(btn.CommandArgument);
        canname = Session["cname"].ToString();
        date1 = System.DateTime.Now.ToShortDateString();


        cn.Open();
        cmd.CommandText = "insert into jobapplieddetails values(" + a + ",'" + canname + "'," + jcode + ",'" + date1 + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('successfully applied')</Script>");
 
    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a;
        Button btn = sender as Button;
        a = btn.CommandArgument;
        Session["DES"] = a.ToString();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}