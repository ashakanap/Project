using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Patient_Appointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {

            string fileexten = System.IO.Path.GetExtension(FileUpload1.FileName);
            if(fileexten.ToLower()==".pdf")
            {
             string fp = FileUpload1.FileName;
             FileUpload1.SaveAs(Server.MapPath("~/Report/" + fp));
             Label1.Text = "Upload Successfully";
             TextBox9.Text = "~/Report/" + fp;

            }

        else
        {
            Label1.Text = "Allow only pdf";
        }
        }
      else
        {
            Label1.Text = "Please Upload file";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)

    {
        //string filename=FileUpload1.FileName;
        //string filelocation="Report/";
        //string filepath=System.IO.Path.Combine(filelocation,filename);
       
        string name=TextBox1.Text,age=TextBox2.Text,dob=TextBox3.Text,Blood=TextBox4.Text,address=TextBox5.Text,mbl=TextBox6.Text,email=TextBox7.Text,Dop=TextBox8.Text;

        SqlConnection con = new SqlConnection("Data Source=siddhsonu;Initial Catalog=DoctorAppointment;Integrated Security=True");
        con.Open();
        //SqlCommand cmd = new SqlCommand("Exec INSERT_DATA '" + name + "','" + age + "''" + dob + "','" + Blood + "','" + address + "','" + mbl + "','" + email + "','" + Dop + "','" + TextBox9.Text + "'", con);



        SqlCommand cmd = new SqlCommand("Insert into TBL_Appointment(Name,Age,DOB,Blood_Group,Address,Mobile_No,Email,Date_of_Appointment,Report)values(@nm,@age,@dob,@blood,@add,@mbl,@email,@doa,@report)", con);
        cmd.Parameters.AddWithValue("@nm", TextBox1.Text);
        cmd.Parameters.AddWithValue("@age", TextBox2.Text);
        cmd.Parameters.AddWithValue("@dob", TextBox3.Text);
        cmd.Parameters.AddWithValue("@blood", TextBox4.Text);
        cmd.Parameters.AddWithValue("@add", TextBox5.Text);
        cmd.Parameters.AddWithValue("@mbl", TextBox6.Text);
        cmd.Parameters.AddWithValue("@email", TextBox7.Text);
        cmd.Parameters.AddWithValue("@doa", TextBox8.Text);
        cmd.Parameters.AddWithValue("@report", TextBox9.Text);
        cmd.ExecuteNonQuery();
        con.Close();


        
    }
}


