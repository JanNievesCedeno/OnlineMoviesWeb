<?php
    require_once ('layout/superior.php');
    require_once ('../backend/conecdb.php');
?>
    <main>
    <?php
        if(isset($_GET['sid']) && is_numeric($_GET['sid'])) {
            $sid = intval($_GET['sid']);
            
            // Get sale information
            $stmt = $conex->prepare("SELECT * FROM sales WHERE sales_id = ?");
            $stmt->bind_param("i", $sid);
            $stmt->execute();
            $result = $stmt->get_result();

            if($row = $result->fetch_assoc()){
                $mid = $row['movie_id'];
                $uid = $row['user_id'];

                // Get movie name
                $stmt = $conex->prepare("SELECT movie_name FROM movies WHERE movie_id = ?");
                $stmt->bind_param("i", $mid);
                $stmt->execute();
                $mresult = $stmt->get_result();
                $mrow = $mresult->fetch_assoc();
                $mname = $mrow['movie_name'];

                // Get username
                $stmt = $conex->prepare("SELECT username FROM users WHERE user_id = ?");
                $stmt->bind_param("i", $uid);
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
                                        <h2>Sale <?php echo htmlspecialchars($sid); ?></h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="content-block">
                                        <table class="invoice">
                                            <tbody><tr>
                                                <td>User: <?php echo htmlspecialchars($user); ?><br>Date: <?php echo htmlspecialchars($row['sales_date']); ?> <br>Account Number: <?php echo htmlspecialchars($row['card_number']); ?> <br>Name on Card: <?php echo htmlspecialchars($row['card_name']); ?> <br>Payment Method: <?php echo htmlspecialchars($row['payment_method']); ?></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="invoice-items" cellpadding="0" cellspacing="0">
                                                        <tbody><tr>
                                                            <td> <?php echo htmlspecialchars($mname); ?></td>
                                                            <td class="alignright">$ <?php echo htmlspecialchars($row['amount']); ?></td>
                                                        </tr>
                                                        
                                                        <tr class="total">
                                                            <td class="alignright" width="80%">Total</td>
                                                            <td class="alignright">$ <?php echo htmlspecialchars($row['amount']); ?></td>
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
                </table>
                </div></div>
        </td>
        <td></td>
    </tr>
    </tbody></table>
    <?php
            }
        }
    ?>
   

    </main>                
                
<?php
    require_once ('layout/inferior.php');
?>