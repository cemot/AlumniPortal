Imports System.Data
Imports System.Data.SqlClient
Partial Class NewlyReg
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")
    Dim pw As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()

        Dim da As New SqlDataAdapter("select Name as NAME,[Register No] as [REGISTER NO],UserName as USERNAME,[Joining Date] as [JOIN-DATE],[Email ID] as [EMAIL ID],Qualification as QUALIFICATION from OldRegister where status='no'", con)
        Dim ds As New DataSet
        da.Fill(ds, "reg")
        GridView1.DataSource = ds
        GridView1.DataBind()

        con.Close()
    End Sub

    'Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
    '    Button3.Attributes.Add("OnClick", "return confirm('aaa')")
    'End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

        con.Open()

        Dim cmd As New SqlCommand("update OldRegister set status='yes' where UserName='" + GridView1.SelectedRow.Cells(3).Text + "'", con)
        cmd.ExecuteNonQuery()

        Dim cmd1 As New SqlCommand("select Password from OldRegister where UserName='" + GridView1.SelectedRow.Cells(3).Text + "'", con)
        Dim dr As SqlDataReader = cmd1.ExecuteReader()
        While dr.Read()
            pw = dr(0)

        End While
        dr.Close()

        Dim cmd2 As New SqlCommand("insert into login values('" + GridView1.SelectedRow.Cells(3).Text + "','" + pw + "','2')", con)
        cmd2.ExecuteNonQuery()

        con.Close()

        Response.Write("<script>alert('Approved successfully...')</script>")

        Page_Load(sender, e)

    End Sub
End Class
