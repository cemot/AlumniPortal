Imports System.Data
Imports System.Data.SqlClient
Partial Class CurrentDetails
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        con.Open()

        Dim dt As DateTime = DateTime.Now
        Dim year1 As Integer = dt.Year
        Dim month1 As Integer = dt.Month
        Dim day1 As Integer = dt.Day


        Dim cmd As New SqlCommand("insert into CurrentDetails([Register No],[Admission No],Name,[Fathers Name],[Mothers Name],DateJoin,MonthJoin,YearJoin) values('" + Session("rno") + "','" & txtadno.Text & "','" & txtname.Text & "','" & txtfname.Text & "','" & txtmname.Text & "','" & day1 & "','" & month1 & "','" & year1 & "')", con)
        cmd.ExecuteNonQuery()


        Dim slno, tcno As String
        Dim doa As String = ddldate.SelectedValue + "/" + ddlmonth.SelectedValue + "/" + ddlyear.SelectedValue
        Dim dob As String = ddldate1.SelectedValue + "/" + ddlmonth1.SelectedValue + "/" + ddlyear1.SelectedValue

        Dim cd As New SqlCommand("select top 1 SlNo from Transfer order by SlNo desc", con)
        Dim dr As SqlDataReader = cd.ExecuteReader()
        dr.Read()
        If (dr.HasRows = False) Then
            slno = 100

        Else
            slno = dr(0) + 1
        End If
        dr.Close()

        Dim cd1 As New SqlCommand("select top 1 TcNo from Transfer order by TcNo desc", con)
        Dim dr1 As SqlDataReader = cd1.ExecuteReader()
        dr1.Read()
        If (dr1.HasRows = False) Then
            tcno = "1"
        Else
            tcno = dr1(0) + 1
        End If
        dr1.Close()

        Dim cmd1 As New SqlCommand("insert into Transfer(SlNo,TcNo,[Admission No],[Register No],DOA,Name,Gender,[Fathers Name],[Mothers Name],Nationality,Religion,Caste,DOB_Fig,DOB_Words) values('" + slno + "','" + tcno + "','" & txtadno.Text & "','" + Session("rno") + "','" + doa + "','" & txtname.Text & "','" + rblgender.SelectedValue + "','" & txtfname.Text & "','" & txtmname.Text & "','" + txtnational.Text + "','" + txtreligion.Text + "','" + txtcaste.Text + "','" + dob + "','" + txtdobw.Text + "')", con)
        cmd1.ExecuteNonQuery()

        Response.Write("<script>alert('Details saved...')</script>")
        txtadno.Text = ""
        txtmname.Text = ""
        txtfname.Text = ""
        txtname.Text = ""
        txtnational.Text = ""
        txtreligion.Text = ""
        txtcaste.Text = ""
        txtdobw.Text = ""
        ddldate.SelectedIndex = -1
        ddlmonth.SelectedIndex = -1
        ddlyear.SelectedIndex = -1
        ddldate1.SelectedIndex = -1
        ddlmonth1.SelectedIndex = -1
        ddlyear1.SelectedIndex = -1

        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtname.Text = Session("name")


        If (IsPostBack = False) Then
            Dim i As Integer
            For i = 1 To 31
                ddldate.Items.Add(i)
                ddldate1.Items.Add(i)
            Next

            For i = 1 To 12
                ddlmonth.Items.Add(i)
                ddlmonth1.Items.Add(i)
            Next

            Dim y As Integer
            y = Date.Now.Year
            For i = 1980 To y
                ddlyear.Items.Add(i)
                ddlyear1.Items.Add(i)
            Next
        End If
    End Sub
End Class
