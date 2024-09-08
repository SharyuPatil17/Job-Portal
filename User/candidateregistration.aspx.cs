using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class User_candidateregistration : System.Web.UI.Page
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
        cmd.CommandText="Select count(*)from candidatepersonaldetails";
        cmd.Connection=cn;
        int cnt=Convert.ToInt16(cmd.ExecuteScalar())+1;
        txtid.Text=cnt.ToString(); 
        cn.Close();



        cn.Open();
        cmd.CommandText = "insert into candidatelogin values('" + txtname.Text + "','" + txtpass1.Text + "'," + txtid.Text + ")";
        
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();


        cn.Open();
        cmd.CommandText="insert into candidatepersonaldetails values("+txtid.Text +",'"+txtfirstname.Text+"','"+txtaddress.Text+"','"+txtcity.Text+"','"+txtstate.Text+"',@p1,'"+txtdob.Text+"',"+txtcontact.Text+",'"+txtemail.Text+"','"+Image16.ImageUrl+"')";
        if (rdmale.Checked == true)
            cmd.Parameters.AddWithValue("@p1", rdmale.Text);
        else
            cmd.Parameters.AddWithValue("@p1", rdfemale.Text);
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        
        
        cn.Open();
        cmd.CommandText = "insert into candidateeducationalregistration values(" + txtid.Text + ",'" + txtssc.Text + "','" + txtgradessc.Text + "','" + txthsc.Text + "','" + txtgradehsc.Text + "','" + txtgraduation.Text + "','" + txtgradegraducation.Text + "','" + txtspgraduation.Text + "','" + txtspgraduation.Text + "','" + txtgradepostgraduation.Text + "','" + txtsppostgraduation.Text + "','" + txtphd.Text + "','" + txtgradephd.Text + "','" + txtspphd.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        cn.Open();
        cmd.CommandText = "insert into candidateprofession values(" + txtid.Text + ",'" + txtexperience.Text + "','" + txtcompanyname.Text + "','" + txtdesignation.Text + "','" + txtsalary.Text + "','" + txtskills.Text + "','"+txtresume.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Information submitted successfully')</script>");


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
        //if (fuphoto.HasFile == true)
        //{
        //    fuphoto.SaveAs(Server.MapPath("~\\Images\\" + fuphoto.FileName));
        //    Image16.ImageUrl = "~\\Images\\" + fuphoto.FileName;
        //}
    }
    protected void txtsphsc_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnupload11_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile == true)
        {
            FileUpload2.SaveAs(Server.MapPath("~\\Images\\" + FileUpload2.FileName));
            Image16.ImageUrl = "~\\Images\\" + FileUpload2.FileName;
        }

    }
}