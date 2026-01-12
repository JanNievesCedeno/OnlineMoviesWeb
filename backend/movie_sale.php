<?php 
    echo '<link href="../rec.css" type="text/css" rel="stylesheet">';
    echo '<link href="../style.css" type="text/css" rel="stylesheet">';

session_start();
require_once 'conecdb.php';

if(isset($_SESSION['username'])) {

    // Get User ID from the session username
    $user = $_SESSION['username'];

    // Fetch user ID
    $stmt = $conex->prepare("SELECT user_id FROM users WHERE username = ?;");
    $stmt->bind_param("s", $user);
    $stmt->execute();
    $result = $stmt->get_result();
    $resultCheck = $result->num_rows;

    if ($resultCheck > 0){
        $row = $result->fetch_assoc();
        $userid = $row['user_id'];
        
    }
}else {
   header('Location: ../login.php');
   exit();
}

    if (isset($_POST['buy'])) {
        // Get the movie id from the form 
        $movie = $_POST['movieid'];   

        $stmt = $conex->prepare("SELECT * FROM movies WHERE movie_id = ?;");
        $stmt->bind_param("i", $movie);
        $stmt->execute();
        $result = $stmt->get_result();
        $resultCheck = $result->num_rows;

        if ($resultCheck > 0){
            $row = $result->fetch_assoc();
            $movieid = $row['movie_id'];
           } 

            
            date_default_timezone_set('America/Puerto_Rico');
            $date = date("Y-m-d");
            $method = $_POST['method'];
            $cardnumber = $_POST['cnumber'];
            $expdate = $_POST['edate'];
            $cardname = $_POST['ncard'];
            $amount = $row['movie_cost'];
             
            $stmt = $conex->prepare("SELECT * FROM sales WHERE user_id = ? and movie_id = ?;");
            $stmt->bind_param("ii", $userid, $movieid);
            $stmt->execute();
            $result = $stmt->get_result();
            $resultCheck = $result->num_rows;
    
            if ($resultCheck > 0){
                     
                    
                    echo '<script> alert("You already have this movie! Check your Library.")</script>';
                    echo '<script type="text/javascript">';
                    echo 'window.location= "../index.php";';
                    echo '</script>';

            
            }else {

                    $stmt = $conex->prepare("INSERT INTO sales(user_id, movie_id, sales_date, payment_method, card_number, card_expiration, card_name, amount) VALUES (?, ?, ?, ?, ?, ?, ?, ?);");
                    $stmt->bind_param("iissssss", $userid, $movieid, $date, $method, $cardnumber, $expdate, $cardname, $amount);
                    $execute = $stmt->execute();


                    if ($execute) {

                        $stmt = $conex->prepare("SELECT movie_amount FROM movies WHERE movie_id = ?;");
                        $stmt->bind_param("i", $movieid);
                        $stmt->execute();
                        $result = $stmt->get_result();
                        $resultCheck = $result->num_rows;
                        $row = $result->fetch_assoc();
                        $mamount = $row['movie_amount'] - 1;

                        $stmt = $conex->prepare("UPDATE movies SET movie_amount=? WHERE movie_id = ?;");
                        $stmt->bind_param("ii", $mamount, $movieid);
                        $stmt->execute();
                        

                        $stmt = $conex->prepare("SELECT SUM(amount) as moneys FROM sales WHERE user_id = ?;");
                        $stmt->bind_param("i", $userid);
                        $stmt->execute();
                        $result = $stmt->get_result();
                        $resultCheck = $result->num_rows;
                        $row = $result->fetch_assoc();
                        $money = $row['moneys'];

                        $stmt = $conex->prepare("SELECT * FROM sales WHERE user_id = ?;");
                        $stmt->bind_param("i", $userid);
                        $stmt->execute();
                        $result = $stmt->get_result();
                        $resultCheck = $result->num_rows;  

                        $stmt = $conex->prepare("UPDATE users SET money_spent = ?, movies_owned = ? WHERE user_id = ?;");
                        $stmt->bind_param("dii", $money, $resultCheck, $userid);
                        $stmt->execute();

                        $stmt = $conex->prepare("SELECT movie_name FROM movies WHERE movie_id = ?;");
                        $stmt->bind_param("i", $movieid);
                        $stmt->execute();
                        $mresult = $stmt->get_result();
                        $mrow = $mresult->fetch_assoc();
                        $mname = $mrow['movie_name'];
    
                        $stmt = $conex->prepare("SELECT username FROM users WHERE user_id = ?;");
                        $stmt->bind_param("i", $userid);
                        $stmt->execute();
                        $uresult = $stmt->get_result();
                        $urow = $uresult->fetch_assoc();
                        $user = $urow['username'];
        ?>                
    <table class="body-wrap">
    <tbody><tr>
        <td></td>
        <td class="container" width="600">
            <div class="content">
                <table class="main" width="100%" cellpadding="0" cellspacing="0">
                    <tbody><tr>
                        <td class="content-wrap aligncenter">
                            <table width="100%" cellpadding="0" cellspacing="0">
                                <tbody><tr>
                                    <td class="content-block">
                                        <h2 style="text-align: center;">Thanks for buying!</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="content-block">
                                        <table class="invoice">
                                            <tbody><tr>
                                                <td>User: <?php echo $user; ?><br>Date: <?php echo $date; ?> <br>Account Number: <?php echo $cardnumber; ?> <br>Name on Card: <?php echo $cardname; ?> <br>Payment Method: <?php echo $method; ?></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="invoice-items" cellpadding="0" cellspacing="0">
                                                        <tbody><tr>
                                                            <td> <?php echo $mname; ?></td>
                                                            <td class="alignright">$ <?php echo $amount; ?></td>
                                                        </tr>
                                                        
                                                        <tr class="total">
                                                            <td class="alignright" width="80%">Total</td>
                                                            <td class="alignright">$ <?php echo $amount; ?></td>
                                                        </tr>
                                                    </tbody></table>
                                                </td>
                                            </tr>
                                        </tbody></table>
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td class="content-block">
                                        Online Movies
                                    </td>
                                </tr>
                            </tbody></table>
                        </td>
                    </tr>
                </tbody></table>
                <div class="footer">
                    <table width="100%">
                        <tbody><tr>
                            <td class="aligncenter content-block"><a href="../library.php">Library</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="../index.php">Home</a></td>
                        </tr>
                    </tbody></table>
                </div></div>
        </td>
        <td></td>
    </tr>
    </tbody></table>
    <?php
                
                        
                    } else {
                        echo '<script> alert("Error")</script>';
                    }


                }
    
}

?>