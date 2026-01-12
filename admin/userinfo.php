<?php
    require_once ('layout/superior.php');
    require_once ('../backend/conecdb.php');

    echo '<link href="css/receipt.css" rel="stylesheet"/>';
     
    // Validate and sanitize input
    if(isset($_GET['user']) && is_numeric($_GET['user'])) {
        $uid = intval($_GET['user']);
        
        $stmt = $conex->prepare("SELECT * FROM users WHERE user_id = ?");
        $stmt->bind_param("i", $uid);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if($row = $result->fetch_assoc()){
            $id = $row['user_id'];
            $fname = $row['user_firstname'];
            $lname = $row['user_lastname'];
            $uname = $row['username'];
            $mspent = $row['money_spent'];
            $mowned = $row['movies_owned'];
            ?>
                <div>
                <h4>User id:</h4>
                <input type="text" readonly value='<?php echo htmlspecialchars($id); ?>'><br><br>

                <h4>Firstname:</h4>
                <input type="text" readonly value='<?php echo htmlspecialchars($fname); ?>'><br><br>

                <h4>Lastname:</h4>
                <input type="text" readonly value='<?php echo htmlspecialchars($lname); ?>'><br><br>

                <h4>Username:</h4>
                <input type="text" readonly value='<?php echo htmlspecialchars($uname); ?>'><br><br>

                <h4>Purchased movies:</h4>
                <input type="text" readonly value='<?php echo htmlspecialchars($mowned); ?>'><br><br>

                <h4>Money Spent:</h4>
                <input type="text" readonly value='<?php echo htmlspecialchars($mspent); ?>'>&nbsp&nbsp&nbsp <a href="javascript:history.back()">Back</a>


                </div>
            <?php
        } else {
            echo "<p>User not found.</p>";
        }
    } else {
        echo "<p>Invalid user ID.</p>";
    }

    require_once ('layout/inferior.php');
?>