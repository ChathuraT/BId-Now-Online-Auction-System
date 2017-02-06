<?php 
session_start();
if( !isset($_SESSION['loginid']) && !isset($_SESSION['username']) ) {
   header('Location: index.php');
   session_destroy();
} else {
   unset($_SESSION['loginid']);
   unset($_SESSION['username']);
   session_destroy();
   header('Location: index.php');
}
?>