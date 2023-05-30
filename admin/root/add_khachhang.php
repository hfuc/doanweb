<?php
session_start();
include('control.php');
$get_data = new admin();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Khách Hàng</title>
    <?php include('css.php') ?>
</head>

<body>
    <div id="wrapper">
        <?php include('sidebar.php') ?>
        <div id="content-wrapper" class="d-flex flex-column">
            <?php include('header.php') ?>
            <div class="container">
            <form class="form" method="POST" action="process_addkhachhang.php">
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">Tên Khách Hàng:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="text" class="form-control" name="name" placeholder="">
            </div>
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">Email:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="text" class="form-control" name="email" placeholder="">
            </div>
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">Số điện thoại	:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="number" class="form-control" name="phone_number" placeholder="">
            </div>
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">Địa chỉ	:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="text" class="form-control" name="address" placeholder="">
            </div>
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">Mật Khẩu:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="text" class="form-control" name="password" placeholder="">
            </div>
            
            <br>
            <div class="form-group">

                <input name='add' style="background-color: black;
                            width: 300px;
                            height: 45px;
                            color: white;
                            margin-bottom: 50px;
                            border-radius: 5px;" type="submit" value="Thêm khách hàng">
            </div>
        </form>
            </div>
            </div>
        </div>
        <?php include('js.php') ?>
</body>

</html>