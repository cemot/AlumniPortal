Imports System.Data
Imports System.Data.SqlClient
Partial Class AlumniProfile
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        If (IsPostBack = False) Then
            Dim cmd As New SqlCommand("select Name,Address,[Register No],[Joining Date],[Email ID],DOB,[Contact No],Gender,Qualification,[Works At],Designation from OldRegister where UserName='" + Session("uname") + "'", con)
            Dim dr As SqlDataReader = cmd.ExecuteReader()
            dr.Read()
            If (dr.HasRows = True) Then
                txtname.Text = dr(0)
                txtadd.Text = dr(1)
                txtrno.Text = dr(2)
                txtjoindate.Text = dr(3)
                txtemail.Text = dr(4)
                txtdob.Text = dr(5)
                txtcno.Text = dr(6)
                txtgender.Text = dr(7)
                txtqual.Text = dr(8)
                txtwork.Text = dr(9)
                txtdesig.Text = dr(10)
            Else
                MsgBox("Sorry... No record found")
            End If

            dr.Close()
        End If
        con.Close()
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        con.Open()
        Dim cmd As New SqlCommand("update OldRegister set Name='" + txtname.Text + "',Address='" + txtadd.Text + "',[Register No]='" + txtrno.Text + "',[Joining Date]='" + txtjoindate.Text + "',[Email ID]='" + txtemail.Text + "',DOB='" + txtdob.Text + "',[Contact No]='" + txtcno.Text + "',Gender='" + txtgender.Text + "',Qualification='" + txtqual.Text + "',[Works At]='" + txtwork.Text + "',Designation='" + txtdesig.Text + "' where UserName='" + Session("uname") + "'", con)
        cmd.ExecuteNonQuery()
        Label12.Visible = True
        con.Close()
    End Sub

    Protected Sub lbpicchange_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbpicchange.Click
        FileUpload1.Visible = True
        btnsave.Visible = True
    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        con.Open()
        If (FileUpload1.HasFile = True) Then
            FileUpload1.SaveAs(Server.MapPath("~\\photos\\" & FileUpload1.FileName))
        End If
        Dim cmd As New SqlCommand("update OldRegister set Picture='" + FileUpload1.FileName + "' where UserName='" + Session("uname") + "'", con)
        cmd.ExecuteNonQuery()
        Response.Redirect("AlumniProfile.aspx")
        con.Close()
    End Sub
End Class
