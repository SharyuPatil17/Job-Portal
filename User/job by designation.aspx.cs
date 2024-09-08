using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_job_by_designation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a;
        Button btn = sender as Button;
        a = btn.CommandArgument;
        Session["DES"] = a.ToString();
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void btnapply_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:61192/JobPortal-Opportunities to you/User/login.aspx");
    }
}