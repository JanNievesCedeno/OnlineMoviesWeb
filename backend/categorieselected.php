<?php  

require 'conecdb.php';

echo '<link href="./style.css" type="text/css" rel="stylesheet">';

// Validate and sanitize the genre parameter
if (!isset($_GET['genre'])) {
    die("Genre parameter required");
}

$genre = $_GET['genre'];

// Whitelist allowed genres (security)
$allowedGenres = ['Action', 'Comedy', 'Drama', 'Documentary', 'Musical', 'Romance', 'Horror'];

if (!in_array($genre, $allowedGenres)) {
    die("Invalid genre");
}

// Fetch movies by genre using WHERE clause (much more efficient)
$stmt = $conex->prepare("SELECT movie_id, movie_name, movie_year, movie_genre, movie_cost, movie_picture FROM movies WHERE movie_genre = ?");
$stmt->bind_param("s", $genre);
$stmt->execute();
$result = $stmt->get_result();

// Display all matching movies
while ($row = $result->fetch_assoc()) {
    $product_cont = <<< DELIMETER
    <div class="movie_container">
        <img class="movie_pic" src="{$row['movie_picture']}">
        <h6 class="minfo">Name: {$row['movie_name']}</h6>
        <h6 class="minfo">Realease: {$row['movie_year']}</h6>
        <h6 class="minfo">Genre: {$row['movie_genre']}</h6>
        <h6 class="minfo">Price: $ {$row['movie_cost']}</h6>
        <div>
        <a class="mbutton" href="movie.php?movie={$row['movie_name']}">See More</a>
        <a class="mbutton" href="buy.php?movie={$row['movie_name']}">Buy Now</a>
        </div>
    </div>
    DELIMETER;
    
    echo $product_cont;
}

?>