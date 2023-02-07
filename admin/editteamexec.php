<?php
// configuration
include('../connect.php');

// new data
$id = $_POST['memids'];
$mm = $_POST['name'];
$ss = $_POST['leader'];
// query
$sql = "UPDATE afrik_team
        SET pt_name=?, pt_leader=?
		WHERE pt_id=?";
$q = $db->prepare($sql);
$q->execute(array($mm,$ss,$id));
header("location: team.php");

?>