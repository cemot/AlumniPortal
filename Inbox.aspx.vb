Imports System.Data
Imports System.Data.SqlClient

Partial Class Inbox
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    'Dim l(100), l1(100) As Label
    'Dim lb(100) As LinkButton
    'Dim cb(100) As CheckBox
    'Dim i As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        con.Open()
        Dim da As New SqlDataAdapter("select FromName as [From],Subject,SendDate from Inbox where ToName='" + Session("uname") + "'", con)
        Dim ds As New DataSet()
        da.Fill(ds, "Inbox")
        If (ds.Tables(0).Rows.Count = 0) Then
            btndel.Visible = False
            Label1.Visible = True

        Else
            btndel.Visible = True
            Label1.Visible = False
        End If



        'Dim cd As New SqlCommand("select FromName as [From],Subject,SendDate from Inbox where ToName='" + Session("uname") + "'", con)
        'Dim dr As SqlDataReader = cd.ExecuteReader()
        'dr.Read()
        'If (dr.HasRows = False) Then
        '    btndel.Visible = False
        '    Label1.Visible = True

        'Else
        '    btndel.Visible = True
        '    Label1.Visible = False

        '    Dim tr As New TableRow()
        '    Dim td As New TableCell
        '    Dim td1 As New TableCell
        '    Dim td2 As New TableCell
        '    Dim td3 As New TableCell

        '    cb(i) = New CheckBox
        '    l(i) = New Label
        '    l1(i) = New Label
        '    lb(i) = New LinkButton

        '    cb(i).ID = "cb" & i.ToString()
        '    td.Controls.Add(cb(i))

        '    l(i).ID = "l" & i.ToString()
        '    l(i).Text = dr(0)
        '    td1.Controls.Add(l(i))

        '    lb(i).ID = "lb" & i.ToString()
        '    lb(i).Text = dr(1)
        '    td2.Controls.Add(lb(i))

        '    l1(i).ID = "lab" & i.ToString()
        '    l1(i).Text = dr(2)
        '    td3.Controls.Add(l1(i))

        '    tr.Cells.Add(td)
        '    tr.Cells.Add(td1)
        '    tr.Cells.Add(td2)
        '    tr.Cells.Add(td3)

        '    Table1.Rows.Add(tr)
        '    i += 1

        'End If


        con.Close()
    End Sub
    'This is another type of code to delete checked rows from a gridview

    'Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click
    '    For Each row As GridViewRow In GridView2.Rows

    '        Dim checkbox As CheckBox = CType(row.FindControl("cbRows"), CheckBox)

    '        'Check if the checkbox is checked.

    '        'value in the HtmlInputCheckBox's Value property is set as the //value of the delete command's parameter.

    '        If checkbox.Checked Then

    '            ' Retreive the SendDate

    '            Dim SendDate As Date = Convert.ToDateTime(GridView2.DataKeys(row.RowIndex).Value)

    '            ' Pass the value of the selected SendDate to the Delete //command.

    '            SqlDataSource2.DeleteParameters("SendDate").DefaultValue = SendDate.ToString()
    '            SqlDataSource2.Delete()


    '        End If

    '    Next row


    'End Sub

    'or
    
    Protected Sub btndel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndel.Click
        Dim gr As GridViewRow
        For Each gr In GridView2.Rows
            Dim cb As CheckBox = CType(gr.Cells(0).FindControl("cbRows"), CheckBox)
            If (cb.Checked) Then
                'con.Open()
                'Dim cd As New SqlCommand("delete from Inbox where SendDate='" + gr.Cells(3).Text + "'", con)
                'cd.ExecuteNonQuery()
                'con.Close()


                'or

                SqlDataSource1.DeleteParameters("SendDate").DefaultValue = gr.Cells(3).Text   'will get automatically updated in table when row is deleted.Delete command is written in the gridview source page.
                SqlDataSource1.Delete()
            End If
           
        Next
        
    End Sub

    Public Function GetUrl(ByVal id As Object) As String
        Dim url As String = "~/ShowMessagew.aspx?SendDate=" + Server.UrlEncode(id.ToString())  'to navigate to next page when hyperlink is clicked and this function 'GetUrl' is called in the gridview source code where hyperlink is used as the template field.
        'Session("SendDate") = id.ToString()
        ' MsgBox(id.ToString())
        Return url

    End Function

End Class
