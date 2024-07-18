Imports System.Data.SqlClient
Imports MySql.Data.MySqlClient
Public Class Berandapub
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindProdukData()
        End If
    End Sub

    Private Sub BindProdukData()
        Dim query As String = "SELECT id_produk, nama_produk, harga, deskripsi FROM produk"
        Using cmd As New SqlCommand(query)
            Dim dt As New DataTable()
        End Using
    End Sub
    Protected Sub Login_Click(sender As Object, e As EventArgs)
        Dim userNameValue As String = Username.Text
        Dim passwordValue As String = Password.Text

        Dim k As New Koneksidb
        If k.Login(userNameValue, passwordValue) Then
            Response.Redirect("../assets admin/Dashboard.aspx")
        Else
            LblError.Text = "Invalid username or password"
            LblError.ForeColor = Drawing.Color.Red
        End If
    End Sub
End Class