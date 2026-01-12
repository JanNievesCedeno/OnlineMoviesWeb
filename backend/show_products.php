<?php

echo '<link href="./style.css" type="text/css" rel="stylesheet">';

require_once ('backend/conecdb.php'); // Include once at top

function showMoviesByGenre($genre) {
    global $conex;
    
    $stmt = $conex->prepare("SELECT movie_id, movie_name, movie_year, movie_genre, movie_cost, movie_picture FROM movies WHERE movie_genre = ? LIMIT 10");
    $stmt->bind_param("s", $genre);
    $stmt->execute();
    $result = $stmt->get_result();
    
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
}

// Then create simple wrapper functions
function action() { showMoviesByGenre('Action'); }
function comedy() { showMoviesByGenre('Comedy'); }
function drama() { showMoviesByGenre('Drama'); }
function documentary() { showMoviesByGenre('Documentary'); }
function musical() { showMoviesByGenre('Musical'); }
function romance() { showMoviesByGenre('Romance'); }
function horror() { showMoviesByGenre('Horror'); }

?>