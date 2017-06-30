Imports System.Data
Imports System.Data.SqlClient

Partial Class OldRegister
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        con.Open()

        Dim join As String = ddldate.SelectedValue + "/" + ddlmonth.SelectedValue + "/" + ddlyear.SelectedValue
        Dim dob As String = ddldate1.SelectedValue + "/" + ddlmonth1.SelectedValue + "/" + ddlyear1.SelectedValue

        If (lbluser.Visible = False) Then

            If (FileUpload1.HasFile = True) Then
                FileUpload1.SaveAs(Server.MapPath("~\\photos\\" & FileUpload1.FileName))
            End If

            Dim cmd As New SqlCommand("insert into OldRegister values('" + txtname.Text + "','" + txtadd.Text + "','" + txtrno.Text + "','" + join + "','" + txtuname.Text + "','" + txtpw.Text + "','" + txtemail.Text + "','" + dob + "','" + txtcno.Text + "','" + rblgender.SelectedValue + "','" + txtqual.Text + "','" + txtwork.Text + "','" + txtdesig.Text + "','" + Date.Now.Date + "','" + FileUpload1.FileName + "','no')", con)
            cmd.ExecuteNonQuery()

            Response.Write("<script>alert('Registered successfully...')</script>")
            
            txtname.Text = String.Empty
            txtadd.Text = String.Empty
            txtrno.Text = String.Empty
            txtuname.Text = String.Empty
            txtpw.Text = String.Empty
            txtemail.Text = String.Empty
            txtcno.Text = String.Empty
            txtqual.Text = String.Empty
            txtwork.Text = String.Empty
            txtdesig.Text = String.Empty
            ddldate.SelectedIndex = -1
            ddldate1.SelectedIndex = -1
            ddlmonth.SelectedIndex = -1
            ddlmonth1.SelectedIndex = -1
            ddlyear.SelectedIndex = -1
            ddlyear1.SelectedIndex = -1
            rblgender.SelectedValue = String.Empty

        End If
        con.Close()
    End Sub

    Protected Sub txtuname_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtuname.TextChanged
        con.Open()

        Dim cmd As New SqlCommand("select UserName from OldRegister where UserName='" + txtuname.Text + "'", con)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        dr.Read()
        If (dr.HasRows = True) Then
            lbluser.Visible = True
        Else
            lbluser.Visible = False
        End If

        con.Close()
    End Sub

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
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
