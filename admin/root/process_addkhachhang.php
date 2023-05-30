<?php 
   include ('control.php');
   $get_data=new admin();
   if(isset($_POST['name'])&&isset($_POST['email'])&&isset($_POST['phone_number'])&&isset($_POST['address'])&&isset($_POST['password'])){
       $tenkh=$_POST['name'];
       $mail=$_POST['email'];
       $sdt=$_POST['phone_number'];
       $dia_chi=$_POST['address'];
       $mk=$_POST['password'];
      
       $add_user=$get_data->add_users($tenkh,$mail,$sdt,$dia_chi,$mk);
       if($add_user){
           echo '<script>alert("Thêm sản phẩm thành công!");</script>';
           echo '<script>window.location.href = "user.php";</script>';
       }else{
           echo "Lỗi";
         
            var_dump($add_user);
        }
            
        }
       
   else{
       echo '<script>alert("Vui lòng điền đầy đủ thông tin!");</script>';
       echo '<script>window.location.href = "add_khachhang.php";</script>';
   }
?>