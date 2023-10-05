<?php
session_start();
include('../includes/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
</head> 
<body>
   <div class="page-container">
   <!--/content-inner-->
<div class="left-content">
	   <div class="mother-grid-inner">
<!--header start here-->
 <?php //include('..\includes\header.php');?>
<!--header end here-->
		<ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Admin Logout</a></i></li>
            </ol>
<!--four-grids here-->
		<div class="four-grids">
					<div class="col-md-3 four-grid">
						<div class="four-agileits" style="background-color: #7eb5a6;">
							<div class="icon">
									<img src="images/user.png" width="100px">
							</div>
							<div class="four-text">
								<a href="user.php"><h3>User</h3></a>

								<?php 
									$sql = "SELECT id from tblusers";
									$query = $dbh -> prepare($sql);
									$query->execute();
									$results=$query->fetchAll(PDO::FETCH_OBJ);
									$cnt=$query->rowCount();
								?>			
								<h4> <?php echo htmlentities($cnt);?> </h4>
				
								
							</div>
						</div>
					</div>
					<div class="col-md-3 four-grid">
						<div class="four-agileinfo" style="background-color: #c36839;">
							<div class="icon">
								<img src="images/booking.png" width="100px">
							</div>
							<div class="four-text">
							<a href="booking.php"><h3>Bookings</h3></a>
									<?php 
										$sql1 = "SELECT BookingId from tblbooking";
										$query1 = $dbh -> prepare($sql1);
										$query1->execute();
										$results1=$query1->fetchAll(PDO::FETCH_OBJ);
										$cnt1=$query1->rowCount();
									?>
								<h4><?php echo htmlentities($cnt1);?></h4>
							</div>				
						</div>
					</div>
					<div class="col-md-3 four-grid">
						<div class="four-w3ls" style="background-color: #86340a;">
							<div class="icon">
								<img src="images/enquiry.png" width="100px"height="100px">
							</div>
							<div class="four-text">
							<a href="Enquiries.php" ><h3>Enquiries</h3></a>
								<?php 
									$sql2 = "SELECT id from tblenquiry";
									$query2= $dbh -> prepare($sql2);
									$query2->execute();
									$results2=$query2->fetchAll(PDO::FETCH_OBJ);
									$cnt2=$query2->rowCount();
								?>
								<h4><?php echo htmlentities($cnt2);?></h4>
							</div>
						</div>
					</div>
					<div class="col-md-3 four-grid">
						<div class="four-wthree" style="background-color:#e8d0b3 ">
							<div class="icon">
								<img src="images/package.png" width="100px" height="100px">
							</div>
							<div class="four-text">
							<a href="Total_packages.php"><h3>Total packages</h3></a>
							<?php 
								$sql3 = "SELECT PackageId from tbltourpackages";
								$query3= $dbh -> prepare($sql3);
								$query3->execute();
								$results3=$query3->fetchAll(PDO::FETCH_OBJ);
								$cnt3=$query3->rowCount();
							?>
							<h4><?php echo htmlentities($cnt3);?></h4>	
							</div>
						</div>
					</div>
						<div class="clearfix"></div>
				</div>

		<div class="four-grids">
					<div class="col-md-3 four-grid">
						<div class="four-w3ls" style="background-color:#c6b497 ">
							<div class="icon">
								<img src="images/issue.png" width="100px">
							</div>
							<div class="four-text">
							<a href="Issues_Raised.php"><h3>Issues Raised</h3></a>
							<?php 
								$sql5 = "SELECT id from tblissues";
								$query5= $dbh -> prepare($sql5);
								$query5->execute();
								$results5=$query5->fetchAll(PDO::FETCH_OBJ);
								$cnt5=$query5->rowCount();
							?>
							<h4><?php echo htmlentities($cnt5);?></h4>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
<!--//four-grids here-->


<div class="inner-block">

</div>
<!--inner block end here-->
<!--copy rights start here-->
<?php include('footer_admin.php');?>
</div>
</div>
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->	   
<!-- morris JavaScript -->	
<script src="js/raphael-min.js"></script>
<script src="js/morris.js"></script>
<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
	   
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
	
	});
	</script>
</body>
</html>
<?php } ?>