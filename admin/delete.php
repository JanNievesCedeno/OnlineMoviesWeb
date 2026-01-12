<?php
    require_once ('layout/superior.php');
    require_once ('../backend/conecdb.php');

    $action = '';
    $id = 0;

    // Validate and sanitize input
    if(isset($_GET['action']) && isset($_GET['id'])) {
        $allowedActions = ['movie', 'user', 'sale'];
        if(in_array($_GET['action'], $allowedActions) && is_numeric($_GET['id'])) {
            $action = $_GET['action'];
            $id = intval($_GET['id']);
        } else {
            die("Invalid parameters");
        }
    } else {
        die("Missing parameters");
    }
                
    if($action == "movie"){
        $stmt = $conex->prepare("DELETE FROM movies WHERE movie_id = ?");
        $stmt->bind_param("i", $id);
        $result = $stmt->execute();

        if($result) {
            echo '<script> alert("Succesfully deleted!")</script>';
            echo '<script type="text/javascript">';
            echo 'window.location= "moviest.php";';
            echo '</script>';
            exit();
        }
    }

    if($action == "user"){
        $stmt = $conex->prepare("DELETE FROM users WHERE user_id = ?");
        $stmt->bind_param("i", $id);
        $result = $stmt->execute();

        if($result) {
            echo '<script> alert("Succesfully deleted!")</script>';
            echo '<script type="text/javascript">';
            echo 'window.location= "userst.php";';
            echo '</script>';
            exit();
        }
    }

    if($action == "sale"){
        $stmt = $conex->prepare("DELETE FROM sales WHERE sales_id = ?");
        $stmt->bind_param("i", $id);
        $result = $stmt->execute();

        if($result) {
            echo '<script> alert("Succesfully deleted!")</script>';
            echo '<script type="text/javascript">';
            echo 'window.location= "salest.php";';
            echo '</script>';
            exit();
        }
    }
    
    require_once ('layout/inferior.php');
?>