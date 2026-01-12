<?php

require_once 'conecdb.php';


if (isset($_POST['login'])) {
	  
	if (strlen($_POST['username']) >=1 && strlen($_POST['password']) >=1) {
		
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		
		$stmt = $conex->prepare("SELECT * FROM users WHERE username = ?");
		$stmt->bind_param("s", $username);
		$stmt->execute();
		$resultado = $stmt->get_result();
		$resultCheck = $resultado->num_rows;
		
		if ($resultCheck > 0) {
			$rows = $resultado->fetch_assoc();
			$encrypted = $rows['password'];
			if (password_verify($password, $encrypted)) {
				session_start();
				$_SESSION['username'] = $username;
				header('Location: ../index.php');
				exit;
			}else {
				
			echo '<script> alert("Username or Password incorrect")</script>';
			echo '<script type="text/javascript">';
            echo 'window.location= "../login.php";';
            echo '</script>';
		}
			
		} else {
			echo '<script> alert("Username or Password incorrect")</script>';
			echo '<script type="text/javascript">';
            echo 'window.location= "../login.php";';
            echo '</script>';
		}
	}
	
	
	
}


?>