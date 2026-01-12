<?php


$conex = new mysqli("localhost","root","","onlinemoviesweb");

if ($conex->connect_error) {
	die("Database connection failed!" . $conex->connect_error);
} 


?>