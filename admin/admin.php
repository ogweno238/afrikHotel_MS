<html>
<head>
<title>Afrik hotel Management System</title>
<link rel="icon" type="image/png" href="admin page/images/favicon.png" />
<link href="css/style.css" media="screen" rel="stylesheet" type="text/css" />
<!--sa poip up-->
<link href="admin page/admin/src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="admin/lib/jquery.js" type="text/javascript"></script>
<script src="admin/src/facebox.js" type="text/javascript"></script>
<script type="text/javascript">
  jQuery(document).ready(function($) {
    $('a[rel*=facebox]').facebox({
      loadingImage : 'admin/src/loading.gif',
      closeImage   : 'admin/src/closelabel.png'
    })
  })
</script>
</head>
<body>
	<div class="row-top">
		<div class="main">
			<div class="wrapper">
				<h1><a href="">Company Name<br><span style="font-family: arial; font-size: 15px;">online ordering system</span></a></h1>
				<nav>
				  <ul class="menu">
					<li><a class="active" href="admin page/index.php">Home</a></li>
					<li><a href="admin page/menu.php">Menu</a></li>
					<li><a href="admin page/functionhall.php">Function Hall</a></li>
					<li><a href="admin page/reservation.php">Reservation</a></li>
					<li><a href="admin page/about-us.php">About Us</a></li>
					<li><a href="admin page/contact.php">Contact Us</a></li>
					<li><a href="admin page/loginform.php">login</a></li>
				  </ul>
				</nav>
			</div>
		</div>
	</div>
	<div class="row-bot">
		<div class="row-bot-bg">
			<div class="maincon">
				<div class="slider-wrapper">
					<div class="slider">
						<div id="slidercon">
							<div id="title">
								Delicious Experience
							</div>
							<?php
								include('dbconnect.php');
								$result = $db->prepare("SELECT * FROM menu ORDER BY rand() LIMIT 4");
								$result->execute();
								for($i=0; $row = $result->fetch(); $i++){
							?>
							<div id="imgcon"><a rel="facebox" href="details.php?id=<?php echo $row['id']; ?>"><img src="menu/<?php echo $row['image']; ?>" width="150" height="150"></a></div>
							<?php
								}
							?>
							<div id="title">
								Oorder Status Inquiry
							</div>
							<form action="inquiry.php" method="post">
							<input type="text" name="res" placeholder="Enter Reservation ID" style="padding-left: 7px; float: left; margin-left: 10px; margin-right: 10px; width: 196px;"><input type="submit" value="Find" style="float: left; width: 100px; height: 28px;" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">&copy; Afrik hotel Management System</div>
</body>
</php>