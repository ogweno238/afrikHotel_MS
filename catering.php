<?php
$resid=$_POST['resid'];
$resdate=date("m/d/Y");
$d=$_POST['d'];
$tre=$_POST['tre'];
$name=$_POST['name'];
$lname=$_POST['lname'];
$cnum=$_POST['cnum'];
$address=$_POST['address'];
$nopax=$_POST['nopax'];
$stat='Pending';
$mcat=$_POST['mcat'];
$time=$_POST['time'].''.$_POST['dws'];


function createRandomPassword() {
	$chars = "023456789";
	srand((double)microtime()*1000000);
	$i = 0;
	$pass = '' ;
	while ($i <= 3) {

		$num = rand() % 33;

		$tmp = substr($chars, $num, 1);

		$pass = $pass . $tmp;

		$i++;

	}
	return $pass;
}
$tc=createRandomPassword();
if ((($mcat=='breakfast')AND($nopax > 0)) OR (($mcat=='lunch_and_dinner')AND($nopax > 0)) OR (($mcat=='specialty') AND ($nopax > 0))) {
	include('connect.php');
	$sql = "INSERT INTO reservation (res_id,firstname,address,type_res,date,pax,contact,
	type_catering,lastname,status,time,resdate) VALUES (:a,:b,:c,:f,:g,:h,:i,:k,:l,:m,:n,:z)";
	$q = $db->prepare($sql);
	$q->execute(array(':a'=>$resid,':b'=>$name,':c'=>$address,':f'=>$tre,':g'=>$d,':h'=>$nopax,
	':i'=>$cnum,':k'=>$mcat,':l'=>$lname,':m'=>$stat,':n'=>$time,':z'=>$resdate));
	
	
	$sqls = "INSERT INTO type_of_reservation (tr_description) VALUES (:b)";
	$q = $db->prepare($sqls);
	$q->execute(array(':b'=>$tre));
	
	header("location: portal.php?res=$resid&mcat=$mcat&additional=$addd");
}
echo '<div style="text-align: center; margin-top: 50px; width: 100%;">';

?>