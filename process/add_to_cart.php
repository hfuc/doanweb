<?php
//kết nối
require_once('connect.php');
    session_start();
    $id="";
// Kiểm tra xem biến id có tồn tại trong URL không
    if(isset($_GET['id']))
    {
        $id=$_GET['id'];
// Kiểm tra xem mục đích có giỏ hàng đã được khởi tạo chưa
        if(empty($_SESSION['cart'][$id]))
    {
// Nếu chưa khởi tạo, thực hiện truy vấn để lấy thông tin sản phẩm từ cơ sở dữ liệu
        $sql="select * from san_pham where id='$id'";
        $result=mysqli_query($connect,$sql);
        $row=mysqli_fetch_assoc($result);
// Lưu thông tin sản phẩm vào giỏ hàng
        $_SESSION['cart'][$id]['ten_san']=$row['ten_san'];
        $_SESSION['cart'][$id]['anh']=$row['anh'];
        $_SESSION['cart'][$id]['khuyen_mai']=$row['khuyen_mai'];
        $_SESSION['cart'][$id]['so_luong']=1;
// Hiển thị thông báo thành công và chuyển hướng về trang chủ
        echo '<script>alert("Thêm giỏ hàng thành công");</script>';
        echo '<script>window.location.href = "../index.php";</script>';
    }else{
// Nếu đã tồn tại trong giỏ hàng, tăng số lượng lên 1
        $_SESSION['cart'][$id]['so_luong']++;
// Hiển thị thông báo thành công và chuyển hướng về trang chủ
        echo '<script>alert("Thêm giỏ hàng thành công");</script>';
        echo '<script>window.location.href = "../index.php";</script>';
    }
    }
// Đóng kết nối tới cơ sở dữ liệu
    mysqli_close($connect);
?>

<?php


?>