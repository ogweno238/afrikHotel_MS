<?php
?>
<html><head>
<title>Afrik hotel Management System</title>
<link rel="icon" type="image/png" href="images/favicon.png" />
<link href="css/style.css" media="screen" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="tcal.css" />
  <link rel="stylesheet" href="css/fullcalendar.css">
  <link rel="stylesheet" href="css/fullcalendar.min.css">
  <!-- jQuery UI -->
  <link rel="stylesheet" href="css/jquery-ui.css"> 
   <!-- Date picker -->
  <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">
<script type="text/javascript" src="tcal.js"></script>
<script type="text/javascript">
function validateForm()
{
if (document.personal.condition.checked == false)
{
alert ('pls. agree the term and condition of this site');
return false;
}
else
{
return true;
}
}
</script>
<SCRIPT language=Javascript>
      <!--
      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }
      //-->
   </SCRIPT>
<!--sa poip up-->
<link href="admin/src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
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
				<h1><a href="">Afrik hotel <br><span style="font-family: arial; font-size: 15px;">management system</span></a></h1>
				<nav>
				  <ul class="menu">
					<li><a href="index.php">Home</a></li>
					<li><a href="menu.php">Menu</a></li>
					<li><a href="functionhall.php">Facilities</a></li>
					<li><a class="active" href="reservation.php">Reservation</a></li>
					<li><a href="about-us.php">About Us</a></li>
					<li><a href="contact.php">Contact Us</a></li>
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
							<div id="title"><br><br>
								Reservation Form
							</div>
							<form action="part2.php" method="get" name="personal" onSubmit="return validateForm()">
								<?php
								function createRandomPassword() {
									$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ023456789";
									srand((double)microtime()*1000000);
									$i = 0;
									$pass = '' ;
									while ($i <= 7) {

										$num = rand() % 33;

										$tmp = substr($chars, $num, 1);

										$pass = $pass . $tmp;

										$i++;

									}
									return $pass;
								}
								$finalcode='RS-'.createRandomPassword();
								?>
								<input type="hidden" name="resid" value="<?php echo $finalcode ?>" />
								<br><dl style="margin-left: 10px;">
									<dd>
										<span>First Name:</span>
										<input type="text" name="name" required maxlength="50" />
									</dd>
									<dd>
										<span>Last Name:</span>
										<input type="text" name="lname" required maxlength="50" />
									</dd>
									<dd>
										<span>Address:</span>
										<input type="text" name="address" required maxlength="100" />
									</dd>
									<dd>
										<span>Contact:</span>
										<input type="text" name="cnum" onKeyPress="return isNumberKey(event)" required maxlength="11" />
									</dd>
									<dd>
										<span>Date:</span>
										<input type="text" name="d" id="datepicker" required />
									</dd>
								 
									<dd>
										<span></span>
										<select hidden="" name="tre">
											<option value="food">food</option>
										</select>
									</dd>
									<dd>
										<span style="width: 17px;">&nbsp;</span>
										<input type="checkbox" name="condition" value="checkbox" style="width: 13px;" /> I agree the <a rel="facebox" href="terms_condition.php">terms and condition</a> of this site
									</dd>
									<dd>
										<span>&nbsp;</span>
										<input type="submit" value="Reserve" />
									</dd>
								</dl>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">&copy; 2023 Afrik hotel Management System</div>
    <?php include 'script.php';?>
    <script>
  $(function () {
  //Initialize Select2 Elements
    $(".select2").select2();
  })
$( "#datepicker" ).datepicker({ minDate: 0});


</script>
</body>
</php>