<?php
    include ('control.php');
    $get_data=new admin();
    if(isset($_POST['name'])&&isset($_POST['email'])&&isset($_POST['phone_number'])&&isset($_POST['address'])&&isset($_POST['password'])&&isset($_POST['id'])){
        $tenkh=$_POST['name'];
        $mail=$_POST['email'];
        $sdt=$_POST['phone_number'];
        $dia_chi=$_POST['address'];
        $mk=$_POST['password'];
        $id=$_POST['id'];
        $update_users=$get_data->update_users($tenkh,$mail,$sdt,$dia_chi,$mk,$id);
        if($update_users){
            echo '<script>alert("Sửa sản phẩm thành công!");</script>';
            echo '<script>window.location.href = "user.php";</script>';
        }else{
            echo "Lỗi";
        }
    }else{
        echo '<script>alert("Vui lòng điền đầy đủ thông tin!");</script>';
        echo '<script>window.location.href = "update_users.php";</script>';
    }
?>