<?php
    require_once ('layout/superior.php');
    require_once ('../backend/conecdb.php');
?>
    <main>
    <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Sales Table
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    
                                    <a href="salereports.php">Sale View Pdf</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                    <a href="payreport.php">Payment info Pdf</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                    <a href="totalreports.php">Total Pdf</a>
                                        <thead>                                        
                                            <tr>
                                                <th>Sales Number</th>
                                                <th>Sales Date</th>
                                                <th>Username</th>
                                                <th>Payment Method</th>
                                                <th>Card Number</th>
                                                <th>Card Expiration</th>
                                                <th>Card Name</th>
                                                <th>Purchased Movie</th>
                                                <th>Amount</th>
                                                <th>Actions</th>                                                
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Sales Number</th>
                                                <th>Sales Date</th>
                                                <th>Username</th>
                                                <th>Payment Method</th>
                                                <th>Card Number</th>
                                                <th>Card Expiration</th>
                                                <th>Card Name</th>
                                                <th>Purchased Movie</th>
                                                <th>Amount</th>
                                                <th>Actions</th>
                                            </tr>
                                        </tfoot>

                    <?php
                        // Single query with JOINs - much more efficient than N+1 queries
                        $stmt = $conex->prepare("SELECT s.*, u.username, m.movie_name 
                                                 FROM sales s 
                                                 INNER JOIN users u ON s.user_id = u.user_id 
                                                 INNER JOIN movies m ON s.movie_id = m.movie_id");
                        $stmt->execute();
                        $result = $stmt->get_result();

                        while ($row = $result->fetch_assoc()) {
                            $product = <<< DELIMETER
                            <tbody id="trows">
                            <tr>
                            <td>{$row['sales_id']}</td>
                            <td>{$row['sales_date']}</td>
                            <td><a href="userinfo.php?user={$row['user_id']}">{$row['username']}</a></td>
                            <td>{$row['payment_method']}</td>
                            <td>{$row['card_number']}</td>
                            <td>{$row['card_expiration']}</td>
                            <td>{$row['card_name']}</td>
                            <td>{$row['movie_name']}</td>
                            <td>$ {$row['amount']}</td>
                            <td><a href="receipts.php?sid={$row['sales_id']}">Receipt</a></td>
                            
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