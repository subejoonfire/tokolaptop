<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Berandapub.aspx.vb" Inherits="Cobai.Berandapub" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>Toko Laptop Hamim | Landing, Ecommerce & Business</title>

    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU1mVKMk4lf5xgKcjOUxLdp/nYYMqPfi3KxGI" crossorigin="anonymous" />
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-touch-icon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png" />
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/favicon.ico" />
    <link rel="manifest" href="assets/img/favicons/manifest.json" />
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png" />
    <meta name="theme-color" content="#ffffff" />
    <link href="assets/css/theme.css" rel="stylesheet" />
    <link href="vendors/swiper/swiper-bundle.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=PT+Serif:wght@400;700&display=swap" rel="stylesheet" />
</head>
<body data-bs-spy="scroll" data-bs-target="#navbar">
    <form id="form1" runat="server">
        <div>

            <main class="main" id="top">
                <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3 d-block" data-navbar-on-scroll="data-navbar-on-scroll">
                    <div class="container">
                        <a class="navbar-brand d-inline-flex" href="index.html">
                            <img class="card-img" src="assets/img/gallery/logo.png" alt="..." />
                            <span class="fs-2 fw-bold text-primary ms-2">TOKO<span class="text-warning">HAMIM</span></span>
                        </a>
                        <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                                <li class="nav-item px-2"><a class="nav-link fw-bold" aria-current="page" href="produk.aspx">Laptop Gaming</a></li>
                            </ul>
                            <a class="btn btn-primary" href="#LoginModal" data-bs-toggle="modal">Login</a>
                        </div>
                    </div>
                </nav>

                <!-- Modal Login -->
                <div class="modal fade" id="LoginModal" tabindex="-1" aria-labelledby="LoginModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="LoginModalLabel">Login</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <asp:Label runat="server" ID="LblError" CssClass="text-danger"></asp:Label>
                                <div class="mb-3">
                                    <label for="Username" class="form-label">Username</label>
                                    <asp:TextBox runat="server" ID="Username" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <label for="Password" class="form-label">Password</label>
                                    <asp:TextBox runat="server" ID="Password" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                                </div>
                                <asp:Button runat="server" Text="Login" CssClass="btn btn-primary" OnClick="Login_Click" />
                            </div>
                        </div>
                    </div>
                </div>


                <!-- Isi halaman lainnya -->
                <section class="py-0" id="header">
                    <div class="container">
                        <div class="row align-items-center min-vh-75 min-vh-md-50">
                            <div class="col-12 text-center py-8">
                                <h1 class="lh-sm fs-lg-6 fs-xxl-7">laptop Gaming di toko hamim
                                    <br />
                                </h1>
                                <p class="text-700">Kualitas laptop bagus dan terjamin 100% rekomendasi  </p>
                            </div>
                        </div>
                        <div class="container-fluid">
                            <div class="row gx-2">
                                <div class="col-12">
                                    <div class="swiper-container pb-4 overflow-hidden" data-pagination-target="pagination1">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide h-auto">
                                                <img class="w-100" src="assets/img/gallery/gaming.jpeg" alt="products" />
                                            </div>
                                            <div class="swiper-slide h-auto">
                                                <img class="w-100" src="assets/img/gallery/merk-laptop-Asus_.jpeg" alt="products" />
                                            </div>
                                            <div class="swiper-slide h-auto">
                                                <img class="w-100" src="assets/img/gallery/OIP (2).jpeg" alt="products" />
                                            </div>
                                            <div class="swiper-slide h-auto">
                                                <img class="w-100" src="assets/img/gallery/ROG-Strix-SCAR-15-2022_1280x720-1.jpg" alt="products" />
                                            </div>
                                            <div class="swiper-slide h-auto">
                                                <img class="w-100" src="assets/img/gallery/souletZ.jpeg" alt="products" />
                                            </div>
                                            <div class="swiper-slide h-auto">
                                                <img class="w-100" src="assets/img/gallery/gaming.jpeg" alt="products" />
                                            </div>
                                            <div class="swiper-slide h-auto">
                                                <img class="w-100" src="assets/img/gallery/merk-laptop-Asus_.jpeg" alt="products" />
                                            </div>
                                            <div class="swiper-slide h-auto">
                                                <img class="w-100" src="assets/img/gallery//OIP (2).jpeg" alt="products" />
                                            </div>
                                            <div class="swiper-slide h-auto">
                                                <img class="w-100" src="assets/img/gallery/ROG-Strix-SCAR-15-2022_1280x720-1.jpeg" alt="products" />
                                            </div>
                                            <div class="swiper-slide h-auto">
                                                <img class="w-100" src="assets/img/gallery/souletZ.jpeg" alt="products" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="py-6">
                    <div class="container">
                        <div class="row"></div>
                        <hr class="mt-6" />
                    </div>
                </section>
            </main>

            <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6kIglLznCtBH9E8Q4Xt5q6tx5xLecZj+NDAp1XgK1taPA/cpP5k" crossorigin="anonymous"></script>
            <script src="vendors/@popperjs/popper.min.js"></script>
            <script src="vendors/bootstrap/bootstrap.min.js"></script>
            <script src="vendors/is/is.min.js"></script>
            <script src="vendors/swiper/swiper-bundle.min.js"></script>
            <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
            <script src="vendors/fontawesome/all.min.js"></script>
            <script src="assets/js/theme.js"></script>
        </div>
    </form>
</body>
</html>
