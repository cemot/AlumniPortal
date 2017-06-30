Imports System.Data
Imports System.Data.SqlClient
Partial Class Message
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")

    Protected Sub btnclear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnclear.Click
        txttoname.Text = String.Empty
        txtsubject.Text = String.Empty
        txtmessage.Text = String.Empty
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'This is used coz if we select 'compose'option from menu, all the textbox in the Message.aspx should be empty. Elseif we click 'reply' button in ShowMessagew.aspx, the senders name and subject of the message should be displayed in this 'Message.aspx' form  
        If (IsPostBack = False) Then

            con.Open()
            If (Session("senddate") = "") Then
                txttoname.Text = ""
                txtsubject.Text = ""
                txtmessage.Text = ""
            Else
                If (Session("status") = 1) Then

                    Dim cd As New SqlCommand("select * from Inbox where SendDate='" + Session("senddate") + "'", con)
                    Dim dr As SqlDataReader = cd.ExecuteReader()
                    While (dr.Read())
                        txttoname.Text = dr(1)
                        txtsubject.Text = "Re:" & dr(4)
                        'txtmsg.Text = dr(5)
                    End While
                    dr.Close()

                ElseIf (Session("status") = 2) Then

                    Dim cd As New SqlCommand("select * from Inbox where SendDate='" + Session("senddate") + "'", con)
                    Dim dr As SqlDataReader = cd.ExecuteReader()
                    While (dr.Read())
                        txtsubject.Text = dr(4)
                        txtmessage.Text = dr(5)
                    End While
                    dr.Close()

                End If


            End If
            con.Close()

        End If
    End Sub

    Protected Sub btnsend1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsend1.Click
        con.Open()

        Dim msgid As Integer

        Dim cmd As New SqlCommand("select top 1 MessageID from Inbox order by MessageID desc", con)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        dr.Read()
        If (dr.HasRows = False) Then
            msgid = 1
        Else
            msgid = dr(0) + 1
        End If
        dr.Close()

        If (txtsubject.Text = "") Then
            MsgBox("Are you sure to send message without subject")
        ElseIf (txtmessage.Text = "") Then
            MsgBox("Are you sure to send message without text")
        End If

        If (txttoname.Text = "") Then
            MsgBox("Enter the name to whom message to be sent")
        Else
            'Dim d As String = (Now)
            Dim cmd1 As New SqlCommand("insert into Inbox values('" & msgid & "','" & Session("uname") & "','" & txttoname.Text & "','" & Now & "','" & txtsubject.Text & "','" & txtmessage.Text & "')", con)
            cmd1.ExecuteNonQuery()

            Dim cmd2 As New SqlCommand("insert into SentItem values('" & msgid & "','" & Session("uname") & "','" & txttoname.Text & "','" & Now & "','" & txtsubject.Text & "','" & txtmessage.Text & "')", con)
            cmd2.ExecuteNonQuery()
            MsgBox("Message sent successfully...")

            btnclear_Click(sender, e)
        End If

        con.Close()
    End Sub
End Class
