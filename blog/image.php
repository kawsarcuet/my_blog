<?php ob_start(); ?>
<?php include "lib/Database.php"; ?>
<?php include "helpers/format.php"; ?>
<?php 
	$db = new Database();
	$fm = new format();
?>
<!DOCTYPE html>
<html>
<head>
	<title>CoderKnight</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" href="fa/css/font-awesome.css">
</head>
<body>
	<?php //include "inc/header.php"; ?>
	<div class="contentsection templete clear">
		
			<h2></h2>
			<h4></h4>
			<div >
     		 <?php 
     		 		if (isset($_GET['imgid'])) {
     		 			$imgid = $_GET['imgid'];
     		 			$qry = "SELECT `image`
     		 					FROM `dbl_post`
     		 					WHERE `id` = $imgid";
     		 		$result  =  $db->select($qry);
     		 		if ($result) {
     		 			while ($row = $result->fetch_assoc()) {
     		 ?>

		       <a href="#"><img src="admin/<?php echo $row['image']; ?>" alt="post/image" height="100%" width="100%"  ></a>
		        <?php
     		 			}
     		 		}
     		 	}
     		  ?>
		  
		</div>
		 
		<?php// include "inc/footer.php"; ?>
		<?php //include "inc/social.php"; ?>
	<script type="text/javascript" src="js/scrolltop.js"></script>
</body>
</html>
<?php ob_end_flush(); ?>