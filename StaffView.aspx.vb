Imports System.Data
Imports System.Data.SqlClient
Partial Class StaffView
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        Dim da As New SqlDataAdapter("select Name,[Email ID] from Staff", con)
        Dim ds As New DataSet()
        da.Fill(ds, "staff")
        If (ds.Tables(0).Rows.Count = 0) Then
            GridView1.DataSource = Nothing
            GridView1.DataBind()
        Else

            GridView1.DataSource = ds
            GridView1.DataBind()
        End If

        con.Close()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        con.Open()
        Panel1.Visible = True
        
        Dim cd As New SqlCommand("select * from Staff where [Email ID]='" + GridView1.SelectedRow.Cells(2).Text + "'", con)
        Dim dr As SqlDataReader = cd.ExecuteReader()
        dr.Read()

        txtname.Text = dr(1)
        txtcno.Text = dr(2)
        txtadd.Text = dr(3)
        txtemail.Text = dr(4)

        dr.Close()

        con.Close()
    End Sub
End Class
