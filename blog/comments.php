<?php ob_start(); ?>
<!DOCTYPE html>
<html>
<head>
	<title>CoderKnight</title>
	<link rel="stylesheet" href="fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	 
</head>
<body>
<?php include "inc/header.php"; ?>
<?php 
	  if (!isset($_GET['postid']) || $_GET['postid']==NULL) {
	  	header("Location: index.php");
	  }
	  else{
	  	$postid = $_GET['postid'];
	  }
?>
<?php
 	  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
 	  			$name 	     = $_POST['name'];
 	  			$tag         = $_POST['tag'];
 	  			$email 		 = $_POST['email'];
 	  			$comment 	 = $_POST['comment'];

 	  			 $name 		 = $fm->validation($name);
 	  			 $tag  		 = $fm->validation($tag);
 	  			 $email      = $fm->validation($email);
 	  			 $comment 	 = $fm->validation($comment);

 	  			 $name  	 = mysqli_real_escape_string($db->link,$name);
 	  			 $tag  		 = mysqli_real_escape_string($db->link,$tag);
 	  			 $email      = mysqli_real_escape_string($db->link,$email);
 	  			 $comment    = mysqli_real_escape_string($db->link,$comment);

 	  			 	$error = "";
 	  			 if (empty($name)) {
 	  			 	$error = "Name field is empty...!";
 	  			 }
 	  			 elseif (empty($email)) {
 	  			 	$error = "Email field is empty ...!";
 	  			 }
 	  			 elseif (!filter_var($email,FILTER_VALIDATE_EMAIL)) {
 	  			 	$error = "Invalid E-mail address ...!";
 	  			 }
 	  			 elseif (empty($comment)) {
 	  			 	$error = "Comment field is empty...!";
 	  			 }
 	  			 else{
 	  			 	$qry = "INSERT INTO `dbl_comment`(`postid`,`name`,`tag`,`email`,`comment`)
 	  			 			VALUES('$postid','$name','$tag','$email','$comment')";
 	  			 $result = $db->insert($qry);
 	  			 if($result){
 	  			 	$msg = " Successfully published";
 	  			 }
 	  			 else{
 	  			    $error  = "It is not successfull";
 	  			 }
 	  		}

 	  			
 	   	  }
	 
?>

	<div class="contentsection templete clear">
		<div class="maincontent clear">
	 		<div class="about">
	 		<div class="comment clear">
				<h2>Comments</h2>
<?php
		$qry = "SELECT * 
				FROM `dbl_comment`
				WHERE `postid` = $postid
				ORDER BY `id` DESC";
	$result  = $db->select($qry);
	if ($result) {
		while ($row = $result->fetch_assoc()) {
?>
	<h4><?php echo $fm->formatdate($row['date']); ?> by <?php echo $row['name']; ?> # <?php echo $row['tag']; ?></h4>
	<p><?php echo $row['comment']; ?></p>
	<?php
		}
	}
?>
</div>
			<h2>Leave a comment</h2>
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
					<td>Your Name : </td>
					<td><input type="text" name="name" placeholder="Enter Your First Name"></td>
				</tr>
		         <tr>
					<td>Tag  : </td>
					<td><input type="text" name="tag" placeholder="Enter Your Last Name"></td>
				</tr>
				<tr>
					<td>Your E-mail address : </td>
					<td><input type="email" name="email" placeholder="Enter Your E-mail Address"></td>
				</tr>
				<tr>
					<td>Your Comment : </td>
					<td>
					<textarea name="comment"></textarea>
					</td>
				</tr>
				<tr>
				<td></td>
					<td><input type="submit" name="submit" value="Comment"></td>
				</tr>
			</table>
			</form>
			</div>
		</div>
	<?php include "inc/sidebar.php"; ?>
	<?php include "inc/footer.php"; ?>
	<?php include "inc/social.php"; ?>
	<script type="text/javascript" src="js/scrolltop.js"></script>
</body>
</html>
<?php ob_end_flush(); ?>