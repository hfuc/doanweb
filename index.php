<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Chất - Shop Mũ Chất</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    <?php include('css.php') ?>
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid">
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="" class="text-decoration-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">SHOP</span>Mũ Chất</h1>
                </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Tìm Kiếm Mũ Nón">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-6 text-right">
                <<?php
                        $total = $num = 0;
                        if (isset($_SESSION['cart'])) {
                            foreach ($_SESSION['cart'] as $id => $value) {
                                $sum = $value['so_luong'];
                                $total += $sum;
                            }
                                }else{
                                    echo '<td colspan="5"><p style="font-size: 20px;font-weight: bold;text-align: center;"></p></td>';
                                }
            ?>
                <a href="" class="btn border">
                    <i class="fas fa-heart text-primary"></i>

                    <span class="badge">0</span>
                </a>
                <a href="cart.php" class="btn border">
                    <i class="fas fa-shopping-cart text-primary"></i>
                    <span class="badge"><?php echo $total ?></span>
                </a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid mb-5">
        <div class="row border-top px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                    <h6 class="m-0">Danh Mục</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
                    <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                        <a href="shop.php?danh_muc=MLB" class="nav-item nav-link">MLB</a>
                        <a href="shop.php?danh_muc=ADIDAS" class="nav-item nav-link">Adidas</a>
                        <a href="shop.php?danh_muc=Versace" class="nav-item nav-link">Versace</a>
                        <a href="shop.php?danh_muc=ESSENTIALS" class="nav-item nav-link">ESSENTIALS</a>
                        <a href="shop.php?danh_muc=Gucci" class="nav-item nav-link">Gucci</a>
                    </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">SHOP</span>MŨ CHẤT</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="index.php" class="nav-item nav-link active">Trang Chủ</a>
                            <a href="shop_all.php" class="nav-item nav-link">Cửa Hàng</a>
                            
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Mua Sắm</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="cart.php" class="dropdown-item">Giỏ Hàng</a>
                                    <a href="checkout.php" class="dropdown-item">Thanh Toán</a>
                                </div>
                            </div>
                            <a href="contact.php" class="nav-item nav-link">Liên Hệ</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0">
                        <?php if(isset($_SESSION['id_user'])) {?>
                                <a href="logout.php" class="nav-item nav-link">Đăng Xuất</a>
                            <?php } else { ?>
                                <a href="login.php" class="nav-item nav-link">Đăng Nhập</a>
                                <a href="register.php" class="nav-item nav-link">Đăng Ký</a>
                            <?php } ?> 
                        </div>
                    </div>
                </nav>
                <div id="header-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active" style="height: 410px;">
                            <img class="img-fluid" src="img/carousel-1.png" alt="Image">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h4 class="text-light text-uppercase font-weight-medium mb-3">Giảm 10% cho đơn hàng đầu tiên của bạn</h4>
                                    <h3 class="display-4 text-white font-weight-semi-bold mb-4">Thời Trang ADIDAS</h3>
                                    <a href="shop.php?danh_muc=ADIDAS" class="btn btn-light py-2 px-3">MUA NGAY</a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item" style="height: 410px;">
                            <img class="img-fluid" src="img/carousel-2.jpg" alt="Image">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h4 class="text-light text-uppercase font-weight-medium mb-3">Giảm 10% cho đơn hàng đầu tiên của bạn</h4>
                                    <h3 class="display-4 text-white font-weight-semi-bold mb-4">GIÁ CẢ HỢP LÝ CHO MŨ NÓN GUCCI</h3>
                                    <a href="shop.php?danh_muc=Gucci" class="btn btn-light py-2 px-3">MUA NGAY</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                        <div class="btn btn-dark" style="width: 45px; height: 45px;">
                            <span class="carousel-control-prev-icon mb-n2"></span>
                        </div>
                    </a>
                    <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                        <div class="btn btn-dark" style="width: 45px; height: 45px;">
                            <span class="carousel-control-next-icon mb-n2"></span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Navbar End -->


    <!-- Featured Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Sản phẩm chất lượng</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Miễn phí vận chuyển</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Đổi trả trong 14 ngày</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Hỗ trợ 24/7</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->


    <!-- Categories Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px; height: 230px; width:370px;">
                    <p class="text-right">4 sản phẩm</p>
                    <a href="shop.php?danh_muc=MLB" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="img/MLB.png" alt="" style= width:100px; height:100px>
                    </a>
                    <h5 class="font-weight-semi-bold m-0">MLB</h5>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height: 230px; width:370px;">
                    <p class="text-right">9 Sản phẩm</p>
                    <a href="shop.php?danh_muc=Adidas" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="img/Adidas.png" alt="" style= width:120px; height:120px>
                    </a>
                    <h5 class="font-weight-semi-bold m-0">ADIDAS</h5>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height: 230px; width:370px;">
                    <p class="text-right">7 Sản phẩm</p>
                    <a href="shop.php?danh_muc=Versace" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="img/Versace.jpg" alt="" style= width:100px; height:100px>
                    </a>
                    <h5 class="font-weight-semi-bold m-0">Versace</h5>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height: 230px; width:370px;">
                    <p class="text-right">1 Sản phẩm</p>
                    <a href="shop.php?danh_muc=ESSENTIALS" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="img/ESSENTIALS.jpg" alt="" style= width:120px; height:120px>
                    </a>
                    <h5 class="font-weight-semi-bold m-0">ESSENTIALS</h5>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height: 230px; width:370px;">
                    <p class="text-right">10 Sản phẩm</p>
                    <a href="shop.php?danh_muc=Gucci" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="img/Gucci.jpg" alt="" style= width:120px; height:120px>
                    </a>
                    <h5 class="font-weight-semi-bold m-0">Gucci</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Categories End -->


    <!-- Offer Start -->
    <div class="container-fluid offer pt-5">
        <div class="row px-xl-5">
            <div class="col-md-6 pb-4">
                <div class="position-relative bg-secondary text-center text-md-right text-white mb-2 py-5 px-5">
                    <img src="img/offer-1.png" alt="">
                    <div class="position-relative" style="z-index: 1;">
                        <h5 class="text-uppercase text-primary mb-3">ADIDAS Giảm Giá</h5>
                        <h1 class="mb-4 font-weight-semi-bold">Mua nhanh kẻo hết</h1>
                        <a href="shop_sale_1.php" class="btn btn-outline-primary py-md-2 px-md-3">MUA MGAY</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 pb-4">
                <div class="position-relative bg-secondary text-center text-md-left text-white mb-2 py-5 px-5">
                    <img src="img/offer-2.png" alt="">
                    <div class="position-relative" style="z-index: 1;">
                        <h5 class="text-uppercase text-primary mb-3">Gucci SALE lên đến 20%</h5>
                        <h1 class="mb-4 font-weight-semi-bold">HOT HOT HOT</h1>
                        <a href="shop_sale_2.php" class="btn btn-outline-primary py-md-2 px-md-3">MUA NGAY</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Offer End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Sản Phẩm SALE</span></h2>
        </div>
        <div class="row px-xl-5 pb-3">
            <?php include('./process/get_saleproduct.php') ?>

        </div>
    </div>
    <!-- Products End -->


    <!-- Subscribe Start -->
    <div class="container-fluid bg-secondary my-5">
        <div class="row justify-content-md-center py-5 px-xl-5">
            <div class="col-md-6 col-12 py-5">
                <div class="text-center mb-2 pb-2">
                    <h2 class="section-title px-5 mb-3"><span class="bg-secondary px-2">Tiếp Tục được cập nhật</span></h2>
                </div>
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control border-white p-4" placeholder="Nhập email">
                        <div class="input-group-append">
                            <button class="btn btn-primary px-4">Subscribe</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Subscribe End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Sản Phẩm Mới</span></h2>
        </div>
        <div class="row px-xl-5 pb-3">
            <?php include('./process/get_newproduct.php') ?>
        </div>
    </div>
    <!-- Products End -->
    <?php include('footer.php') ?>
    <?php include('js.php')?>

</body>

</html>