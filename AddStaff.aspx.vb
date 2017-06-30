Imports System.Data
Imports System.Data.SqlClient
Partial Class AddStaff
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        Dim da As New SqlDataAdapter("select * from Staff", con)
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

    Protected Sub btnstaffadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnstaffadd.Click
        Panel1.Visible = True

        txtname.Text = String.Empty
        txtcno.Text = String.Empty
        txtadd.Text = String.Empty
        txtemail.Text = String.Empty

        btnadd.Visible = True
        btnreset.Visible = True
        btnupdate.Visible = False
        btndelete.Visible = False
    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Dim id As String

        con.Open()
        Dim cmd1 As New SqlCommand("select [Staff ID] from Staff where len([Staff ID])=(select max(len([Staff ID])) from Staff) order by [Staff ID] desc", con)
        Dim dr As SqlDataReader = cmd1.ExecuteReader()
        dr.Read()
        If (dr.HasRows = False) Then
            id = "S1"
        Else
            id = dr(0)
            id = id.Substring(1)
            id = "S" & (id + 1)
        End If
        con.Close()

        If (txtname.Text = "" Or txtcno.Text = "" Or txtadd.Text = "" Or txtemail.Text = "") Then
            MsgBox("Enter all details...")
        ElseIf (lblcno.Visible = True Or lblcontact.Visible = True) Then
            MsgBox("Invalid Input")
        Else
            con.Open()

            Dim cmd As New SqlCommand("insert into Staff values('" + id + "','" + txtname.Text + "','" + txtcno.Text + "','" + txtadd.Text + "','" + txtemail.Text + "')", con)
            cmd.ExecuteNonQuery()

            Response.Write("<script>alert('1 Staff Added...')</script>")

            txtname.Text = String.Empty
            txtcno.Text = String.Empty
            txtadd.Text = String.Empty
            txtemail.Text = String.Empty

            con.Close()

            Page_Load(sender, e)

        End If

    End Sub

    Protected Sub txtcno_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtcno.TextChanged
        If (txtcno.Text.Length > 13 Or txtcno.Text.Length < 10) Then
            lblcno.Visible = True
        Else
            lblcno.Visible = False
        End If
       
        If (Not Regex.IsMatch(txtcno.Text, "^\d*$")) Then ' or use ^\d+$ or ^\d[0-9]*$
            lblcontact.Visible = True
        Else
            lblcontact.Visible = False
        End If

    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        txtname.Text = String.Empty
        txtcno.Text = String.Empty
        txtadd.Text = String.Empty
        txtemail.Text = String.Empty
        lblcno.Visible = False
        lblcontact.Visible = False
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        con.Open()
        Panel1.Visible = True
        btnupdate.Visible = True
        btnreset.Visible = True
        btnadd.Visible = False
        btndelete.Visible = True

        Dim cd As New SqlCommand("select * from Staff where [Staff ID]='" + GridView1.SelectedRow.Cells(1).Text + "'", con)
        Dim dr As SqlDataReader = cd.ExecuteReader()
        dr.Read()

        txtname.Text = dr(1)
        txtcno.Text = dr(2)
        txtadd.Text = dr(3)
        txtemail.Text = dr(4)

        dr.Close()

        con.Close()
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        con.Open()
        If (txtname.Text = "" Or txtcno.Text = "" Or txtadd.Text = "" Or txtemail.Text = "") Then
            MsgBox("Please Select Values through grid...")
        Else

            Dim cmd As New SqlCommand("update Staff set Name='" + txtname.Text + "',[Contact No]='" + txtcno.Text + "',Address='" + txtadd.Text + "',[Email ID]='" + txtemail.Text + "' where [Staff ID]='" + GridView1.SelectedRow.Cells(1).Text + "'", con)
            cmd.ExecuteNonQuery()

            Response.Write("<script>alert('Staff Detail Updated...')</script>")

            txtname.Text = String.Empty
            txtcno.Text = String.Empty
            txtadd.Text = String.Empty
            txtemail.Text = String.Empty

            con.Close()

            Page_Load(sender, e)

        End If
    End Sub

    Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click
        con.Open()
        If (txtname.Text = "" Or txtcno.Text = "" Or txtadd.Text = "" Or txtemail.Text = "") Then
            MsgBox("Please Select Values through grid...")
        Else

            Dim cmd As New SqlCommand("delete from Staff where [Staff ID]='" + GridView1.SelectedRow.Cells(1).Text + "'", con)
            cmd.ExecuteNonQuery()
            Response.Write("<script>alert('Staff Detail Deleted...')</script>")

            txtname.Text = String.Empty
            txtcno.Text = String.Empty
            txtadd.Text = String.Empty
            txtemail.Text = String.Empty


            con.Close()

            Page_Load(sender, e)
        End If
    End Sub
End Class
 