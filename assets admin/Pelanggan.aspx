<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Pelanggan.aspx.vb" Inherits="Cobai.Pelanggan" %>

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
                    <h5>Input Form</h5>
                    <div class="form-group">
                        <label for="nama">Nama Pelanggan</label>
                        <asp:TextBox ID="txtNama" runat="server" CssClass="form-control" placeholder="Enter Nama Pelanggan"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="no_hp">No. HP</label>
                        <asp:TextBox ID="txtNoHp" runat="server" CssClass="form-control" placeholder="Enter No. HP"></asp:TextBox>
                    </div>
                    <asp:Button ID="BtnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="BtnSubmit_Click" />
                    <div class="col-lg-5 mb-lg-0 mb-4">
                        <asp:Panel ID="pnlEditForm" runat="server" Visible="false">
                            <h5>Edit Form</h5>
                            <div class="form-group">
                                <label for="nama_edit">Nama Pelanggan</label>
                                <asp:TextBox ID="txtNamaEdit" runat="server" CssClass="form-control" placeholder="Enter Nama Pelanggan"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="email_edit">Email</label>
                                <asp:TextBox ID="txtEmailEdit" runat="server" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="no_hp_edit">No. HP</label>
                                <asp:TextBox ID="txtNoHpEdit" runat="server" CssClass="form-control" placeholder="Enter No. HP"></asp:TextBox>
                            </div>
                            <asp:Button ID="BtnUpdate" runat="server" CssClass="btn btn-primary" Text="Update" OnClick="BtnUpdate_Click" />
                            <asp:Button ID="BtnCancel" runat="server" CssClass="btn btn-secondary" Text="Cancel" OnClick="BtnCancel_Click" />
                        </asp:Panel>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_plgn" CssClass="table table-bordered table-striped">
                            <columns>
                                <asp:BoundField DataField="id_plgn" HeaderText="ID Pelanggan" />
                                <asp:BoundField DataField="nama" HeaderText="Nama Pelanggan" />
                                <asp:BoundField DataField="email" HeaderText="Email" />
                                <asp:BoundField DataField="no_hp" HeaderText="No. HP" />
                                <asp:TemplateField HeaderText="Actions">
                                    <itemtemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("id_plgn") %>' Text="Edit" class="btn btn-sm btn-primary" />
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete" Text="Delete" class="btn btn-sm btn-danger" OnClientClick="return confirm('Are you sure you want to delete this record?');" />
                                    </itemtemplate>
                                </asp:TemplateField>
                            </columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

<uc:Footer runat="server" />
