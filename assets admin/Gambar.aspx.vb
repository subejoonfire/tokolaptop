Public Class Gambar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim imageData As Byte() = GetImage()
        If imageData IsNot Nothing Then
            Response.ContentType = "image/png"
            Response.BinaryWrite(imageData)
            Response.End()
        End If
    End Sub

    Public Function GetImage() As Byte()
        Dim query As String = "SELECT * FROM gambar"
        Dim k As New Koneksidb
        Dim dt As DataTable = k.GetResult(query)
        If dt.Rows.Count > 0 Then
            Dim imageData As Byte() = CType(dt.Rows(0)("gambar"), Byte())
            Return imageData
        Else
            Return Nothing
        End If
    End Function

End Class