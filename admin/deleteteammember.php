<?php
	include('../connect.php');
	$id=$_GET['id'];
	$result = $db->prepare("DELETE FROM afrik_member WHERE prm_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
?>