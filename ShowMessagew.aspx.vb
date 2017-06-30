Imports System.Data
Imports System.Data.SqlClient

Partial Class ShowMessagew
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        Session("senddate") = ""
        Dim cd As New SqlCommand("select * from Inbox where SendDate='" + Request.QueryString("SendDate") + "'", con)   'Request.QueryString("SendDate") implies getting request for the selected row ie., the row which is selected when hyperlink on Inbox.aspx gridview is clicked. And variable SendDate is used to store selected rows SendDate in 'GetUrl' function in Inbox.aspx.
        Dim dr As SqlDataReader = cd.ExecuteReader()
        While (dr.Read())
            txtsub.Text = dr(4)
            txtfrom.Text = dr(1)
            Txtdate.Text = dr(3)
            txtmsg.Text = dr(5)
        End While
        con.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()


        Dim cd As New SqlCommand("delete from Inbox where SendDate='" + Request.QueryString("SendDate") + "'", con)   'Request.QueryString("SendDate") implies getting request for the selected row ie., the row which is selected when hyperlink on Inbox.aspx gridview is clicked. And variable SendDate is used to store selected rows SendDate in 'GetUrl' function in Inbox.aspx.
        cd.ExecuteNonQuery()

        Response.Redirect("Inbox.aspx")

        con.Close()
    End Sub

    Protected Sub btnreply_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreply.Click
        Session("senddate") = Request.QueryString("SendDate")
        Session("status") = 1
        Response.Redirect("Message.aspx")
    End Sub

    Protected Sub btnforward_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnforward.Click
        Session("senddate") = Request.QueryString("SendDate")
        Session("status") = 2
        Response.Redirect("Message.aspx")
    End Sub
End Class
