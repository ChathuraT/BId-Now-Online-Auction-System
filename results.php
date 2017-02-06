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


             include 'header.php';

             if(isset($_POST['keyword'])){ $keyword=$_POST['keyword'];}else{$CategoryID=null;}

            
            $query2 = "SELECT * FROM item where ItemName like '%$keyword%' ";
            $result2 = mysqli_query($db, $query2);
            $searchResults = mysqli_fetch_array($result2);

             
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
                        <h1>Search Results for '<?php echo $keyword ?>'</h1>
                        
                    </div>

                     <?php
                             while($searchResults) { 
                               
                        
                            ?>
                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                             <a href="detail.php?ItemNo=<?php echo $searchResults['ItemID'] ?>">
                                                <img src="<?php echo $searchResults['PhotosID'];?>" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                              <a href="detail.php?ItemNo=<?php echo $searchResults['ItemID'] ?>">
                                                <img src="<?php echo $searchResults['PhotosID'];?>" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.php?ItemNo=<?php echo $searchResults['ItemID'] ?>" class="invisible">
                                    <img src="img/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><?php echo $searchResults['ItemName'] ?></h3>
                                    <p class="price">Rs : <?php echo number_format($searchResults['CurrentPrice'],2);?></p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>
                            <?php $searchResults = $result2->fetch_assoc();} ?>
                    

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