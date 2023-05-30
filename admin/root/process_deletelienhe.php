<?php  
include('control.php');
$get_data=new admin();
  if(isset($_GET['id'])){
    $id=$_GET['id'];
    $delete_lienhe=$get_data->delet_lienhe($id);
    if($delete_lienhe){
        echo '<script>alert("Xóa liên hệ thành công!");</script>';
        echo '<script>window.location.href = "contact.php";</script>';
    }
  }
?>