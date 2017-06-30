Imports System.Data
Imports System.Data.SqlClient
Partial Class EventView
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlyear.SelectedIndexChanged
        con.Open()
        Dim da As New SqlDataAdapter("select * from Event where [Event Date] like '%" + ddlyear.SelectedItem.ToString() + "%' ", con)
        Dim ds As New DataSet()
        da.Fill(ds, "reg")
        If (ds.Tables(0).Rows.Count = 0) Then
            GridView1.DataSource = Nothing
            GridView1.DataBind()
            MsgBox("No result found")
        Else

            GridView1.DataSource = ds
            GridView1.DataBind()
        End If

        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            Dim i As Integer
            Dim y As Integer
            y = Date.Now.Year
            For i = 1980 To y
                ddlyear.Items.Add(i)
            Next
        End If
        
    End Sub
End Class
