Imports MySql.Data.MySqlClient

Public Class Admin_M
    Dim id_admin As Integer
    Dim nama As String
    Dim no_hp As String
    Dim username As String
    Dim password As String
    Dim level As String

    Public Function GetAllAdmin() As DataTable
        Dim query As String = "SELECT * FROM admin"
        Dim k As New Koneksidb
        Return k.GetResult(query)
    End Function

    Public Function GetAdminById(id_admin As Integer) As DataTable
        Dim query As String = "SELECT * FROM admin WHERE id_admin = @id_admin"
        Dim k As New Koneksidb
        Return k.GetResultById(query, id_admin)
    End Function

    Public Function CreateAdmin(nama As String, no_hp As String, username As String, password As String, level As String) As Boolean
        Dim query As String = "INSERT INTO admin (nama, no_hp, username, password, level) VALUES (@nama, @no_hp, @username, @password, @level)"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@nama", nama))
        parameters.Add(New MySqlParameter("@no_hp", no_hp))
        parameters.Add(New MySqlParameter("@username", username))
        parameters.Add(New MySqlParameter("@password", password))
        parameters.Add(New MySqlParameter("@level", level))
        Dim k As New Koneksidb
        k.ExecuteQuery(query, parameters.ToArray())
        Return True
    End Function

    Public Function UpdateAdmin(id_admin As Integer, nama As String, no_hp As String, username As String, password As String, level As String) As Boolean
        Dim query As String = "UPDATE admin SET nama = @nama, no_hp = @no_hp, username = @username, password = @password, level = @level WHERE id_admin = @id_admin"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@nama", nama))
        parameters.Add(New MySqlParameter("@no_hp", no_hp))
        parameters.Add(New MySqlParameter("@username", username))
        parameters.Add(New MySqlParameter("@password", password))
        parameters.Add(New MySqlParameter("@level", level))
        parameters.Add(New MySqlParameter("@id_admin", id_admin))
        Dim k As New Koneksidb
        k.ExecuteQuery(query, parameters.ToArray())
        Return True
    End Function

    Public Function DeleteAdmin(id_admin As Integer) As Boolean
        Dim query As String = "DELETE FROM admin WHERE id_admin = @id_admin"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@id_admin", id_admin))
        Dim k As New Koneksidb
        k.ExecuteQuery(query, parameters.ToArray())
        Return True
    End Function
End Class