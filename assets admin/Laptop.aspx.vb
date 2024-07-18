Public Class Laptop
    Inherits System.Web.UI.Page

    Dim produk As New Produk_M

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindGridView()
        End If
    End Sub

    Private Sub BindGridView()
        Dim produkList As New List(Of Produk_M)
        produkList = New Produk_M().getAllProduk()
        GridView1.DataSource = produkList
        GridView1.DataBind()
    End Sub

    Protected Sub BtnSubmit_Click(sender As Object, e As EventArgs)
        Dim laptopM As New Produk_M
        laptopM.addProduk(txtNamaLaptop.Text, Convert.ToInt32(txtHarga.Text), txtDeskripsi.Text)
        GridView1.DataSource = laptopM.getAllProduk()
        GridView1.DataBind()
    End Sub
    Protected Sub GridView1_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim id_laptop As Integer = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Value)
        Dim produk As New Produk_M
        produk.deleteProduk(id_laptop)
        GridView1.DataSource = produk.getAllProduk()
        GridView1.DataBind()
    End Sub
    Protected Sub GridView1_RowEditing(sender As Object, e As GridViewEditEventArgs)
    End Sub
    Protected Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        If e.CommandName = "Edit" Then
            Dim id_laptop As Integer = Convert.ToInt32(e.CommandArgument)
            Dim produk As New Produk_M
            produk = produk.getProdukById(id_laptop)

            'opulate the edit form with the selected record's data
            txtNamaLaptopEdit.Text = produk.nama_laptop
            txtHargaEdit.Text = produk.harga.ToString
            txtDeskripsiEdit.Text = produk.deskripsi

            'how the edit form
            pnlEditForm.Visible = True
            ViewState("id_laptop") = id_laptop
        End If
    End Sub
    Protected Sub BtnUpdate_Click(sender As Object, e As EventArgs)
        Dim id_laptop As Integer = Convert.ToInt32(ViewState("id_laptop"))
        Dim produk As New Produk_M
        produk.updateProduk(id_laptop, txtNamaLaptopEdit.Text, Convert.ToInt32(txtHargaEdit.Text), txtDeskripsiEdit.Text)
        GridView1.DataSource = produk.getAllProduk()
        GridView1.DataBind()

        'lear the edit form
        txtNamaLaptopEdit.Text = String.Empty
        txtHargaEdit.Text = String.Empty
        txtDeskripsiEdit.Text = String.Empty

        'ide the edit form
        pnlEditForm.Visible = False
        Response.Redirect("Laptop.aspx")
    End Sub
    Protected Sub BtnCancel_Click(sender As Object, e As EventArgs)
        ' Clear the edit form
        txtNamaLaptopEdit.Text = String.Empty
        txtHargaEdit.Text = String.Empty
        txtDeskripsiEdit.Text = String.Empty

        ' Hide the edit form
        pnlEditForm.Visible = False
    End Sub
End Class