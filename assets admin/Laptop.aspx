<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Laptop.aspx.vb" Inherits="Cobai.Laptop" %>

<%@ Register TagPrefix="uc" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc" TagName="Navbar" Src="Navbar.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="Footer.ascx" %>

<uc:Header runat="server" />
<uc:Navbar runat="server" />
<form id="form1" runat="server">
    <div class="container-fluid py-4">
        <div class="row">
            <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
                <div class="card">
                    <div class="card-body p-3">
                        <div class="row">
                            <div class="col-8">
                                <div class="numbers">
                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Hasil Penjualan</p>
                                    <h5 class="font-weight-bolder">$53,000
                                    </h5>
                                    <p class="mb-0">
                                        <span class="text-success text-sm font-weight-bolder">+55%</span>
                                        since yesterday
                                    </p>
                                </div>
                            </div>
                            <div class="col-4 text-end">
                                <div class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
                                    <i class="ni ni-money-coins text-lg opacity-10" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
                <div class="card">
                    <div class="card-body p-3">
                        <div class="row">
                            <div class="col-8">
                                <div class="numbers">
                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Pelanggan</p>
                                    <h5 class="font-weight-bolder">2,300
                                    </h5>
                                    <p class="mb-0">
                                        <span class="text-success text-sm font-weight-bolder">+3%</span>
                                        since last week
                                    </p>
                                </div>
                            </div>
                            <div class="col-4 text-end">
                                <div class="icon icon-shape bg-gradient-danger shadow-danger text-center rounded-circle">
                                    <i class="ni ni-world text-lg opacity-10" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
                <div class="card">
                    <div class="card-body p-3">
                        <div class="row">
                            <div class="col-8">
                                <div class="numbers">
                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Produk</p>
                                    <h5 class="font-weight-bolder">+3,462
                                    </h5>
                                    <p class="mb-0">
                                        <span class="text-danger text-sm font-weight-bolder">-2%</span>
                                        since last quarter
                                    </p>
                                </div>
                            </div>
                            <div class="col-4 text-end">
                                <div class="icon icon-shape bg-gradient-success shadow-success text-center rounded-circle">
                                    <i class="ni ni-paper-diploma text-lg opacity-10" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6">
                <div class="card">
                    <div class="card-body p-3">
                        <div class="row">
                            <div class="col-8">
                                <div class="numbers">
                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Sales</p>
                                    <h5 class="font-weight-bolder">$103,430
                                    </h5>
                                    <p class="mb-0">
                                        <span class="text-success text-sm font-weight-bolder">+5%</span> than last month
                                    </p>
                                </div>
                            </div>
                            <div class="col-4 text-end">
                                <div class="icon icon-shape bg-gradient-warning shadow-warning text-center rounded-circle">
                                    <i class="ni ni-cart text-lg opacity-10" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-lg-7 mb-lg-0 mb-4">
                    <div class="card z-index-2 h-100">
                        <div class="card-body">
                            <h5 class="card-title">Input Laptop</h5>
                            <div class="form-group">
                                <label for="nama_laptop">Nama Laptop</label>
                                <asp:TextBox ID="txtNamaLaptop" runat="server" CssClass="form-control" placeholder="Enter Nama Laptop"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="harga">Harga</label>
                                <asp:TextBox ID="txtHarga" runat="server" CssClass="form-control" placeholder="Enter Harga"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="deskripsi">Deskripsi</label>
                                <asp:TextBox ID="txtDeskripsi" runat="server" CssClass="form-control" placeholder="Enter Deskripsi" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <asp:Button ID="BtnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="BtnSubmit_Click" />
                        </div>
                        <asp:Panel ID="pnlEditForm" runat="server" Visible="false">
                            <h5>Edit Form</h5>
                            <div class="form-group">
                                <label for="nama_laptop_edit">Nama Laptop</label>
                                <asp:TextBox ID="txtNamaLaptopEdit" runat="server" CssClass="form-control" placeholder="Enter Nama Laptop"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="harga_edit">Harga</label>
                                <asp:TextBox ID="txtHargaEdit" runat="server" CssClass="form-control" placeholder="Enter Harga"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="deskripsi_edit">Deskripsi</label>
                                <asp:TextBox ID="txtDeskripsiEdit" runat="server" CssClass="form-control" placeholder="Enter Deskripsi" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <asp:Button ID="BtnUpdate" runat="server" CssClass="btn btn-primary" Text="Update" OnClick="BtnUpdate_Click" />
                            <asp:Button ID="BtnCancel" runat="server" CssClass="btn btn-secondary" Text="Cancel" OnClick="BtnCancel_Click" />
                        </asp:Panel>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_laptop" CssClass="table table-bordered table-striped" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
                            <columns>
                                <asp:BoundField DataField="id_laptop" HeaderText="ID Laptop" />
                                <asp:BoundField DataField="nama_laptop" HeaderText="Nama Laptop" />
                                <asp:BoundField DataField="harga" HeaderText="Harga" />
                                <asp:BoundField DataField="deskripsi" HeaderText="Deskripsi" />
                                <asp:TemplateField HeaderText="Actions">
                                    <itemtemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" Text="Edit" class="btn btn-sm btn-primary" CommandArgument='<%# Eval("id_laptop") %>' />
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete" Text="Delete" class="btn btn-sm btn-danger" OnClientClick="return confirm('Are you sure you want to delete this record?');" CommandArgument='<%# Eval("id_laptop") %>' />
                                    </itemtemplate>
                                </asp:TemplateField>
                            </columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
</form>

<uc:Footer runat="server" />
