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
<?php include('header.php') ?>
    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Liên hệ chúng tôi</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="index.php">Trang chủ</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Liên Hệ</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Liên hệ với bất kỳ câu hỏi nào</span></h2>
        </div>
        <div class="row px-xl-5">
            <div class="col-lg-7 mb-5">
                <div class="contact-form">
                    <div id="success"></div>
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                            <input type="text" class="form-control" id="name" placeholder="Tên"
                                required="required" data-validation-required-message="Vui lòng điền tên" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="email" class="form-control" id="email" placeholder="Email Của Bạn"
                                required="required" data-validation-required-message="Vui lòng điền Email" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" id="subject" placeholder="Subject"
                                required="required" data-validation-required-message="Please enter a subject" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <textarea class="form-control" rows="6" id="message" placeholder="Tin Nhắn"
                                required="required"
                                data-validation-required-message="Please enter your message"></textarea>
                            <p class="help-block text-danger"></p>
                        </div>
                        <div>
                            <button class="btn btn-primary py-2 px-4" type="submit" id="sendMessageButton">Gửi Liên Hệ</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-5 mb-5">
                <h5 class="font-weight-semi-bold mb-3">Liên lạc</h5>
                <p></p>
                <div class="d-flex flex-column mb-3">
                    <h5 class="font-weight-semi-bold mb-3">Cửa hàng 1</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>235 Hoàng Quốc Việt, Hà Nội, VN</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>hvp@gmail.com</p>
                    <p class="mb-2"><i class="fa fa-phone-alt text-primary mr-3"></i>08765 222 88</p>
                </div>
                <div class="d-flex flex-column">
                    <h5 class="font-weight-semi-bold mb-3">Store 2</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>1008 Đường Láng, Hà Nội, VN</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>vvt@gmail.com</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>012 345 67890</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
<?php include('footer.php') ?>
<?php include('js.php') ?>
</body>

</html>