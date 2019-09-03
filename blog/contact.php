<!DOCTYPE html>
<html>
<head>
	<title>CoderKnight</title>
	<link rel="stylesheet" href="fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
</head>
<body>
<?php include "inc/header.php"; ?>
<?php
 	  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
 	  			$firstname  = $_POST['firstname'];
 	  			$lastname   = $_POST['lastname'];
 	  			$email 		= $_POST['email'];
 	  			$message 	= $_POST['message'];

 	  			 $firstname  = $fm->validation($firstname);
 	  			 $lastname   = $fm->validation($lastname);
 	  			 $email      = $fm->validation($email);
 	  			 $message 	 = $fm->validation($message);

 	  			 $firstname   = mysqli_real_escape_string($db->link,$firstname);
 	  			 $lastname    = mysqli_real_escape_string($db->link,$lastname);
 	  			 $email  	  = mysqli_real_escape_string($db->link,$email);
 	  			 $message     = mysqli_real_escape_string($db->link,$message);

 	  			 	$error = "";
 	  			 if (empty($firstname)) {
 	  			 	$error = "First name field is empty...!";
 	  			 }
 	  			 elseif (empty($lastname)) {
 	  			 	$error = "Last name field is empty...!";
 	  			 }
 	  			 elseif (empty($email)) {
 	  			 	$error = "Email field is empty ...!";
 	  			 }
 	  			 elseif (!filter_var($email,FILTER_VALIDATE_EMAIL)) {
 	  			 	$error = "Invalid E-mail address ...!";
 	  			 }
 	  			 elseif (empty($message)) {
 	  			 	$error = "Message field is empty...!";
 	  			 }
 	  			 else{
 	  			 	$qry = "INSERT INTO `dbl_contact`(`firstname`,`lastname`,`email`,`message`)
 	  			 			VALUES('$firstname','$lastname','$email','$message')";
 	  			 $result = $db->insert($qry);
 	  			 if($result){
 	  			 	$msg = "Message sent successfully";
 	  			 }
 	  			 else{
 	  			    $error  = "message not sent";
 	  			 }
 	  		}

 	  			
 	   	  }
	 
?>

	<div class="contentsection templete clear">
		<div class="maincontent clear">
	 		<div class="about">
			<h2>Contact us</h2>
			<?php 
					if (isset($error)) {
						echo "<span style='color: red;font-size:18px;font-weight: bold;'>$error</span>";
					}
					if (isset($msg)) {
						echo "<span style='color: green;font-size:18px;font-weight: bold;'>$msg</span>";
					}
			 ?>
			<form action="" method="POST">
			<table>
				<tr>
					<td>Your First Name : </td>
					<td><input type="text" name="firstname" placeholder="Enter Your First Name"></td>
				</tr>
		         <tr>
					<td>Your Last Name : </td>
					<td><input type="text" name="lastname" placeholder="Enter Your Last Name"></td>
				</tr>
				<tr>
					<td>Your E-mail address : </td>
					<td><input type="email" name="email" placeholder="Enter Your E-mail Address"></td>
				</tr>
				<tr>
					<td>Your Message : </td>
					<td>
					<textarea name="message"></textarea>
					</td>
				</tr>
				<tr>
				<td></td>
					<td><input type="submit" name="submit" value="Send"></td>
				</tr>
			</table>
			</form>
			</div>
			<div class="googlemap">
				 <div id="map"></div>
			</div>
		</div>
	<?php include "inc/sidebar.php"; ?>
	<?php include "inc/footer.php"; ?>
	<?php include "inc/social.php"; ?>
	<script type="text/javascript" src="js/scrolltop.js"></script>
	 <script src="http://maps.google.com/maps/api/js"></script>
  <script src="js/gmaps.js"></script>
	<script type="text/javascript">
    var map;
    $(document).ready(function(){
      var map = new GMaps({
        el: '#map',
        lat: 22.4600344,
        lng: 91.9676383
      });

      GMaps.geolocate({
        success: function(position){
          map.setCenter(position.coords.latitude, position.coords.longitude);
        },
        error: function(error){
          alert('Geolocation failed: '+error.message);
        },
        not_supported: function(){
          alert("Your browser does not support geolocation");
        },
        always: function(){
          alert("Done!");
        }
      });
    });
  </script>
</body>
</html>