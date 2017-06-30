Imports System.Data
Imports System.Data.SqlClient
Partial Class Alumni
    Inherits System.Web.UI.MasterPage
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineAlumini.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtuser.Text = Session("uname")
        con.Open()

        If (IsPostBack = False) Then
            If (Session("status") = 2) Then
                Menu1.Items.Remove(Menu1.Items(2)) ' To make 3rd menu item invisible to the user
                ' or use Menu1.Items.RemoveAt(2)

                Dim cd As New SqlCommand("select Picture from OldRegister where UserName='" + Session("uname") + "'", con)
                Dim dr As SqlDataReader = cd.ExecuteReader()
                dr.Read()
                If (dr(0) = "") Then
                    Image3.ImageUrl = "~\photos\" & "face.gif"
                Else
                    Image3.ImageUrl = "~\photos\" & dr(0)
                End If

            ElseIf (Session("status") = 3) Then
                Menu1.Items.RemoveAt(1)

                Dim cd As New SqlCommand("select Picture from CurrentReg where UserName='" + Session("uname") + "'", con)
                Dim dr As SqlDataReader = cd.ExecuteReader()
                dr.Read()
                If (dr(0) = "") Then
                    Image3.ImageUrl = "~\photos\" & "face.gif"
                Else
                    Image3.ImageUrl = "~\photos\" & dr(0)
                End If
            End If

            Session("senddate") = "" ' Required for Message.aspx and ShowMessagew.aspx(ie., for compose and reply for the msg)
        End If

        con.Close()


    End Sub

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick

    End Sub
End Class

