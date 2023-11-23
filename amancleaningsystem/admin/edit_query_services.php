<?php
	require_once 'connect.php';
	if(ISSET($_POST['edit_services'])){
		$services_type = $_POST['services_type'];
		$price = $_POST['price'];
		$photo = addslashes(file_get_contents($_FILES['photo']['tmp_name']));
		$photo_name = addslashes($_FILES['photo']['name']);
		$photo_size = getimagesize($_FILES['photo']['tmp_name']);
		move_uploaded_file($_FILES['photo']['tmp_name'],"../photo/" . $_FILES['photo']['name']);
		$conn->query("UPDATE `services` SET `services_type` = '$services_type', `price` = '$price', `photo` = '$photo_name' WHERE `services_id` = '$_REQUEST[services_id]'") or die(mysqli_error());
		header("location:services.php");
	}
?>