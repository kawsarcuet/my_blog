<!DOCTYPE html>
<html>
<head>
	<title>CoderKnight</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" href="fa/css/font-awesome.css">
</head>
<body>
	<?php include "inc/header.php"; ?>

	<div class="contentsection templete clear">
		<div class="maincontent clear">
	 		<div class="about">
			<h2>Credit</h2>

	<?php 
			$qry = "SELECT * 
					FROM `credit`
					WHERE `id` = 1";
		$result  = $db->select($qry);
		if($result){
			while ($arr = $result->fetch_assoc()) {
	?>
			<a href="#"><img src="admin/<?php echo $arr['image']; ?>"></a>		
			<p><?php echo $arr['information']; ?></p>
	<?php
			}
		}
    ?>
		</div>
		</div>
		<?php  include "inc/sidebar.php"; ?>
		<?php include "inc/footer.php"; ?>
		<?php include "inc/social.php"; ?>
	<script type="text/javascript" src="js/scrolltop.js"></script>
</body>
</html>