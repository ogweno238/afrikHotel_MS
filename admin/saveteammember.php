<?php
session_start();
include('../connect.php');
$mm = $_POST['team'];
$ss = $_POST['member'];
// query
$sql = "INSERT INTO afrik_member (pt_name,prm_member) VALUES (:a,:b)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$mm,':b'=>$ss));
header("location: teammember.php");


?>