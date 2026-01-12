<?php
    require_once ('layout/superior.php');
    require_once ('../backend/conecdb.php');

    if(isset($_POST['movie'])) {
        $id = $_POST['mid'];
        $mname = $_POST['mname'];
        $myear = $_POST['myear'];
        $mgenre = $_POST['mgenre'];
        $mdesc = $_POST['mdesc'];
        $mcost = $_POST['mcost'];
        $mtrailer = $_POST['mtrailer'];
        $mpic = $_POST['mpic'];

        $stmt = $conex->prepare("UPDATE movies SET movie_name=?, movie_year=?, movie_genre=?, movie_description=?, movie_cost=?, movie_trailer=?, movie_picture=? WHERE movie_id=?");
        $stmt->bind_param("ssssdssi", $mname, $myear, $mgenre, $mdesc, $mcost, $mtrailer, $mpic, $id);
        $result = $stmt->execute();
        
        if($result) {
            echo '<script> alert("Succesfully updated!")</script>';
            echo '<script type="text/javascript">';
            echo 'window.location= "moviest.php";';
            echo '</script>';
            exit();
        } else {
            echo '<script> alert("Error updating movie!")</script>';
            echo '<script type="text/javascript">';
            echo 'window.history.back();';
            echo '</script>';
            exit();
        }
    }  
    
    if(isset($_POST['user'])) {
        $id = $_POST['uid'];
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $uname = $_POST['uname'];
        $upass = $_POST['upass'];
        $encrypted = password_hash($upass, PASSWORD_DEFAULT);
        $mspent = $_POST['mspent'];
        $mowned = $_POST['mowned'];
        
        $stmt = $conex->prepare("UPDATE users SET user_firstname=?, user_lastname=?, username=?, password=?, money_spent=?, movies_owned=? WHERE user_id=?");
        $stmt->bind_param("ssssdii", $fname, $lname, $uname, $encrypted, $mspent, $mowned, $id);
        $result = $stmt->execute();
        
        if($result) {
            echo '<script> alert("Succesfully updated!")</script>';
            echo '<script type="text/javascript">';
            echo 'window.location= "userst.php";';
            echo '</script>';
            exit();
        }
    }

    if(isset($_POST['sale'])) {
        $id = $_POST['sid'];
        $uid = $_POST['uid'];
        $mid = $_POST['mid'];
        $salesd = $_POST['salesd'];
        $payment = $_POST['payment'];
        $cnum = $_POST['cnum'];
        $cexp = $_POST['cexp'];
        $cname = $_POST['cname'];
        $amount = $_POST['amount'];
        
        $stmt = $conex->prepare("UPDATE sales SET user_id=?, movie_id=?, sales_date=?, payment_method=?, card_number=?, card_expiration=?, card_name=?, amount=? WHERE sales_id=?");
        $stmt->bind_param("iisssssdi", $uid, $mid, $salesd, $payment, $cnum, $cexp, $cname, $amount, $id);
        $result = $stmt->execute();
        
        if($result) {
            echo '<script> alert("Succesfully updated!")</script>';
            echo '<script type="text/javascript">';
            echo 'window.location= "salest.php";';
            echo '</script>';
            exit();
        }
    }

    require_once ('layout/inferior.php');
?>