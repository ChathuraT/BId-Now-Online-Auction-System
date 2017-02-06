<?php 
session_start(); 

if(!isset($_SESSION['userid'])){
    header('Location: index.php');
}  
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
        Obaju : e-commerce template
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/custom.css" rel="stylesheet">

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">



</head>

<body>

        <?php $db = mysqli_connect('localhost','root','','shop')
            or die('Error connecting to MySQL server.'); 

            $query1 = "SELECT * FROM category ";
            $result1 = mysqli_query($db, $query1);
            $categories = mysqli_fetch_array($result1);


             include 'header.php';?>

             <?php  

          
            $userID=$_SESSION['userid'];

            $query2 = "SELECT * FROM item where SellerID='$userID'";
            $result2 = mysqli_query($db, $query2);
            $userResults = mysqli_fetch_array($result2);

            $query3 = "SELECT distinct * FROM bids as b,item as i where BidderID='$userID' and b.ItemID=i.ItemID";
            $result3 = mysqli_query($db, $query3);
            $userBids = mysqli_fetch_array($result3);


             
             ?>




    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>Search Results</li>
                    </ul>

                    <div class="box">
                        <h1>Items User Listed</h1>
                        
                    </div>

                     <?php
                             while($userResults) { 
                               
                        
                            ?>

                    <div class="col-md-3 col-sm-4">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.php?ItemNo=<?php echo $userResults['ItemID'] ?>">
                                                <img src="<?php echo $userResults['PhotosID'];?>" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.php?ItemNo=<?php echo $userResults['ItemID'] ?>">
                                                <img src="<?php echo $userResults['PhotosID'];?>" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.php?ItemNo=<?php echo $userResults['ItemID'] ?>"><?php echo $userResults['ItemName'] ?></a></h3>
                                    <p align="center">Current Max Bid</p>
                                    <p class="price">Rs : <?php echo number_format($userResults['CurrentPrice'],2);?></p>
                                    <p class="buttons">
                                        <a href="detail.php?ItemNo=<?php echo $userResults['ItemID'] ?>" class="btn btn-default">Show Listing</a>
                                        
                                    </p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>
                            <?php $userResults = $result2->fetch_assoc();} ?>
                    
                            </div> .
                <div class="box">
                        <h1>Items User Bidding On</h1>
                        
                    </div>

                     <?php
                             while($userBids) { 
                               
                        
                            ?>

                    <div class="col-md-3 col-sm-4">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.php?ItemNo=<?php echo $userBids['ItemID'] ?>">
                                                <img src="<?php echo $userBids['PhotosID'];?>" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.php?ItemNo=<?php echo $userBids['ItemID'] ?>">
                                                <img src="<?php echo $userBids['PhotosID'];?>" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.php?ItemNo=<?php echo $userBids['ItemID'] ?>"><?php echo $userResults['ItemName'] ?></a></h3>
                                    <p align="center">Your Last Bid</p>
                                    <p class="price">Rs : <?php echo number_format($userBids['BidAmount'],2);?></p>
                                     <p align="center">Current Max Bid</p>
                                    <p class="price">Rs : <?php echo number_format($userBids['CurrentPrice'],2);?></p>
                                    <p class="buttons">
                                        <a href="detail.php?ItemNo=<?php echo $userBids['ItemID'] ?>" class="btn btn-default">Show Listing</a>
                                        
                                    </p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>
                            <?php $userBids = $result3->fetch_assoc();} ?>




                </div>
                <!-- /.col-md-9 -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


        <?php include 'footer.php';?>



    </div>
    <!-- /#all -->


    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap-hover-dropdown.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/front.js"></script>






</body>

</html>