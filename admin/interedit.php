<?php
    require_once ('layout/superior.php');
    require_once ('../backend/conecdb.php');
        
    $action = '';
    $id = 0;

    // Validate and sanitize input
    if(isset($_GET['action']) && isset($_GET['id'])) {
        $allowedActions = ['movie', 'user', 'sale'];
        if(in_array($_GET['action'], $allowedActions) && is_numeric($_GET['id'])) {
            $action = $_GET['action'];
            $id = intval($_GET['id']);
        } else {
            die("Invalid parameters");
        }
    } else {
        die("Missing parameters");
    }
      
    if($action == "movie") {
        $stmt = $conex->prepare("SELECT * FROM movies WHERE movie_id = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if($row = $result->fetch_assoc()){
            $id = $row['movie_id'];
            $name = $row['movie_name'];
            $year = $row['movie_year'];
            $genre = $row['movie_genre'];
            $desc = $row['movie_description'];
            $cost = $row['movie_cost'];
            $trailer = $row['movie_trailer'];
            $pic = $row['movie_picture'];
            ?>
            <form action="edit.php" method="POST"> 
                <input type="hidden" name="mid" value="<?php echo $id ?>">
                <label for="mname">Movie name:</label><br>
                <input type="text" name="mname" value="<?php echo htmlspecialchars($name) ?>" required><br><br>

                <label for="myear">Movie year:</label><br>
                <input type="text" name="myear" value="<?php echo htmlspecialchars($year) ?>" required><br><br>

                <label for="mgenre">Movie genre:</label><br>
                <input type="text" name="mgenre" value="<?php echo htmlspecialchars($genre) ?>" required><br><br>

                <label for="mdesc">Movie description:</label><br>
                <textarea name="mdesc" id="" cols="100" rows="5" required><?php echo htmlspecialchars($desc) ?></textarea><br><br>

                <label for="mcost">Movie cost:</label><br> 
                <input type="text" name="mcost" value="<?php echo htmlspecialchars($cost) ?>" required><br><br>

                <label for="mtrailer">Movie trailer:</label><br>
                <input type="text" name="mtrailer" value="<?php echo htmlspecialchars($trailer) ?>" required><br><br>

                <label for="mpic">Movie picture:</label><br> 
                <input type="text" name="mpic" value="<?php echo htmlspecialchars($pic) ?>" required> 
                
                <input type="submit" name="movie" value="submit">
                
            </form>
            <?php
        }
    }

    if($action == "user") {
        $stmt = $conex->prepare("SELECT * FROM users WHERE user_id = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if($row = $result->fetch_assoc()){
            $id = $row['user_id'];
            $fname = $row['user_firstname'];
            $lname = $row['user_lastname'];
            $uname = $row['username'];
            $upass = $row['password'];
            $mspent = $row['money_spent'];
            $mowned = $row['movies_owned'];
            ?>
            <form action="edit.php" method="POST"> 
                
                <label for="id">User id:</label><br>
                <input type="text" name="uid" value="<?php echo $id ?>" required ><br><br>

                <label for="fname">User Firstname:</label><br>
                <input type="text" name="fname" value="<?php echo htmlspecialchars($fname) ?>" required minlength="2"><br><br>

                <label for="lname">User lastname:</label><br>
                <input type="text" name="lname" value="<?php echo htmlspecialchars($lname) ?>" required minlength="2"><br><br>

                <label for="uname">Username:</label><br>
                <input type="text" name="uname" value="<?php echo htmlspecialchars($uname) ?>" required minlength="2"><br><br>

                <label for="upass">Password</label><br> 
                <input type="text" name="upass" value="<?php echo htmlspecialchars($upass) ?>" required minlength="5"><br><br>

                <label for="mspent">Money Spent:</label><br>
                <input type="text" name="mspent" value="<?php echo htmlspecialchars($mspent) ?>" required><br><br>

                <label for="mowned">Movies owned</label><br> 
                <input type="text" name="mowned" value="<?php echo htmlspecialchars($mowned) ?>" required> 
                
                <input type="submit" name="user" value="submit">
                
            </form>
            <?php
        }
    }


    if($action == "sale") {
        $stmt = $conex->prepare("SELECT * FROM sales WHERE sales_id = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if($row = $result->fetch_assoc()){
            $id = $row['sales_id'];
            $uid = $row['user_id'];
            $mid = $row['movie_id'];
            $salesd = $row['sales_date'];
            $payment = $row['payment_method'];
            $cnum = $row['card_number'];
            $cexp = $row['card_expiration'];
            $cname = $row['card_name'];
            $amount = $row['amount'];
            ?>
            <form action="edit.php" method="POST"> 
                
                <label for="id">Sales id:</label><br>
                <input type="text" name="sid" value="<?php echo $id ?>" required ><br><br>

                <label for="uid">User id:</label><br>
                <input type="text" name="uid" value="<?php echo $uid ?>" required minlength="2"><br><br>

                <label for="mid">Movie id:</label><br>
                <input type="text" name="mid" value="<?php echo $mid ?>" required minlength="2"><br><br>

                <label for="salesd">Sales date:</label><br>
                <input type="date" name="salesd" value="<?php echo htmlspecialchars($salesd) ?>" required ><br><br>

                <label for="payment">Payment method</label><br> 
                <input type="text" name="payment" value="<?php echo htmlspecialchars($payment) ?>" required minlength="5"><br><br>

                <label for="cnum">Card number:</label><br>
                <input type="text" name="cnum" value="<?php echo htmlspecialchars($cnum) ?>" required><br><br>

                <label for="cexp">Card expiration</label><br> 
                <input type="text" name="cexp" value="<?php echo htmlspecialchars($cexp) ?>" required><br><br>

                <label for="cname">Card name</label><br> 
                <input type="text" name="cname" value="<?php echo htmlspecialchars($cname) ?>" required><br><br>

                <label for="amount">Amount</label><br> 
                <input type="text" name="amount" value="<?php echo htmlspecialchars($amount) ?>" required> 
                
                <input type="submit" name="sale" value="submit">
                
            </form>
            <?php
        }
    }

    require_once ('layout/inferior.php');
?>