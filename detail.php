<?php session_start(); ?>
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
    <link href="css/custom.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/custom.css" rel="stylesheet">

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">

   





</head>

<body  onload="countdown(year,month,day,hour,minute)">

    <?php include 'header.php';?>


    <!-- *** NAVBAR END *** -->
    <?php $db = mysqli_connect('localhost','root','','shop')
          or die('Error connecting to MySQL server.'); 

          
          $ItemNo = $_GET['ItemNo'];
          $query = "SELECT * FROM item Where ItemID=$ItemNo";
          $result = mysqli_query($db, $query);
          $row = mysqli_fetch_array($result);
          $leastValue=$row['CurrentPrice']+50;
          $ExpectedValue=$row['ExpectedPrice'];


                        
                            ?>

    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        
                        <li><?php echo $row['ItemName'];?></li>
                    </ul>

                </div>

                <div class="col-md-3">
                    <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Categories</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked category-menu">
                            <?php
                             $result1 = mysqli_query($db, $query1);
                             $categories = mysqli_fetch_array($result1);
                             
                             while($categories) { 
                        
                               ?>
                    
                                <li>
                                    <a href="category.php?CategoryID=<?php echo $categories['CategoryID'] ?>"><?php echo $categories['Category'];?> </a>
                                    
                                </li>
                                 <?php $categories = $result1->fetch_assoc();} ?>
                                
                            

                            </ul>

                        </div>
                    </div>

                    

                   
                    <!-- *** MENUS AND FILTERS END *** -->
                    


                    <div class="banner">
                        <a href="#">
                            <img src="img/banner.jpg" alt="sales 2014" class="img-responsive">
                        </a>
                    </div>
                </div>

                <div class="col-md-9">

                    <div class="row" id="productMain">
                        <div class="col-sm-6">
                            <div id="mainImage">
                                <img src="<?php echo $row['PhotosID'];?>" alt="" class="img-responsive">
                            </div>

                            <div class="ribbon sale">
                                <div class="theribbon">SALE</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /.ribbon -->

                            <div class="ribbon new">
                                <div class="theribbon">NEW</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /.ribbon -->

                        </div>
                        <div class="col-sm-6">
                            <div class="box">
                                <h1 class="text-center"><?php echo $row['ItemName'];?></h1>
                                <p class="goToDescription"><a href="#details" class="scroll-to">Scroll to product details, material & care and sizing</a>
                               
                                </p>

                                <p class="price">Current Bid : Rs <?php echo  number_format($row['CurrentPrice'],2);?></p>

                                 <form action="" method="post" align="center">
									           
									    <input type="text" name="bidValue" /><br><br>


									<p align="center">Enter a value greater than Rs <?php echo number_format($leastValue,2);?> </p>

									    <input class="btn btn-primary" type="submit" align="center" value="Bid Now"><br/><br>
									</form>

								<div style="color:red" align="center" >

									<?php 
										function updater($value,$id,$leastValue,$ExpectedValue,$userID){
										    // Create connection
										     $db = mysqli_connect('localhost','root','','shop')
											or die('Error connecting to MySQL server.'); 
											
										   
										    if ($db->connect_error) {
										        die("Connection failed: " . $db->connect_error);
										    }   

										    $sql = "UPDATE item SET CurrentPrice='{$value}' WHERE ItemID='$id'";

										    if (($value < $ExpectedValue )&& $value > $leastValue && $db->query($sql) == TRUE) {
										        echo '<div class="alert alert-success">
                                                        <strong>Success!</strong> Your Bid Placed.
                                                      </div>';
										        echo "<meta http-equiv='refresh' content='0'>";

                                                $sql2="INSERT INTO bids (ItemID,BidderID,BidAmount)VALUES ('$id','$userID','$value') " ;
                                                if ($db->query($sql2) === TRUE) {
                                                 //echo "New record created successfully";
                                                    } else {
                                                        echo "Error: " . $sql2 . "<br>" . $db->error;
                                                    }
                                                    
										    } else {
										        echo '<div class="alert alert-danger">
                                                        <strong>Bid not Placed !</strong> The amount entered is not valid !
                                                        </div>' . $db->error;
										    }
										    $db->close();
										}   

										if(isset($_POST['bidValue'])){
                                            if (isset($_SESSION['userid'])) {
                                                updater($_POST['bidValue'],$ItemNo,$leastValue,$ExpectedValue,$_SESSION['userid']);
                                            } else {
                                                echo '
                                                <div class="alert alert-info">
                                                     <strong>Sorry!</strong> You need to <a href="register.php">log in</a> to bid on items.
                                                </div>
                                                ';
                                            }					
										    
										}
										

										?>
								</div>

									<br>

									<script type="text/javascript">


									var current="Auction Ended !";    //-->enter what you want the script to display when the target date and time are reached, limit to 20 characters
									var year=<?php echo date('Y',strtotime($row['EndTime'])); ?>;    //-->Enter the count down target date YEAR
									var month=<?php echo date('m',strtotime($row['EndTime'])); ?>;      //-->Enter the count down target date MONTH
									var day=<?php echo date('d',strtotime($row['EndTime'])); ?>;       //-->Enter the count down target date DAY
									var hour=<?php echo date('h',strtotime($row['EndTime'])); ?>;      //-->Enter the count down target date HOUR (24 hour clock)
									var minute=<?php echo date('i',strtotime($row['EndTime'])); ?>;    //-->Enter the count down target date MINUTE
									var tz=-5;        //-->Offset for your timezone 

									</script>


									<table id="table" border="0">
									    <tr>
									        <td align="center" colspan="6"><div class="numbers" id="count2" style="padding: 5px 0 0 0; "></div></td>
									    </tr>
									    <tr id="spacer1">
									        <td align="center" ><div class="numbers" ></div></td>
									        <td align="center" ><div class="numbers" id="dday"></div></td>
									        <td align="center" ><div class="numbers" id="dhour"></div></td>
									        <td align="center" ><div class="numbers" id="dmin"></div></td>
									        <td align="center" ><div class="numbers" id="dsec"></div></td>
									        <td align="center" ><div class="numbers" ></div></td>
									    </tr>
									    <tr id="spacer2">
									        <td align="center" ><div class="title" ></div></td>
									        <td align="center" ><div class="title" id="days">Days</div></td>
									        <td align="center" ><div class="title" id="hours">Hours</div></td>
									        <td align="center" ><div class="title" id="minutes">Minutes</div></td>
									        <td align="center" ><div class="title" id="seconds">Seconds</div></td>
									        <td align="center" ><div class="title" ></div></td>
									    </tr>
									</table>


									<br>
									
									


                                <p class="text-center buttons">
                                    <a href="" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Buy now for Rs    <?php echo number_format($row['ExpectedPrice'],2);?> </a> 
                                    
                                </p>


                            </div>

                            
                        </div>

                    </div>
					

                    <div class="box" id="details">

                        <p>
                        
                            <h4>Product details</h4>
                            <p><?php echo $row['Description'] ?></p>
                            

                            <hr>
                         
                    </div>


                    <?php 
	                    $count=1;
						$query2 = "SELECT * FROM item Where CategoryID='$row[CategoryID]'";
						$result = mysqli_query($db, $query2);
						$row2= mysqli_fetch_array($result);

					?>

				

                    <div class="row same-height-row">
                        <div class="col-md-3 col-sm-6">
                            <div class="box same-height">
                                <h3>You may also like these products</h3>
                            </div>
                        </div>

                    <?php 
						while($count <=3 & $row2 = $result->fetch_assoc()) { 

										
						?>
                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                             <a href="detail.php?ItemNo=<?php echo $row2['ItemID'] ?>">
                                                <img src="<?php echo $row2['PhotosID'];?>" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                              <a href="detail.php?ItemNo=<?php echo $row2['ItemID'] ?>">
                                                <img src="<?php echo $row2['PhotosID'];?>" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.php?ItemNo=<?php echo $row2['ItemID'] ?>" class="invisible">
                                    <img src="img/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><?php echo $row2['ItemName'] ?></h3>
                                    <p class="price">Rs : <?php echo number_format($row2['CurrentPrice'],2);?></p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                    <?php 
                    $count++;
						}
										
						?>

                       

                    </div>

               

                </div>
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


       <?php include 'footer.php';?>

    

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