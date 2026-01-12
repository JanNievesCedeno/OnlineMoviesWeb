<?php
    require_once ('layout/superior.php');
    require_once ('../backend/conecdb.php');

    $action = '';
    if(isset($_GET['action'])) {
        $allowedActions = ['movie', 'user', 'movieamount'];
        if(in_array($_GET['action'], $allowedActions)) {
            $action = $_GET['action'];
        }
    }

   
    if($action == "movie"){
        ?>
     <form method="POST"> 
        <label for="mname">Movie name:</label><br>
        <input type="text" name="mname"required><br>

        <label for="myear">Movie year:</label><br>
        <input type="text" name="myear" required><br>

        <label for="mgenre">Movie genre:</label><br>
        <input type="text" name="mgenre"required><br>

        <label for="mdesc">Movie description:</label><br>
        <textarea name="mdesc" id="" cols="100" rows="5" required></textarea><br>

        <label for="mcost">Movie cost:</label><br> 
        <input type="text" name="mcost"required><br>

        <label for="mtrailer">Movie trailer:</label><br>
        <input type="text" name="mtrailer"required><br>

        <label for="mpic">Movie picture:</label><br> 
        <input type="text" name="mpic"required> 
        
        <input type="submit" name="movie" value="add movie">
     </form> 
        <?php
     
        if(isset($_POST['movie'])) {
            $mname = $_POST['mname'];
            $myear = $_POST['myear'];
            $mgenre = $_POST['mgenre'];
            $mdesc = $_POST['mdesc'];
            $mcost = $_POST['mcost'];
            $mtrailer = $_POST['mtrailer'];
            $mpic = $_POST['mpic'];

            $stmt = $conex->prepare("INSERT INTO movies (movie_name, movie_year, movie_genre, movie_description, movie_cost, movie_trailer, movie_picture) VALUES (?, ?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("ssssdss", $mname, $myear, $mgenre, $mdesc, $mcost, $mtrailer, $mpic);
            $result = $stmt->execute();
            
            if($result){
                echo '<script> alert("Succesfully added!")</script>';
                echo '<script type="text/javascript">';
                echo 'window.location= "moviest.php";';
                echo '</script>';
            } else {
                echo '<script> alert("Error adding movie!")</script>';
                echo '<script type="text/javascript">';
                echo 'window.history.back();';
                echo '</script>';
            }
        }
        
    }



    if($action == "user"){
        ?>
     <form method="POST"> 
        <label for="fname">First Name:</label><br>
        <input type="text" name="fname"required minlength="2"><br>

        <label for="lname">Last Name:</label><br>
        <input type="text" name="lname" required minlength="2"><br>

        <label for="uname">Username:</label><br>
        <input type="text" name="uname"required minlength="2"><br>

        <label for="upass">Password:</label><br>
        <input type="password" name="upass" required minlength="5">
        
        <input type="submit" name="user" value="add user">
     </form> 
        <?php
     
        if(isset($_POST['user'])) {
            $fname = $_POST['fname'];
            $lname = $_POST['lname'];
            $uname = $_POST['uname'];
            
            // Check if username exists
            $stmt = $conex->prepare("SELECT username FROM users WHERE username = ?");
            $stmt->bind_param("s", $uname);
            $stmt->execute();
            $result = $stmt->get_result();
            
            if ($result->num_rows > 0) {
                echo '<script> alert("Username taken!")</script>';
                echo '<script type="text/javascript">';
                echo 'window.history.back();';
                echo '</script>';
                exit();
            }
            
            $upass = $_POST['upass'];
            $encrypted = password_hash($upass, PASSWORD_DEFAULT);

            // Insert new user
            $stmt = $conex->prepare("INSERT INTO users (user_firstname, user_lastname, username, password, money_spent, movies_owned) VALUES (?, ?, ?, ?, 0, 0)");
            $stmt->bind_param("ssss", $fname, $lname, $uname, $encrypted);
            $result = $stmt->execute();
            
            if($result){
                echo '<script> alert("Succesfully added!")</script>';
                echo '<script type="text/javascript">';
                echo 'window.location= "userst.php";';
                echo '</script>';
            }
        }
    }

    if($action == "movieamount"){
        ?>
     <form method="POST" name="mamount"> 
        <label for="num">New Amount for all movies:</label><br>
        <input type="number" name="num"required><br>
        
        <input type="submit" name="amount" value="add amount">
     </form> 
        <?php
     
        if(isset($_POST['amount'])) {
            $namount = $_POST['num'];
        
            // Fetch all movies
            $stmt = $conex->prepare("SELECT movie_id, movie_amount FROM movies");
            $stmt->execute();
            $result = $stmt->get_result();
            
            // Update each movie amount
            $updateStmt = $conex->prepare("UPDATE movies SET movie_amount = ? WHERE movie_id = ?");
            
            while ($row = $result->fetch_assoc()) {
                $mid = $row['movie_id'];
                $oamount = $row['movie_amount'];
                $tamount = $namount + $oamount;

                $updateStmt->bind_param("ii", $tamount, $mid);
                $updateStmt->execute();
            }

            echo '<script> alert("Succesfully added!")</script>';
            echo '<script type="text/javascript">';
            echo 'window.location= "moviest.php";';
            echo '</script>';
        }
    }

    require_once ('layout/inferior.php');
?>