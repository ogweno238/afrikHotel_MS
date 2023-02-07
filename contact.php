<html>
<head>
<title>Afrik hotel Management System</title>
<link rel="icon" type="image/png" href="images/favicon.png" />
<link href="css/style.css" media="screen" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="row-top">
		<div class="main">
			<div class="wrapper">
				<h1><a href="">Afrik hotel <br><span style="font-family: arial; font-size: 15px;"> management system</span></a></h1>
				<nav>
				  <ul class="menu">
					<li><a href="index.php">Home</a></li>
					<li><a href="menu.php">Menu</a></li>
					<li><a href="functionhall.php">Facilities</a></li>
					<li><a href="reservation.php">Reservation</a></li>
					<li><a href="about-us.php">About Us</a></li>
					<li><a class="active" href="contact.php">Contact Us</a></li>
					<li><a href="loginform.php">login</a></li>
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
								Our Contacts
							</div>
                           
								<iframe width="308" height="135" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15955.256187103692!2d36.81477771626586!3d-1.2855713825950952!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f10d714b90b4d%3A0xf58d8f9b297c294c!2sCentral+Business+District%2C+Nairobi!5e0!3m2!1sen!2ske!4v1563191426392!5m2!1sen!2ske" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
							</div>
							<div style="color: rgb(255, 255, 255); margin-left: 10px; width: 309px;">
							Address : Afrik Hotel , Along Juja Road, Isili, Nairobi.<br>
							Tel. No. : +254-16-189343<br>
							Email :  afrikhotel.org<br>
							<form action="savecomment.php" method="post" style="margin-top: 10px; margin-bottom: 0px;">
								<span id="clabel">Subject</span>
								<select name="subject" style="width: 205px; padding:3px 0;">
								<option>Food</option>
								<option>Services</option>
								</select><br><div style="height:3px;"></div>
								<span id="clabel">Name</span><input type="text" method="post" name="name" style="width: 210px; padding:3px 0;"><br><div style="height:3px;"></div>
								<span id="clabel">Comment</span><textarea name="comment" style="width: 210px; padding:3px 0; height: 42px;"></textarea><br><div style="height:3px;"></div>
								<span id="clabel">&nbsp;</span><input type="submit" value="Submit" style="width: 210px;" />
							</form> 
							
							<?php
							session_start();
							?>
							<?php
							if( isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) >0 ) {
								foreach($_SESSION['ERRMSG_ARR'] as $msg) {
									echo '<span style="color:#ffffff; font-weight: bold;">',$msg,'</span>'; 
								}
								unset($_SESSION['ERRMSG_ARR']);
							}
							?>
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">&copy; 2023 Afrik hotel Management System</div>
</body>
</php>