Imports System.Data
Imports System.Data.SqlClient
Partial Class Addevent
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        con.Open()
        Dim da As New SqlDataAdapter("select [Event ID],Title,Description,Location,[Event Date],Time from Event", con)
        Dim ds As New DataSet()
        da.Fill(ds, "reg")
        If (ds.Tables(0).Rows.Count = 0) Then
            GridView1.DataSource = Nothing
            GridView1.DataBind()
        Else

            GridView1.DataSource = ds
            GridView1.DataBind()
        End If
        
        con.Close()
    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        con.Open()

        Dim id As String

        Dim cmd1 As New SqlCommand("select [Event ID] from Event where len([Event ID])=(select max(len([Event ID])) from Event) order by [Event ID] desc", con)
        Dim dr As SqlDataReader = cmd1.ExecuteReader()
        dr.Read()
        If (dr.HasRows = False) Then
            id = "E1"
        Else
            id = dr(0)
            id = id.Substring(1)
            id = "E" & (id + 1)
        End If
        dr.Close()

        If (txttitle.Text = "" Or txtdescrip.Text = "" Or txtloc.Text = "" Or txtdate.Text = "" Or txttime.Text = "") Then
            MsgBox("Enter all details...")
        Else

            Dim cmd As New SqlCommand("insert into Event values('" + id + "','" + txttitle.Text + "','" + txtdescrip.Text + "','" + txtloc.Text + "','" + txtdate.Text + "','" + txttime.Text + "','" + ddlstatus.SelectedItem.ToString() + "')", con)
            cmd.ExecuteNonQuery()

            Response.Write("<script>alert('New Event Added...')</script>")

            txttitle.Text = String.Empty
            txtdescrip.Text = String.Empty
            txtloc.Text = String.Empty
            txttime.Text = String.Empty
            txtdate.Text = String.Empty
            ddlstatus.SelectedIndex = -1

            con.Close()

            Page_Load(sender, e)

        End If
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        con.Open()
        If (txttitle.Text = "" Or txtdescrip.Text = "" Or txtloc.Text = "" Or txtdate.Text = "" Or txttime.Text = "") Then
            MsgBox("Please Select Values through grid...")
        Else

            Dim cmd As New SqlCommand("update Event set Title='" + txttitle.Text + "',Description='" + txtdescrip.Text + "',Location='" + txtloc.Text + "',[Event Date]='" + txtdate.Text + "',Time='" + txttime.Text + "',Status='" + ddlstatus.SelectedItem.ToString() + "' where [Event ID]='" + GridView1.SelectedRow.Cells(1).Text + "'", con)
            cmd.ExecuteNonQuery()

            Response.Write("<script>alert('Event Updated...')</script>")

            txttitle.Text = String.Empty
            txtdescrip.Text = String.Empty
            txtloc.Text = String.Empty
            txttime.Text = String.Empty
            txtdate.Text = String.Empty
            ddlstatus.SelectedIndex = -1

            con.Close()

            Page_Load(sender, e)

        End If
    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        txttitle.Text = String.Empty
        txtdescrip.Text = String.Empty
        txtloc.Text = String.Empty
        txttime.Text = String.Empty
        txtdate.Text = String.Empty
        ddlstatus.SelectedIndex = -1

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        con.Open()

        Dim cd As New SqlCommand("select * from Event where [Event ID]='" + GridView1.SelectedRow.Cells(1).Text + "'", con)
        Dim dr As SqlDataReader = cd.ExecuteReader()
        dr.Read()

        txttitle.Text = dr(1)
        txtdescrip.Text = dr(2)
        txtloc.Text = dr(3)
        txttime.Text = dr(5)
        txtdate.Text = dr(4)
        ddlstatus.Text = dr(6)
      
        dr.Close()

        con.Close()
    End Sub

    'Protected Sub btndel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndel.Click
    '    con.Open()
    '    If (txttitle.Text = "" Or txtdescrip.Text = "" Or txtloc.Text = "" Or txtdate.Text = "" Or txttime.Text = "") Then
    '        MsgBox("Please Select Values through grid...")
    '    Else

    '        Dim cmd As New SqlCommand("delete from Event where [Event ID]='" + GridView1.SelectedRow.Cells(1).Text + "'", con)
    '        cmd.ExecuteNonQuery()
    '        Response.Write("<script>alert('Event Deleted...')</script>")

    '        txttitle.Text = String.Empty
    '        txtdescrip.Text = String.Empty
    '        txtloc.Text = String.Empty
    '        txttime.Text = String.Empty
    '        txtdate.Text = String.Empty

    '        con.Close()

    '        Page_Load(sender, e)
    '    End If
    'End Sub

    
End Class
