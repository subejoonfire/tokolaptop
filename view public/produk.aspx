<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="produk.aspx.vb" Inherits="Cobai.produk1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                   <div>
    <h2>Daftar Menu Laptop</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="id_laptop" HeaderText="ID laptop" />
            <asp:BoundField DataField="nama_laptop" HeaderText="Nama laptop" />
            <asp:BoundField DataField="harga" HeaderText="Harga" />
            <asp:BoundField DataField="deskripsi" HeaderText="Deskripsi" />
        </Columns>
    </asp:GridView>
</div>
    </form>
    <p>
        keterangan:</p>
    <p>
        2291282 axioo 25.000.000.000. spek dewa</p>
</body>
</html>
