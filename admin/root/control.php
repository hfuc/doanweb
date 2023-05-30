<?php
    include  '../connect.php';
    class admin{
        function get_product($page){
            global $connect;
            $no_of_records_per_page = 5;
            $offset = ($page - 1) * $no_of_records_per_page;
            $sql = "SELECT * FROM san_pham LIMIT $offset, $no_of_records_per_page";
            $query=mysqli_query($connect,$sql);
            
                return $query;
            
        }
        function get_user(){
            global $connect;
            $sql = "SELECT * FROM users ";
            $query=mysqli_query($connect,$sql);
            
                return $query;
           
        }
        function get_contact(){
            global $connect;
            $sql = "SELECT * FROM lien_he";
            $query=mysqli_query($connect,$sql);
            return $query;
        }
        function get_order(){
            global $connect;
            $sql = "SELECT * FROM orders";
            $query=mysqli_query($connect,$sql);
            return $query;
        }
        function get_vnpay(){
            global $connect;
            $sql = "SELECT * FROM vn_pay";
            $query=mysqli_query($connect,$sql);
            return $query;
        }
        function get_orderdetail(){
            global $connect;
            $sql = "SELECT * FROM order_product";
            $query=mysqli_query($connect,$sql);
            return $query;
        }
        function get_page(){
            global $connect;
            $no_of_records_per_page = 5 ;
            $total_pages_sql = "SELECT COUNT(*)  FROM san_pham ";
            $result = mysqli_query($connect, $total_pages_sql);
            $total_rows = mysqli_fetch_array($result)[0];
            $total_pages = ceil($total_rows / $no_of_records_per_page);
            return $total_pages;
        }
        function get_order_id($id){
            global $connect;
            $sql="SELECT * FROM orders WHERE id=$id";
            $query=mysqli_query($connect,$sql);
            return $query;
        }
        // function get_users_id($id){
        //     global $connect;
        //     $sql="SELECT * FROM orders WHERE id=$id";
        //     $query=mysqli_query($connect,$sql);
        //     return $query;
        // }
        function get_user_id($id){
            global $connect;
            $sql="SELECT * FROM users WHERE id=$id";
            $query=mysqli_query($connect,$sql);
            return $query;
        }
        function get_product_id($id){
            global $connect;
            $sql="SELECT * FROM san_pham WHERE id=$id";
            $query=mysqli_query($connect,$sql);
            return $query;
        }
        function update_product($ten_san,$mo_ta,$anh,$gia,$khuyen_mai,$danh_muc,$id){
            global $connect;
            $sql="UPDATE san_pham SET ten_san='$ten_san',mo_ta='$mo_ta',anh='$anh',gia='$gia',khuyen_mai='$khuyen_mai',danh_muc='$danh_muc' WHERE id=$id";
            $query=mysqli_query($connect,$sql);
            if($query){
                return($query);
            }
        }
        function add_product($ten_san,$mo_ta,$anh,$gia,$khuyen_mai,$danh_muc){
            global $connect;
            $sql="INSERT INTO san_pham(ten_san, mo_ta, anh, gia,khuyen_mai, danh_muc) VALUES ('$ten_san','$mo_ta','$anh','$gia','$khuyen_mai','$danh_muc')";
            $query=mysqli_query($connect,$sql);
            if($query){
                return($query);
            }
        }
        function delet_product($id){
            global $connect;
            $sql="DELETE FROM san_pham WHERE id=$id";
            $query=mysqli_query($connect,$sql);
            if($query){
                return($query);
            }
        }

         function delet_lienhe($id){
            global $connect;
            $sql="DELETE FROM lien_he WHERE id=$id";
            $query=mysqli_query($connect,$sql);
            if($query){
                return($query);
            }
        }
        function delet_users($id){
            global $connect;
            $sql="DELETE FROM users WHERE id=$id";
            $query=mysqli_query($connect,$sql);
            if($query){
                return($query);
            }
        }
        function update_order($id_khach_hang,$khach_hang,$sdt,$diachi,$tong_tien,$trang_thai,$ngay_dat,$phuong_thuc,$id){
            global $connect;
            $sql="UPDATE orders SET customer_id='$id_khach_hang',name_receiver='$khach_hang',phone_receiver='$sdt',address_receiver='$diachi',total_price='$tong_tien',status='$trang_thai',created_at='$ngay_dat',cart_payment='$phuong_thuc' WHERE id=$id";
            $query=mysqli_query($connect,$sql);
            if($query){
                return($query);
            }
    }
    function delete_order($id){
        global $connect;
        $sql="DELETE FROM orders WHERE id=$id";
        $query=mysqli_query($connect,$sql);
        if($query){
            return($query);
        }
    }
    function delete_orderdetail($id){
        global $connect;
        $sql="DELETE FROM order_product WHERE id=$id";
        $query=mysqli_query($connect,$sql);
        if($query){
            return($query);
        }
    }
    function add_users($tenkh,$mail,$sdt,$dia_chi,$mk){
        global $connect;
        $sql="INSERT INTO users(name,email,phone_number,address,password) VALUES ('$tenkh','$mail','$sdt','$dia_chi','$mk')";
        $query=mysqli_query($connect,$sql);
        if($query){
            return($query);
        }
        
    }
    function update_users($tenkh,$mail,$sdt,$dia_chi,$mk,$id){
        global $connect;
        $sql="UPDATE users SET name='$tenkh',email='$mail',phone_number='$sdt',address='$dia_chi',password='$mk' WHERE id=$id";
        $query=mysqli_query($connect,$sql);
        if($query){
            return($query);
        }
}
    }