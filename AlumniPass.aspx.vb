Imports System.Data
Imports System.Data.SqlClient
Partial Class AlumniPass
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub txtcpass_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtcpass.TextChanged
        con.Open()

        Dim cmd As New SqlCommand("select Password from login where Password='" + txtcpass.Text + "'", con)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        dr.Read()
        If (dr.HasRows = True) Then
            lblpwerror.Visible = False
        Else
            lblpwerror.Visible = True
        End If

        con.Close()
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        con.Open()

        If (txtcpass.Text = "" Or txtnpass.Text = "" Or txtconfirm.Text = "") Then
            MsgBox("Please enter all fields")
        ElseIf (lblpwerror.Visible = True) Then
            MsgBox("Invalid Password...")
        Else
            Dim cd As New SqlCommand("update login set Password='" & txtnpass.Text & "' where UserName='" & Session("uname") & "' and Status='" & Session("status") & "'", con)
            cd.ExecuteNonQuery()

            Dim cd1 As New SqlCommand("update OldRegister set Password='" + txtnpass.Text + "' where UserName='" + Session("uname") + "'", con)
            cd1.ExecuteNonQuery()

            MsgBox("Your Password Has Been Changed...")
        End If

        con.Close()
    End Sub

    Protected Sub btnrefresh_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnrefresh.Click
        txtcpass.Text = ""
        txtnpass.Text = ""
        txtconfirm.Text = ""
        lblpwerror.Visible = False
    End Sub
End Class
