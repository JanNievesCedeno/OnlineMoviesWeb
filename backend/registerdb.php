<?php

require_once 'conecdb.php';

if (isset($_POST['register'])) {
	
	if (strlen($_POST['first-name']) >= 2 && strlen($_POST['last-name']) >= 2 && strlen($_POST['username']) >=2 && strlen($_POST['password']) >=5 ) {

		// Sanitize and validate input from the form
		$user_firstname = trim($_POST['first-name']);
		$user_lastname = trim($_POST['last-name']);
		$username = ($_POST['username']);

		// Check if username exists using WHERE clause
		$stmt = $conex->prepare("SELECT username FROM users WHERE username = ?");
		$stmt->bind_param("s", $username);
		$stmt->execute();
		$result = $stmt->get_result();

		if ($result->num_rows > 0) {
			echo '<script> alert("Username taken!")</script>';
			echo '<script type="text/javascript">';
			echo 'window.history.back();';
			echo '</script>';
			exit();
		}

		$password = trim($_POST['password']);
		$encrypted = password_hash($password, PASSWORD_DEFAULT);

		// Use prepared statement for INSERT
		$stmt = $conex->prepare("INSERT INTO users(user_firstname, user_lastname, username, password) VALUES (?, ?, ?, ?)");
		$stmt->bind_param("ssss", $user_firstname, $user_lastname, $username, $encrypted);
		$resultado = $stmt->execute();

		if ($resultado) {
			echo '<script> alert("Successfully registered!")</script>';
			echo '<script type="text/javascript">';
        	echo 'window.location= "../login.php";';
        	echo '</script>';
		} 
	} else {
		echo '<script> alert("Need at least 2 caracters for each field except the password that are 5.")</script>';
		echo '<script type="text/javascript">';
        echo 'window.history.back();';
        echo '</script>';
	}
}

?>