<?php
	include('../connect.php');
	$id=$_GET['id'];
	$result = $db->prepare("SELECT * FROM 	afrik_team WHERE pt_id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<form action="editteamexec.php" method="POST">
<input type="hidden" name="memids" value="<?php echo $id; ?>" />
Team Name<br>
<input type="text" name="name" value="<?php echo $row['pt_name']; ?>" /><br>
Team Leader<br>
<input type="text" name="leader" value="<?php echo $row['pt_leader']; ?>" /><br>
<input type="submit" value="Save" />
</form>
<?php
	}
?>