using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Candidate_manageprofile : System.Web.UI.Page
{
    public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["JPOTY"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update candidatelogin set password=" + txtpass1.Text + "where jobseekerid="+txtid.Text+"";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        
        cn.Open();
        cmd.CommandText = "update candidatepersonaldetails set name=" + txtfirstname.Text + ",address=" + txtaddress.Text + ",city=" + txtcity.Text + ",state=" + txtstate.Text + ",dob=" + txtdob.Text + ",contactno=" + txtcontact.Text + ",emailid=" + txtemail.Text + ",photo=" + Image16.ImageUrl + "where jobseekerid=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        cn.Open();
        cmd.CommandText = "update candidateeducationalregistration set SSC_institute=" + txtssc.Text + ",SSC_percent=" + txtgradessc.Text + ",HSC_institute=" + txthsc + ",HSC_percent=" + txtgradehsc.Text + ",Grad_institute=" + txtgraduation.Text + ",Grad_percent=" + txtgradegraducation.Text + ",Grad_sp=" + txtspgraduation.Text + ",Postgrad_institute=" + txtspgraduation.Text + ",Postgrad_percent=" + txtgradepostgraduation.Text + ",Postgrad_sp=" + txtsppostgraduation.Text + ",PHD_institute=" + txtphd.Text + ",PHD_percent=" + txtgradephd.Text + ",PHD_sp=" + txtspphd.Text + " where jobseekerid=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        cn.Open();
        cmd.CommandText = "update candidateprofession set experience=" + txtexperience.Text + ",company_name=" + txtcompanyname.Text + ",designation=" + txtdesignation.Text + ",salary=" + txtsalary.Text + ",skills=" + txtskills.Text + "where jobseekerid=" + txtid.Text + "";
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();



         
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Information updated successfully')</script>");


    }
    protected void btnupload2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            txtresume.Text = "~\\Images\\" + FileUpload1.FileName;
        }
    }
    protected void btnupload1_Click(object sender, EventArgs e)
    {
        if (fuphoto.HasFile  == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + fuphoto.FileName));
            Image16.ImageUrl = "~\\Images\\" + fuphoto.FileName;
        }
    
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text=GridView1.SelectedRow.Cells[8].Text;
        txtpass1.Text = GridView1.SelectedRow.Cells[9].Text;
        txtfirstname.Text = GridView1.SelectedRow.Cells[24].Text;
        txtaddress.Text = GridView1.SelectedRow.Cells[25].Text;
        txtcity.Text = GridView1.SelectedRow.Cells[26].Text;
        txtstate.Text = GridView1.SelectedRow.Cells[27].Text;
       // rdfemale.Text = GridView1.SelectedRow.Cells[28].Text;
       // rdmale.Text = GridView1.SelectedRow.Cells[28].Text;
        txtdob.Text = GridView1.SelectedRow.Cells[29].Text;
        txtcontact.Text = GridView1.SelectedRow.Cells[30].Text;
        txtemail.Text = GridView1.SelectedRow.Cells[31].Text;
        txtssc.Text = GridView1.SelectedRow.Cells[11].Text;
        txtgradessc.Text = GridView1.SelectedRow.Cells[12].Text;
        txthsc.Text = GridView1.SelectedRow.Cells[13].Text;
        txtgradehsc.Text = GridView1.SelectedRow.Cells[14].Text;
        txtgraduation.Text = GridView1.SelectedRow.Cells[15].Text;
        txtgradegraducation.Text=GridView1.SelectedRow.Cells[16].Text;
        txtspgraduation.Text=GridView1.SelectedRow.Cells[17].Text;
        txtpostgraduation.Text=GridView1.SelectedRow.Cells[18].Text;
        txtgradepostgraduation.Text=GridView1.SelectedRow.Cells[19].Text;
        txtsppostgraduation.Text=GridView1.SelectedRow.Cells[20].Text;
        txtphd.Text=GridView1.SelectedRow.Cells[21].Text;
        txtgradephd.Text=GridView1.SelectedRow.Cells[22].Text;
        txtspphd.Text = GridView1.SelectedRow.Cells[23].Text;
        txtexperience.Text=GridView1.SelectedRow.Cells[2].Text;
        txtcompanyname.Text=GridView1.SelectedRow.Cells[3].Text;
        txtdesignation.Text=GridView1.SelectedRow.Cells[4].Text;
        txtsalary.Text=GridView1.SelectedRow.Cells[5].Text;
        txtskills.Text = GridView1.SelectedRow.Cells[6].Text;
       // txtresume.Text = GridView1.SelectedRow.Cells[7].Text;
        
        
        
    }
}