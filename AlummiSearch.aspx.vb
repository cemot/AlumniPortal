Imports System.Data
Imports System.Data.SqlClient
Partial Class AlummiSearch
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        con.Open()

        If (txtname.Text = "") Then
            MsgBox("Enter the name to be searched")
        Else
            Dim da As New SqlDataAdapter("select Name,Address from OldRegister where Name like '" + txtname.Text + "%' and status='yes'", con)
            Dim ds As New DataSet
            da.Fill(ds, "reg")
            If (ds.Tables(0).Rows.Count > 0) Then
                GridView1.DataSource = ds
                GridView1.DataBind()
            Else
                GridView1.DataSource = Nothing
                GridView1.DataBind()
                Response.Write("<script>alert('No match found...!')</script>")
                Panel2.Visible = False
            End If

        End If

        
        con.Close()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        con.Open()
        If (IsPostBack = True) Then
            Dim cmd As New SqlCommand("select * from OldRegister where Name='" + GridView1.SelectedRow.Cells(1).Text + "'", con)
            Dim dr As SqlDataReader = cmd.ExecuteReader()
            dr.Read()
            Panel2.Visible = True

            txtname1.Text = dr(0)
            txtadd.Text = dr(1)
            txtdob.Text = dr(7)
            txtemail.Text = dr(6)
            txtgender.Text = dr(9)
            txtcno.Text = dr(8)
            txtqual.Text = dr(10)
            txtwork.Text = dr(11)
            txtdesig.Text = dr(12)
        End If
        con.Close()
    End Sub
End Class
