Imports MySql.Data.MySqlClient

Public Class produk1
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindGrid()
        End If
    End Sub

    Private Sub BindGrid()
        Dim connStr As String = ConfigurationManager.ConnectionStrings("MySQLConnection").ConnectionString
        Using conn As New MySqlConnection(connStr)
            Dim cmd As New MySqlCommand("SELECT id_produk, nama_produk, harga, deskripsi FROM produk", conn)
            Dim dt As New DataTable()
            Try
                conn.Open()
                Dim adapter As New MySqlDataAdapter(cmd)
                adapter.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
            Catch ex As MySqlException
                ' Handle exception
            Finally
                conn.Close()
            End Try
        End Using
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class