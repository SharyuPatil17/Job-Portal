using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Comapny_addjobs : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["JPOTY"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into jobdetails values(" + txtid.Text + ",'" + txtcname.Text + "','" + txtjobname.Text + "','" + drplocation.Text + "','" + txtdesignation.Text + "','" + txtmin.Text + "','" + txtmax.Text + "','" + txtexperience.Text + "','" + txtqualification.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count(*) from jobdetails";
        cmd.Connection = cn;
        int cnt=Convert.ToInt16(cmd.ExecuteScalar())+1;
        txtid.Text = cnt.ToString();
        cn.Close();
     }
    protected void btnsave_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into jobdetails values(" + txtid.Text + ",'" +txtcname.Text+ "','" + txtjobname.Text + "','" + drplocation.Text + "','" + txtdesignation.Text + "','" + txtmin.Text + "','" + txtmax.Text + "','" + txtexperience.Text + "','" + txtqualification.Text + "')";
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update jobdetails set job_id= " + txtid.Text + ",company_name= '"+txtcname.Text+ "',job_name= '"+ txtjobname.Text +"',location= '"+drplocation.Text + "',job_designation= '" + txtdesignation.Text + "',job_minsalary= '" + txtmin.Text + "',job_maxsalary= '" + txtmax.Text + "',job_experience= '" + txtexperience.Text + "',job_qualification= '" + txtqualification.Text + "'where job_id="+txtid.Text+" ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();

    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from jobdetails where job_id=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtid.Text = " ";
        txtcname.Text = " ";
        txtjobname.Text = " ";
        drplocation.Text = " ";
        txtdesignation.Text=" ";
        txtmin.Text=" ";
        txtmax.Text = " ";
        txtexperience.Text = " ";
        txtqualification.Text = " ";


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtcname.Text = GridView1.SelectedRow.Cells[2].Text;
        txtjobname.Text = GridView1.SelectedRow.Cells[3].Text;
        drplocation.Text = GridView1.SelectedRow.Cells[4].Text;
        txtdesignation.Text = GridView1.SelectedRow.Cells[5].Text;
        txtmin.Text = GridView1.SelectedRow.Cells[6].Text;
        txtmax.Text = GridView1.SelectedRow.Cells[7].Text;
        txtexperience.Text = GridView1.SelectedRow.Cells[8].Text;
        txtqualification.Text = GridView1.SelectedRow.Cells[9].Text;


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}