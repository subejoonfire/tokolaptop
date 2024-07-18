Imports MySql.Data.MySqlClient

Public Class Pelanggan_M
    Public Property id_plgn As Integer
    Public Property nama As String
    Public Property email As String
    Public Property no_hp As String

    Private db As New Koneksidb

    Public Sub New()
    End Sub

    Public Sub New(id_plgn As Integer, nama As String, email As String, no_hp As String)
        Me.id_plgn = id_plgn
        Me.nama = nama
        Me.email = email
        Me.no_hp = no_hp
    End Sub

    Public Function getAllPelanggan() As List(Of Pelanggan_M)
        Dim pelangganList As New List(Of Pelanggan_M)
        Dim query As String = "SELECT * FROM tokolaptop.pelanggan"
        Dim dt As DataTable = db.GetResult(query)
        For Each row As DataRow In dt.Rows
            Dim pelanggan As New Pelanggan_M
            pelanggan.id_plgn = CInt(row("id_plgn"))
            pelanggan.nama = row("nama").ToString
            pelanggan.email = row("email").ToString
            pelanggan.no_hp = row("no_hp").ToString
            pelangganList.Add(pelanggan)
        Next
        Return pelangganList
    End Function

    Public Function getPelangganById(id_plgn As Integer) As Pelanggan_M
        Dim query As String = "SELECT * FROM tokolaptop.pelanggan WHERE id_plgn = " & id_plgn
        Dim dt As DataTable = db.GetResult(query)
        If dt.Rows.Count > 0 Then
            Dim pelanggan As New Pelanggan_M
            pelanggan.id_plgn = CInt(dt.Rows(0)("id_plgn"))
            pelanggan.nama = dt.Rows(0)("nama").ToString
            pelanggan.email = dt.Rows(0)("email").ToString
            pelanggan.no_hp = dt.Rows(0)("no_hp").ToString
            Return pelanggan
        Else
            Return Nothing
        End If
    End Function

    Public Sub addPelanggan(nama As String, email As String, no_hp As String)
        Dim query As String = "INSERT INTO tokolaptop.pelanggan (nama, email, no_hp) VALUES (@nama, @email, @no_hp)"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@nama", nama))
        parameters.Add(New MySqlParameter("@email", email))
        parameters.Add(New MySqlParameter("@no_hp", no_hp))
        db.ExecuteQuery(query, parameters.ToArray())
    End Sub

    Public Sub updatePelanggan(id_plgn As Integer, nama As String, email As String, no_hp As String)
        Dim query As String = "UPDATE tokolaptop.pelanggan SET nama = @nama, email = @email, no_hp = @no_hp WHERE id_plgn = @id_plgn"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@id_plgn", id_plgn))
        parameters.Add(New MySqlParameter("@nama", nama))
        parameters.Add(New MySqlParameter("@email", email))
        parameters.Add(New MySqlParameter("@no_hp", no_hp))
        db.ExecuteQuery(query, parameters.ToArray())
    End Sub

    Public Sub deletePelanggan(id_plgn As Integer)
        Dim query As String = "DELETE FROM tokolaptop.pelanggan WHERE id_plgn = @id_plgn"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@id_plgn", id_plgn))
        db.ExecuteQuery(query, parameters.ToArray())
    End Sub
End Class