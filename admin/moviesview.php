<?php
    require_once ('layout/superior.php');
    require_once ('../backend/conecdb.php');
?>
    <main>
    
    <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Movies Table
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <a href="moviesreport.php">Movies View Pdf</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <a href="invreport.php">Inventary Pdf</a>
                                        <thead>
                                            <tr>
                                                <th>Movie_id</th>                                                
                                                <th>Movie_name</th>                                                
                                                <th>Movie_year</th>
                                                <th>Movie_genre</th>                                                
                                                <th>Movie_cost</th>
                                                <th>Movie_Amount</th>  
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Movie_id</th>                                                
                                                <th>Movie_name</th>                                                
                                                <th>Movie_year</th>
                                                <th>Movie_genre</th>                                                
                                                <th>Movie_cost</th>
                                                <th>Movie_Amount</th>                                                
                                            </tr>
                                        </tfoot>
                                        

                    <?php
                        $stmt = $conex->prepare("SELECT * FROM movies");
                        $stmt->execute();
                        $result = $stmt->get_result();

                        while ($row = $result->fetch_assoc()) {
                            $product = <<< DELIMETER
                            <tbody id="trows">
                            <tr>
                            <td>{$row['movie_id']}</td>                                
                            <td>{$row['movie_name']}</td>
                            <td>{$row['movie_year']}</td>
                            <td>{$row['movie_genre']}</td>                    
                            <td>$ {$row['movie_cost']}</td>
                            <td>{$row['movie_amount']}</td>          
                            </tr>                                        
                            </tbody>
                            DELIMETER;
                            echo $product;
                        }
                    ?> 
                                        
                                    </table>
                                    
                                </div>
                            </div>

    </main>                
                
<?php
    require_once ('layout/inferior.php');
?>