<?php

session_start();
require_once 'conecdb.php';


if(isset($_SESSION['username']) && !empty($_SESSION['username'])) {

	// Get User ID from the session username
    $user = $_SESSION['username'];

    $stmt = $conex->prepare("SELECT user_id FROM users WHERE username = ?");
	$stmt->bind_param('s', $user);
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
	if (isset($_POST['checkout'])) {

		// Get the movie id from the form
		$movie = $_POST['movieid']; 
		
		
        $stmt = $conex->prepare("SELECT * FROM movies WHERE movie_id = ?");
		$stmt->bind_param('i', $movie);
		$stmt->execute();
        $result = $stmt->get_result();
        $resultCheck = $result->num_rows;

        if ($resultCheck > 0){
            $row = $result->fetch_assoc();
            $moviename = $row['movie_name'];
            $moviecost = $row['movie_cost'];
            
           } 
		$card_info = <<< DELIMETER
		<form method="POST" action="movie_sale.php">
		<input type="hidden" name="movieid" value="{$row['movie_id']}">
		<h6 class="minfo2">Payment method:<input type="radio" id="val" name="method" value="Credit Card" required><label for="Credit Card">Credit Card</label><input type="radio" id="val" name="method" value="Debit Card" required><label for="Debit Card">Debit Card</label></h6>
		<script>function myfunction(){var x = document.getElementById("val").required;}</script>
		<h6>Card Number:</h6>
		<input type="text" name="cnumber" placeholder="Card Number" required="" minlength="12" maxlength="12">
		<h6>Expiration Date:</h6>
		<input type="Date" name="edate" placeholder="Expiration Date" required="" >
		<h6>Name on Card:</h6>
		<input type="text" name="ncard" placeholder="Name on Card" required="" minlength="2">
		<h6 class="minfo2 cost">Movie name: $moviename</h6>
		<h6 class="minfo2 cost">Price: $ $moviecost</h6>
		<input type="hidden" name="moviename" value="{$row['movie_name']}">
		<input class="buy_button" type="submit" name="buy" value="Pay now">
		</form>
		DELIMETER;

		echo $card_info;
	}
?>