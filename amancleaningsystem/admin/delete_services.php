<?php
	require_once 'connect.php';
	mysqli_query($conn, "DELETE FROM `services` WHERE `services_id` = '".$_REQUEST['services_id']."'") or die(mysql_error());
	header("location:services.php");
?>