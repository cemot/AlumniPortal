Imports System.Data
Imports System.Data.SqlClient
Partial Class CurrentProfile
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        If (IsPostBack = False) Then
            Dim cmd As New SqlCommand("select Name,[Reg No],Address,[Email ID],[Phone No],DOB,Class from CurrentReg where UserName='" + Session("uname") + "'", con)
            Dim dr As SqlDataReader = cmd.ExecuteReader()
            dr.Read()
            If (dr.HasRows = True) Then
                txtname.Text = dr(0)
                txtrno.Text = dr(1)
                txtadd.Text = dr(2)
                txtemail.Text = dr(3)
                txtphone.Text = dr(4)
                txtdob.Text = dr(5)
                txtclass.Text = dr(6)
            Else
                MsgBox("Sorry... No record found")

            End If
            
            dr.Close()

        End If
        con.Close()
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        con.Open()
        Dim cmd As New SqlCommand("update CurrentReg set Name='" + txtname.Text + "',Address='" + txtadd.Text + "',[Reg No]='" + txtrno.Text + "',[Phone No]='" + txtphone.Text + "',[Email ID]='" + txtemail.Text + "',DOB='" + txtdob.Text + "',Class='" + txtclass.Text + "' where UserName='" + Session("uname") + "'", con)
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
        Dim cmd As New SqlCommand("update CurrentReg set Picture='" + FileUpload1.FileName + "' where UserName='" + Session("uname") + "'", con)
        cmd.ExecuteNonQuery()
        Response.Redirect("CurrentProfile.aspx")
        con.Close()
    End Sub
End Class
