Imports System.Data
Imports System.Data.SqlClient

Partial Class SearchCurrentStdnt
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Panel1.Visible = False

        con.Open()

        Dim da As New SqlDataAdapter("select Name,[Reg No],Address from CurrentReg where [Current Student]='yes'", con)
        Dim ds As New DataSet()
        da.Fill(ds, "reg")
        GridView1.DataSource = ds
        GridView1.DataBind()

        con.Close()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        con.Open()

        Dim cd As New SqlCommand("select * from CurrentReg where [Reg No]='" + GridView1.SelectedRow.Cells(2).Text + "'", con)
        Dim dr As SqlDataReader = cd.ExecuteReader()
        dr.Read()

        Panel1.Visible = True
        txtname.Text = dr(0)
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

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        con.Open()

        Dim cd As New SqlCommand("update CurrentReg set Class='" + txtclass.Text + "' where [Reg No]='" + txtrno.Text + "'", con)
        cd.ExecuteNonQuery()
        MsgBox("Updated sucessfully...")

        con.Close()

    End Sub

    Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click
        con.Open()

        Dim cd As New SqlCommand("update CurrentReg set [Current Student]='no' where [Reg No]='" + txtrno.Text + "'", con)
        cd.ExecuteNonQuery()

        Dim cd1 As New SqlCommand("delete from login where UserName='" + txtuname.Text + "'", con)
        cd1.ExecuteNonQuery()
        MsgBox("Deleted sucessfully...")

        Dim cd2 As New SqlCommand("update CurrentDetails set YearLeft='" & Now.Year & "' where [Register No]='" + txtrno.Text + "'", con)
        cd2.ExecuteNonQuery()

        con.Close()

        Page_Load(sender, e)

    End Sub
End Class
