<style>
html {
background-image:url(images/print.png);
}
font-size: 18px;
</style>
<link href="css/style.css" media="screen" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function validateForm()
{
var a=document.forms["fhall"]["nopax"].value;
if (a > 80)
  {
  alert("Maximum Number of pax allowed in Function hall is 80");
  return false;
  }
}
function validateFormas()
{
var d=document.forms["catering"]["mcat"].value;
var c=document.forms["catering"]["nopax"].value;
if (d=='merienda' && c<1)
  {
  alert("Minimum Number of pax allowed in merienda is 100");
  return false;
  }
if (d=='lunch_and_dinner' && c<1)
  {
  alert("Minimum Number of pax allowed in Lunch and Dinner is 50");
  return false;
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
 <div class="row-top" style="margin-bottom: 20px;">
	<div class="main">
		<div class="wrapper">
			<h1><a href="">Afrik Hotel <br><span style="font-family: arial; font-size: 15px;"> management system</span></a></h1>
		</div>
	</div>
</div>
<div style="margin: 60px auto 0px;width:300px;">
<?php
$d=$_GET['d'];
$d2=date('y:m:d');
$datetime1 = new DateTime($d);

$datetime2 = new DateTime($d2);

$difference = $datetime1->diff($datetime2);
$ewewe=$difference->days;
if($ewewe<0){
echo '<div style="text-align:center;">You must reserve atleast 2weeks before the events, Thank you<br><a href="reservation.php">Back</a></div>';
}
if($ewewe>=0){
	$wapak=$_GET['tre'];
	if ($wapak=='food') {
	?>
	<form action="catering.php" method="post" name="catering" onsubmit="return validateFormas()">
	<input type="hidden" name="resid" value="<?php echo $_GET['resid']; ?>" />
	<input type="hidden" name="d" value="<?php echo $_GET['d']; ?>" />
	<input type="hidden" name="tre" value="<?php echo $_GET['tre']; ?>" />
	<input type="hidden" name="name" value="<?php echo $_GET['name']; ?>" />
	<input type="hidden" name="lname" value="<?php echo $_GET['lname']; ?>" />
	<input type="hidden" name="cnum" value="<?php echo $_GET['cnum']; ?>" />
	<input type="hidden" name="address" value="<?php echo $_GET['address']; ?>" />
	Time: <br /><input type="text" name="time" required="required" maxlength="5" /> 
    <select name="dws"><option>AM</option><option>PM</option></select> 
	<br>
	No. of Pax: <br><input type="text" name="nopax" style="margin-bottom: 13px; width: 298px;" onKeyPress="return isNumberKey(event)" required="required" maxlength="5" /><br>
	Type of Food: <brd>
	<select name="mcat" style="margin-bottom: 13px; width: 298px;">
	<option>&nbsp;</option>
	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM maincategory");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option><?php echo $row['name']; ?></option>
	<?php
	}
	?>
	</select><br><br>
	<input type="submit" value="Reserve" style="margin-bottom: 13px; width: 298px;" />
	</form>
	<?php
	}
	if ($wapak=='functionroom') {
	?>
	Note: Max number of Pax is 80 and minimum of 30<br>
	<form action="catering.php" method="post" name="fhall" onsubmit="return validateForm()">
	<input type="hidden" name="resid" value="<?php echo $_GET['resid']; ?>" />
	<input type="hidden" name="d" value="<?php echo $_GET['d']; ?>" />
	<input type="hidden" name="motif" value="<?php echo $_GET['motif']; ?>" />
	<input type="hidden" name="toc" value="<?php echo $_GET['toc']; ?>" />
	<input type="hidden" name="tre" value="<?php echo $_GET['tre']; ?>" />
	<input type="hidden" name="name" value="<?php echo $_GET['name']; ?>" />
	<input type="hidden" name="lname" value="<?php echo $_GET['lname']; ?>" />
	<input type="hidden" name="cnum" value="<?php echo $_GET['cnum']; ?>" />
	<input type="hidden" name="address" value="<?php echo $_GET['address']; ?>" />
	Time: <br /><input type="text" name="time" required="required" maxlength="5" /> <select name="dws"><option>AM</option><option>PM</option></select> 
	Location: <br>
	<select name="loc">
	<option value=".00">Isili, Juja Road</option>
	</select>
	<br>
	Venue: <br><input type="text" name="vn" value="Function Hall" style="margin-bottom: 13px; width: 298px;" required="required" /><br>
	No. of Pax: <br><input type="text" name="nopax" value="80" style="margin-bottom: 13px; width: 298px;" onKeyPress="return isNumberKey(event)" maxlength="5" required="required" /><br>
	Type of Catering: <br>
	<select name="mcat" style="margin-bottom: 13px; width: 298px;">
	<option>&nbsp;</option>
	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM maincategory");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option><?php echo $row['name']; ?></option>
	<?php
	}
	?>
	</select><br><br>
	<input type="submit" value="Reserve" style="margin-bottom: 13px; width: 298px;" />
	</form>
	<?php
	}
}
?>
</div>