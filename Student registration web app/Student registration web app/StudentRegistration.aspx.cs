using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Student_registration_web_app
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Database Path");
        protected void Page_Load(object sender, EventArgs e)
        {
            StudentInfo();
        }
        void StudentInfo()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * from Students", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgStudents.DataSource = dt;
            dgStudents.DataBind();
            con.Close();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into [Students] (ID,_Name,Surname,StudentID,Gender,Email,PhoneNumber,PlaceOfBirth,DateOfBirth) values('" + txtID.Text + "','" + txtName.Text + "','" + txtSurname.Text + "','" + txtStudenID.Text + "','" + ddlGender.Text + "','" + txtMail.Text + "','" + txtPhoneNumber.Text + "','" + txtPlaceBirth.Text + "','" + txtDateBirth.Text + "')", con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            StudentInfo();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from [Students] where ID = @ID ", con);
            cmd.Parameters.AddWithValue("@ID", int.Parse(txtSearch.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            StudentInfo();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Update [Students] set _Name=@_Name, Surname=@Surname, StudentID=@StudentID, Gender=@Gender, Email=@Email, PhoneNumber=@PhoneNumber, PlaceOfBirth=@PlaceOfBirth, DateOfBirth=@DateOfBirth where ID = @ID", con);
            cmd.Parameters.AddWithValue("@ID", int.Parse(txtID.Text));
            cmd.Parameters.AddWithValue("@_Name", (txtName.Text));
            cmd.Parameters.AddWithValue("@Surname", (txtSurname.Text));
            cmd.Parameters.AddWithValue("@StudentID", int.Parse(txtStudenID.Text));
            cmd.Parameters.AddWithValue("@Gender", (ddlGender.Text));
            cmd.Parameters.AddWithValue("@Email", (txtMail.Text));
            cmd.Parameters.AddWithValue("@PhoneNumber", int.Parse(txtPhoneNumber.Text));
            cmd.Parameters.AddWithValue("@PlaceOfBirth", (txtPlaceBirth.Text));
            cmd.Parameters.AddWithValue("@DateOfBirth", txtDateBirth.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            StudentInfo();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from [Students] where ID like '%" + txtSearch.Text + "%'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgStudents.DataSource = dt;
            dgStudents.DataBind();
            con.Close();
        }
    }
}