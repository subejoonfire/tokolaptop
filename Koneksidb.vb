Imports MySql.Data.MySqlClient

Public Class Koneksidb
    Dim username, password, server, database As String
    Dim mycn As MySqlConnection
    Dim mydata As MySqlDataAdapter

    Public Sub New()
        username = "root"
        password = ""
        server = "localhost"
        database = "tokolaptop"
        Dim con_str As String
        con_str = "user=" & username & ";"
        con_str &= "pwd=" & password & ";"
        con_str &= "server=" & server & ";"
        con_str &= "database=" & database
        mycn = New MySqlConnection(con_str)
    End Sub

    Public Sub CekKoneksi()
        Try
            mycn.Open()
            mycn.Close()
            MsgBox("Koneksi Berhasil")
        Catch ex As Exception
            If mycn.State = ConnectionState.Open Then
                mycn.Close()
            End If
            MsgBox("Koneksi Gagal")
        End Try
    End Sub

    Public Function GetResult(query As String) As DataTable
        Dim dt As New DataTable
        Try
            mycn.Open()
            mydata = New MySqlDataAdapter(query, mycn)
            mydata.Fill(dt)
            mycn.Close()
        Catch ex As Exception
            If mycn.State = ConnectionState.Open Then
                mycn.Close()
            End If
            MsgBox("Data tidak dapat ditemukan, silahkan hubungi admin untuk dapat informasi lebih lanjut", MsgBoxStyle.Information, "Informasi")
        End Try
        Return dt
    End Function

    Public Sub ExecuteQuery(query As String, parameters As MySqlParameter())
        Try
            mycn.Open()
            Dim cmd As New MySqlCommand(query, mycn)
            cmd.Parameters.AddRange(parameters)
            cmd.ExecuteNonQuery()
            mycn.Close()
        Catch ex As Exception
            If mycn.State = ConnectionState.Open Then
                mycn.Close()
            End If
            MsgBox("Error executing query: " & ex.Message)
        End Try
    End Sub

    Public Function GetResultById(query As String, id As Integer) As DataTable
        Dim dt As New DataTable
        Try
            mycn.Open()
            Dim cmd As New MySqlCommand(query, mycn)
            cmd.Parameters.AddWithValue("@id", id)
            mydata = New MySqlDataAdapter(cmd)
            mydata.Fill(dt)
            mycn.Close()
        Catch ex As Exception
            If mycn.State = ConnectionState.Open Then
                mycn.Close()
            End If
            MsgBox("Data tidak dapat ditemukan, silahkan hubungi admin untuk dapat informasi lebih lanjut", MsgBoxStyle.Information, "Informasi")
        End Try
        Return dt
    End Function
    Public Function Login(username As String, password As String) As Boolean
        Try
            mycn.Open()
            Dim query As String = "SELECT * FROM tokolaptop.admin WHERE username = @username AND password = @password"
            Dim cmd As New MySqlCommand(query, mycn)
            cmd.Parameters.AddWithValue("@username", username)
            cmd.Parameters.AddWithValue("@password", password)
            Dim dt As New DataTable
            Dim mydata As New MySqlDataAdapter(cmd)
            mydata.Fill(dt)
            mycn.Close()
            Return dt.Rows.Count > 0
        Catch ex As Exception
            If mycn.State = ConnectionState.Open Then
                mycn.Close()
            End If
            MsgBox("Error executing query: " & ex.Message)
            Return False
        End Try
    End Function
End Class