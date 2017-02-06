<?php 
session_start(); 
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
        Bid Now : Auction Marketplace
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/custom.css" rel="stylesheet">

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">


    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    
</head>

<body>

   <?php $db = mysqli_connect('localhost','root','','shop')
        or die('Error connecting to MySQL server.'); 

        $query1 = "SELECT * FROM category ";
        $result1 = mysqli_query($db, $query1);
        $categories = mysqli_fetch_array($result1);

    ?>
    <?php include 'header.php';?>

    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>Add Listing</li>
                    </ul>

                </div>

                <div class="col-md-3">
                    <!-- *** PAGES MENU ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Quick Links</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li>
                                    <a href="index.php">Home</a>
                                </li>
                                <li>
                                    <a href="contact.php">Contact Us</a>
                                </li>
                                <li>
                                    <a href="faq.php">FAQ</a>
                                </li>

                            </ul>

                        </div>
                    </div>

                    <!-- *** PAGES MENU END *** -->


                    <div class="banner">
                        <a href="#">
                            <img src="img/banner.jpg" alt="sales 2014" class="img-responsive">
                        </a>
                    </div>
                </div>

                <div class="col-md-9">
<?php 
                                $query1 = "SELECT * FROM category ";
                                $result1 = mysqli_query($db, $query1);
                                $categories = mysqli_fetch_array($result1);

                            ?>

                    <div class="box" id="contact">
                        <h1>Add a new listing</h1>

                        <p class="lead">Do you want to sell something? Get the best price for it through our auction system ! </p>
                        

                        <hr>

                        <?php
                        if(isset($_GET['err'])) {
                            echo '
                                    <div class="alert alert-info">
                                         <strong>Sorry!</strong> You need to <a href="register.php">log in</a> to add a listing.
                                    </div>
                                    ';
                        }
                        ?>
                        <div class="panel-group" id="accordion">
                        

                        <form class="form-horizontal" action="success.php" method="POST">

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

					    <a data-toggle="collapse" data-parent="#accordion" href="#faq1">

						1. What to do you want to sell?

					    </a>

					</h4>
                                </div>
                                <div id="faq1" class="panel-collapse collapse">
                                    <div class="panel-body">
                                    <div class="form-group">

                                    <label class="control-label col-sm-2" for="pwd">Category :</label>
                                        <div class="col-sm-10">
                                       
                                              <select class="form-control" name="CategoryID">
                                               <?php
                                                $value=1;
                                                 while($categories) { 
                
                                                   ?>
                                                <option value="<?php echo $value ?>"> <?php echo $categories["Category"];?></option>
                                                <?php $categories = $result1->fetch_assoc();
                                                    $value=$value+1;
                                                }?>
                                              </select>
                                              <br>
                                             </div>       
                                            <br>       
                                                    
                                        <label class="control-label col-sm-2" >Item Name:</label>
                                          <div class="col-sm-10">
                                            <input type="text" class="form-control" name="ItemName" placeholder="Enter the listing name">
                                          </div>       
                                          </div>   

                                                                          
                                    </div>
                                </div>
                            </div>
                          
                            <!-- /.panel -->

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

					    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">

						2. Tell more about your product.

					    </a>

					</h4>
                                </div>

                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <label class="control-label col-sm-2" >Description:</label>
                                         <div class="col-sm-10">
                                        <textarea class="form-control" rows="5" name="Description"></textarea>
                                        <br>
                                        </div>
                                    
                                    <label class="control-label col-sm-2" >Images :</label>
                                         <div class="col-sm-10">
                                       <input type="text" class="form-control" name="PhotosID" placeholder="Enter the image URL Eg: img/image.jpg">
                                       <br>
                                        </div>


                                        </div>
                                </div>
                            </div>
                            <!-- /.panel -->


                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

					    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">

						3. Prices and Time period

					    </a>

					</h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <label class="control-label col-sm-2" >Starting Price:</label>
                                         <div class="col-sm-10">
                                       <input type="text" class="form-control" name="StartingPrice" placeholder="Enter the Starting Value in Rupees">
                                       <br>
                                        </div>

                                       <label class="control-label col-sm-2" for="comment">Expected Price:</label>
                                        <div class="col-sm-10">
                                       <input type="text" class="form-control" name="ExpectedPrice" placeholder="Enter the Expected Value in Rupees">
                                       <br>
                                        </div>

                                        <label class="control-label col-sm-2" for="comment">End Date:</label>
                                        <div class="col-sm-10">
                                       <div class="container" >
                                        
                                        <div class="container">
                                            <input required value="<?php echo date('Y-m-d'); ?>" class="date-picker" type="text" id="datepicker" name="EndTime">

                                        </div>
                                        </div>

                                    </div>

                                </div>

                            </div>

                            <!-- /.panel -->

                        </div>
                        <br>
                        
                         <input type="submit" align ="left" class="btn btn-primary center-block" type="submit" value="Submit Listing">
                       
                        <!-- /.panel-group -->
                    </form>

                    </div>


                </div>
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        </div>
        <!-- *** FOOTER ***
 _________________________________________________________ -->
      
    <?php include 'footer.php';?>
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
    <script src="js/bootstrap.js"></script>



    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

    <script>
        $(function() {
            $( "#datepicker" ).datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
    </script>
    
        
</body>

</html>
