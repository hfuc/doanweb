<?php  
include('control.php');
$get_data=new admin();
  if(isset($_GET['id'])){
    $id=$_GET['id'];
    $delete_users=$get_data->delet_users($id);
    if($delete_users){
        echo '<script>alert("Xóa sản phẩm thành công!");</script>';
        echo '<script>window.location.href = "user.php";</script>';
    }
  }
?>