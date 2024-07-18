Imports MySql.Data.MySqlClient

Public Class Produk_M
    Public Property id_laptop As Integer
    Public Property nama_laptop As String
    Public Property harga As Integer
    Public Property deskripsi As String

    Private db As New Koneksidb

    Public Sub New()
    End Sub

    Public Sub New(id_laptop As Integer, nama_laptop As String, harga As Integer, deskripsi As String)
        Me.id_laptop = id_laptop
        Me.nama_laptop = nama_laptop
        Me.harga = harga
        Me.deskripsi = deskripsi
    End Sub

    Public Function getAllProduk() As List(Of Produk_M)
        Dim produkList As New List(Of Produk_M)
        Dim query As String = "SELECT * FROM tokolaptop.produk"
        Dim dt As DataTable = db.GetResult(query)
        For Each row As DataRow In dt.Rows
            Dim produk As New Produk_M
            produk.id_laptop = CInt(row("id_laptop"))
            produk.nama_laptop = row("nama_laptop").ToString
            produk.harga = CInt(row("harga"))
            produk.deskripsi = row("deskripsi").ToString
            produkList.Add(produk)
        Next
        Return produkList
    End Function

    Public Function getProdukById(id_laptop As Integer) As Produk_M
        Dim query As String = "SELECT * FROM tokolaptop.produk WHERE id_laptop = " & id_laptop
        Dim dt As DataTable = db.GetResult(query)
        If dt.Rows.Count > 0 Then
            Dim produk As New Produk_M
            produk.id_laptop = CInt(dt.Rows(0)("id_laptop"))
            produk.nama_laptop = dt.Rows(0)("nama_laptop").ToString
            produk.harga = CInt(dt.Rows(0)("harga"))
            produk.deskripsi = dt.Rows(0)("deskripsi").ToString
            Return produk
        Else
            Return Nothing
        End If
    End Function

    Public Sub addProduk(nama_laptop As String, harga As Integer, deskripsi As String)
        Dim query As String = "INSERT INTO tokolaptop.produk (nama_laptop, harga, deskripsi) VALUES (@nama_laptop, @harga, @deskripsi)"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@nama_laptop", nama_laptop))
        parameters.Add(New MySqlParameter("@harga", harga))
        parameters.Add(New MySqlParameter("@deskripsi", deskripsi))
        db.ExecuteQuery(query, parameters.ToArray())
    End Sub

    Public Sub updateProduk(id_laptop As Integer, nama_laptop As String, harga As Integer, deskripsi As String)
        Dim query As String = "UPDATE tokolaptop.produk SET nama_laptop = @nama_laptop, harga = @harga, deskripsi = @deskripsi WHERE id_laptop = @id_laptop"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@id_laptop", id_laptop))
        parameters.Add(New MySqlParameter("@nama_laptop", nama_laptop))
        parameters.Add(New MySqlParameter("@harga", harga))
        parameters.Add(New MySqlParameter("@deskripsi", deskripsi))
        db.ExecuteQuery(query, parameters.ToArray())
    End Sub

    Public Sub deleteProduk(id_laptop As Integer)
        Dim query As String = "DELETE FROM tokolaptop.produk WHERE id_laptop = @id_laptop"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@id_laptop", id_laptop))
        db.ExecuteQuery(query, parameters.ToArray())
    End Sub
End Class