<?php
	require_once 'admin/connect.php';
	if(ISSET($_POST['add_guest'])){
		$firstname = $_POST['firstname'];
		$middlename = $_POST['middlename'];
		$lastname = $_POST['lastname'];
		$address = $_POST['address'];
		$contactno = $_POST['contactno'];
		$checkin = $_POST['date'];
		$time = $_POST ['time'];

		$conn->query("INSERT INTO `guest` (firstname, middlename, lastname, address, contactno, time) VALUES('$firstname', '$middlename', '$lastname', '$address', '$contactno','$time')") or die(mysqli_error());
		$guest_id = $conn->insert_id;

		$query2 = $conn->query("SELECT * FROM `transaction` WHERE `checkin` = '$checkin' && `services_id` = '".$_REQUEST['services_id']."' && `status` = 'Pending'") or die(mysqli_error());
		$row = $query2->num_rows;

		if($checkin < date("Y-m-d", strtotime('+8 HOURS'))){	
				echo "<script>alert('Must be present date')</script>";
		}else{
			if($row > 0){
				echo "<div class = 'col-md-4'>
							<label style = 'color:#ff0000;'>Not Available Date</label><br />";
						$q_date = $conn->query("SELECT * FROM `transaction` WHERE `status` = 'Pending'") or die(mysqli_error());
						while($f_date = $q_date->fetch_assoc()){
							echo "<ul>
									<li>	
										<label class = 'alert-danger'>".date("M d, Y", strtotime($f_date['checkin']."+8HOURS"))."</label>	
									</li>
								</ul>";
						}
					"</div>";
			}else{	

				$services_id = $_REQUEST['services_id'];
				$conn->query("INSERT INTO `transaction`(guest_id, services_id, status, checkin) VALUES('$guest_id', '$services_id', 'Pending', '$checkin')") or die(mysqli_error());
				header("location:reply_reserve.php");
			}	
		}	
	}	
?>