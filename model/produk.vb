Public Class Produk
    Public Function Lihat() As DataTable
        Dim dt As New DataTable
        Dim query As String = "SELECT id_produk AS ID, nama_produk, harga, deskripsi FROM produk"
        'create object k
        Dim k As New Koneksidb
        dt = k.GetResult(query)
        Return dt
    End Function
End Class

