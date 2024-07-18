Public Class Pelanggan
    Inherits System.Web.UI.Page

    Dim Pelanggan_M As New Pelanggan_M

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindGridView()
        End If
    End Sub

    Private Sub BindGridView()
        Dim pelangganList As New List(Of Pelanggan_M)
        pelangganList = New Pelanggan_M().getAllPelanggan()
        GridView1.DataSource = pelangganList
        GridView1.DataBind()
    End Sub

    Protected Sub BtnSubmit_Click(sender As Object, e As EventArgs)
        Dim pelangganM As New Pelanggan_M
        pelangganM.addPelanggan(txtNama.Text, txtEmail.Text, txtNoHp.Text)
        GridView1.DataSource = pelangganM.getAllPelanggan()
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim id_plgn As Integer = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Value)
        Dim pelanggan As New Pelanggan_M
        pelanggan.deletePelanggan(id_plgn)
        GridView1.DataSource = pelanggan.getAllPelanggan()
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_RowEditing(sender As Object, e As GridViewEditEventArgs) Handles GridView1.RowEditing
        Dim id_pelanggan As Integer = Convert.ToInt32(GridView1.DataKeys(e.NewEditIndex).Value)
        Dim pelanggan As New Pelanggan_M
        pelanggan = pelanggan.getPelangganById(id_pelanggan)

        ' Populate the edit form with the selected record's data
        txtNamaEdit.Text = pelanggan.nama
        txtEmailEdit.Text = pelanggan.email
        txtNoHpEdit.Text = pelanggan.no_hp

        ' Show the edit form
        pnlEditForm.Visible = True
        ViewState("id_pelanggan") = id_pelanggan
    End Sub

    Protected Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        If e.CommandName = "Edit" Then
            Dim id_pelanggan As Integer = Convert.ToInt32(e.CommandArgument)
            Dim pelanggan As New Pelanggan_M
            pelanggan = pelanggan.getPelangganById(id_pelanggan)

            ' Populate the edit form with the selected record's data
            txtNamaEdit.Text = pelanggan.nama
            txtEmailEdit.Text = pelanggan.email
            txtNoHpEdit.Text = pelanggan.no_hp

            ' Show the edit form
            pnlEditForm.Visible = True
            ViewState("id_pelanggan") = id_pelanggan
        End If
    End Sub

    Protected Sub BtnUpdate_Click(sender As Object, e As EventArgs)
        Dim id_pelanggan As Integer = Convert.ToInt32(ViewState("id_pelanggan"))
        Dim pelanggan As New Pelanggan_M
        pelanggan.updatePelanggan(id_pelanggan, txtNamaEdit.Text, txtEmailEdit.Text, txtNoHpEdit.Text)
        GridView1.DataSource = pelanggan.getAllPelanggan()
        GridView1.DataBind()

        ' Clear the edit form
        txtNamaEdit.Text = String.Empty
        txtEmailEdit.Text = String.Empty
        txtNoHpEdit.Text = String.Empty

        ' Hide the edit form
        pnlEditForm.Visible = False
        Response.Redirect("Pelanggan.aspx")
    End Sub

    Protected Sub BtnCancel_Click(sender As Object, e As EventArgs)
        ' Clear the edit form
        txtNamaEdit.Text = String.Empty
        txtEmailEdit.Text = String.Empty
        txtNoHpEdit.Text = String.Empty

        ' Hide the edit form
        pnlEditForm.Visible = False
    End Sub
End Class