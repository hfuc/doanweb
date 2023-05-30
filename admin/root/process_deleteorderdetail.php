<?php  
include('control.php');
$get_data=new admin();
  if(isset($_GET['id'])){
    $id=$_GET['id'];
    $delete_order=$get_data->delete_orderdetail($id);
    if($delete_order){
        echo '<script>alert("Xóa thành công!");</script>';
        echo '<script>window.location.href = "order.php";</script>';
        
    }
   else{
    var_dump($process_deleteorderdetail);
   }
  }
?>