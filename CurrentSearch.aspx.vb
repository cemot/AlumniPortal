Imports System.Data
Imports System.Data.SqlClient
Partial Class CurrentSearch
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        con.Open()

        Dim cd As New SqlCommand("select * from CurrentReg where Name='" + GridView1.SelectedRow.Cells(1).Text + "'", con)
        Dim dr As SqlDataReader = cd.ExecuteReader()
        dr.Read()

        Panel2.Visible = True
        txtname1.Text = dr(0)
        txtrno.Text = dr(1)
        txtadd.Text = dr(2)
        txtemail.Text = dr(3)
        txtphone.Text = dr(5)
        txtdob.Text = dr(6)
        txtclass.Text = dr(7)
        txtuname.Text = dr(4)
        dr.Close()

        con.Close()
    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        con.Open()

        If (txtname.Text = "") Then
            MsgBox("Enter the name to be searched")
        Else
            Dim da As New SqlDataAdapter("select Name,Address from CurrentReg where Name like '" + txtname.Text + "%' and [Current Student]='yes'", con)
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
End Class
