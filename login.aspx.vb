Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")
    Dim flag As Boolean
    Dim status As Integer

    Protected Sub btnsignin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsignin.Click
        con.Open()
        
        Dim cmd As New SqlCommand("select * from login where username='" + txtusername.Text + "' and password='" + txtpasswrd.Text + "'", con)
            Dim dr As SqlDataReader = cmd.ExecuteReader()
            dr.Read()
            If (dr.HasRows = True) Then
                flag = True
                Session("uname") = txtusername.Text
                status = dr(2)
                Session("status") = status
            Else
                Label4.Visible = True
            End If

            If (flag = True) Then
                If (status = 1) Then
                    Response.Redirect("admin1.aspx")
            ElseIf (status = 2 Or status = 3) Then
                Response.Redirect("AlumniHome.aspx")   'Alumni page or current student page
            End If
            End If

            con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
