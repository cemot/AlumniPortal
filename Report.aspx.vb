Imports System.Data
Imports System.Data.SqlClient
Partial Class Report
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub btnregAlumini_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregAlumini.Click
        GridView1.Visible = True
        lbltotal.Visible = False
        txttotal.Visible = False

        con.Open()

        Dim da As New SqlDataAdapter("select Name,[Contact No],Address,[Email ID] from OldRegister where status='yes' and datediff(day, [Register Date], GETDATE()) <=30 ", con)
        Dim ds As New DataSet
        da.Fill(ds, "oldreg")
        If (ds.Tables(0).Rows.Count = 0) Then
            GridView1.DataSource = Nothing
            GridView1.DataBind()
            MsgBox("No search found")
        Else
            GridView1.DataSource = ds
            GridView1.DataBind()

        End If

        con.Close()
    End Sub

    Protected Sub btntotal_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btntotal.Click
        GridView1.Visible = False
        lbltotal.Visible = True
        txttotal.Visible = True

        con.Open()

        Dim da As New SqlDataAdapter("select * from OldRegister where status='yes'", con)
        Dim dt As New DataTable
        da.Fill(dt)
        txttotal.Text = dt.Rows.Count

        con.Close()
    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        GridView1.Visible = True
        lbltotal.Visible = False
        txttotal.Visible = False

        con.Open()

        Dim da As New SqlDataAdapter("select Name,[Contact No],Address,[Email ID] from OldRegister where Gender='" + rblgender.SelectedValue + "' and status='yes'", con)
        Dim ds As New DataSet
        da.Fill(ds, "oldreg")
        If (ds.Tables(0).Rows.Count = 0) Then
            GridView1.DataSource = Nothing
            GridView1.DataBind()
            MsgBox("No search found")
        Else
            GridView1.DataSource = ds
            GridView1.DataBind()

        End If

        con.Close()
    End Sub
End Class
