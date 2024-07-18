Public Class Dashboard
    Inherits System.Web.UI.Page
    Dim Pelanggan_M As New Pelanggan_M
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dt As DataTable = Pelanggan_M.getGrafik()
        ViewState("GrafikData") = dt
    End Sub

End Class