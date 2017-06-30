Imports System.Data
Imports System.Data.SqlClient
Partial Class CurrentReg
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            Dim i As Integer
            For i = 1 To 31
                ddldate.Items.Add(i)
            Next

            For i = 1 To 12
                ddlmonth.Items.Add(i)
            Next

            Dim y As Integer
            y = Date.Now.Year
            For i = 1980 To y
                ddlyear.Items.Add(i)
            Next
        End If
    End Sub

    Protected Sub txtusername_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtusername.TextChanged
        con.Open()

        'Dim cmd As New SqlCommand("select l.UserName,o.UserName,c.UserName from login l,OldRegister o,CurrentReg c where l.UserName='" + txtusername.Text + "' or o.UserName='" + txtusername.Text + "' or c.UserName='" + txtusername.Text + "'", con)
        Dim cmd As New SqlCommand("select l.UserName from login l,OldRegister o where l.UserName=o.UserName  and l.UserName='" + txtusername.Text + "' or o.UserName='" + txtusername.Text + "'", con)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        dr.Read()
        If (dr.HasRows = True) Then
            lbluser.Visible = True
        Else
            lbluser.Visible = False
        End If

        con.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()

        Dim dob As String = ddldate.SelectedValue + "/" + ddlmonth.SelectedValue + "/" + ddlyear.SelectedValue

        If (lbluser.Visible = False) Then
            Dim cmd As New SqlCommand("insert into CurrentReg(Name,[Reg No],Address,[Email ID],UserName,[Phone No],DOB,Class,Picture,[Current Student]) values('" + txtname.Text + "','" + txtrno.Text + "','" + txtadd.Text + "','" + txtemail.Text + "','" + txtusername.Text + "','" + txtphone.Text + "','" + dob + "','" + txtclass.Text + "','','yes')", con)
            cmd.ExecuteNonQuery()

            Dim cd As New SqlCommand("insert into login values('" + txtusername.Text + "','" + txtrno.Text + "','3')", con)
            cd.ExecuteNonQuery()

            Response.Write("<script>alert('Registered successfully...')</script>")
            Session("name") = txtname.Text
            Session("rno") = txtrno.Text
            ' Session("dob") = dob

            txtname.Text = String.Empty
            txtadd.Text = String.Empty
            txtrno.Text = String.Empty
            txtusername.Text = String.Empty
            txtemail.Text = String.Empty
            txtphone.Text = String.Empty
            txtclass.Text = String.Empty

            ddldate.SelectedIndex = -1
            ddlmonth.SelectedIndex = -1
            ddlyear.SelectedIndex = -1

            Response.Redirect("CurrentDetails.aspx")
        End If

        con.Close()
    End Sub
End Class
