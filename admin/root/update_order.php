<?php
session_start();
include('control.php');
$get_data = new admin();
if(isset($_GET['id'])){
    $id=$_GET['id'];
    $get_order=$get_data->get_order_id($id);
    $row=mysqli_fetch_assoc($get_order);
    $id_khach_hang=$row['customer_id'];
    $khach_hang=$row['name_receiver'];
    $sdt=$row['phone_receiver'];
    $diachi=$row['address_receiver'];
    $tong_tien=$row['total_price'];
    $trang_thai=$row['status'];
    $ngay_dat=$row['created_at'];
    $phuong_thuc=$row['cart_payment'];
    
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa Đơn Hàng</title>
    <?php include('css.php') ?>
</head>

<body>
    <div id="wrapper">
        <?php include('sidebar.php') ?>
        <div id="content-wrapper" class="d-flex flex-column">
            <?php include('header.php') ?>
            <div class="container">
            <form class="form" method="POST" action="process_updateorder.php">
            <input type="text" name="id" value="<?php echo $row['id'] ?>" hidden>
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">ID khách hàng:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="text" class="form-control" name="customer_id" placeholder="" value="<?php echo $id_khach_hang ?>">
            </div>
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">Tên khách hàng:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="text" class="form-control" name="name_receiver" placeholder="" value="<?php echo $khach_hang ?>">
            </div>
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">Số điện thoại	:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="number" class="form-control" name="phone_receiver" placeholder="" value="<?php echo $sdt ?>">
            </div>
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">Địa chỉ	:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="text" class="form-control" name="address_receiver" placeholder="" value="<?php echo $diachi ?>">
            </div>
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">Tổng tiền:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="number" class="form-control" name="total_price" placeholder="" value="<?php echo $tong_tien ?>">
            </div>image.png
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">Trạng thái:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="text" class="form-control" name="status" placeholder="" value="<?php echo $trang_thai ?>">
            </div>
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">Ngày đặt	:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="date" class="form-control" name="created_at" placeholder="" value="<?php echo $ngay_dat ?>">
            </div>
            <div class="form-group">
                <label style="font-size: 18px;margin-bottom: 20px;font-weight: bold;">Phương thức:</label>
                <input style="height: 40px;width: 80%;font-size: 14px;color:black;" type="text" class="form-control" name="cart_payment" placeholder="" value="<?php echo $phuong_thuc ?>">
            </div>
            <br>
            

                <input name='add' style="background-color: black;
                            width: 300px;
                            height: 45px;
                            color: white;
                            margin-bottom: 50px;
                            border-radius: 5px;" type="submit" value="Sửa Đơn Hàng">
            </div>
        </form>
            </div>
            </div>
        </div>
        <?php include('js.php') ?>
</body>

</html>