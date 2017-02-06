<?php
session_start(); 
    if (isset($_POST['register']))
    {
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $addr = $_POST['addr'];
        $cno = $_POST['cno'];
        $username = strip_tags($_POST['username']);
        $password = md5(strip_tags($_POST['password']));

        //check whether there's already a user having the same username
        $db = mysqli_connect('localhost','root','','shop')
                or die('Error connecting to MySQL server.'); 
        $query = "SELECT UserID FROM user WHERE Username = '$username' LIMIT 1";
        $result = mysqli_query($db, $query);

        if (mysqli_num_rows($result) == 0)
        {
            $newuser = "INSERT INTO user (Username, Password, Contact_No, Address, FName, LName)
                        VALUES ('$username', '$password', $cno, '$addr', '$fname', '$lname')";

            if (mysqli_query($db, $newuser)) {
                header("location:register.php?success=1");
            } else {
                echo "Error: " . $newuser . "<br>" . mysqli_error($db);
            }
        } else {
            //username already exists!
            header("location:register.php?err=2");
        }
    }
?>