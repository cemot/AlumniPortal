
Partial Class admin
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtuname.Text = Session("uname")
    End Sub
End Class

