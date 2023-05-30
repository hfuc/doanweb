<?php
    include ('control.php');
    $get_data=new admin();
    if(isset($_POST['customer_id'])&&isset($_POST['name_receiver'])&&isset($_POST['phone_receiver'])&&isset($_POST['address_receiver'])&&isset($_POST['total_price'])&&isset($_POST['status'])&&isset($_POST['created_at'])&&isset($_POST['cart_payment'])&&isset($_POST['id'])){
        $id_khach_hang=$_POST['customer_id'];
        $khach_hang=$_POST['name_receiver'];
        $sdt=$_POST['phone_receiver'];
        $diachi=$_POST['address_receiver'];
        $tong_tien=$_POST['total_price'];
        $trang_thai=$_POST['status'];
        $ngay_dat=$_POST['created_at'];
        $phuong_thuc=$_POST['cart_payment'];
        $id=$_POST['id'];
        
        $update_order=$get_data->update_order($id_khach_hang,$khach_hang,$sdt,$diachi,$tong_tien,$trang_thai,$ngay_dat,$phuong_thuc,$id);
        if($update_order){
            echo '<script>alert("Sửa đơn hàng thành công!");</script>';
            echo '<script>window.location.href = "order.php";</script>';
        }else{
            echo "Lỗi";
            var_dump($update_order);
        }
    }else{
        echo '<script>alert("Vui lòng điền đầy đủ thông tin!");</script>';
        echo '<script>window.location.href = "update_order.php";</script>';
    }
?>