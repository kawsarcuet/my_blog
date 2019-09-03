<?php ob_start(); ?>
<!DOCTYPE html>
<html>
<?php ob_start(); ?>
<head>
	<title>CoderKnight</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" href="fa/css/font-awesome.css">
</head>
<body>
		<?php include "inc/header.php"; ?>
		<?php
			if (!isset($_GET['id']) || $_GET['id']==null) {
				header("Location: 404.php");
			}
			else{
				$id = $_GET['id'];
			}
		?>
	<div class="contentsection templete clear">
		<div class="maincontent clear">
<?php
	$qry = "SELECT *
			FROM `dbl_post`
			WHERE `cat`= $id ";
	$post = $db->select($qry);
	if ($post) {
		while ($result = $post->fetch_assoc()) {

 ?>

		<div class="samepost clear">
		<a href="post.php?id=<?php echo $result['id']; ?>"><h2><?php echo $result['title']; ?></h2></a>
		<h4><?php echo $fm->formatdate($result['date']); ?>  by  <a href="#"><?php echo $result['author']; ?></a></h4>
		<a href="image.php?imgid=<?php echo $result['id']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="post/image"></a>
			<p><?php echo $fm->textshorten($result['body']); ?></p>
			<div class="readmore"><a href="post.php?id=<?php echo $result['id']; ?>">Read More</a></div>
		</div>
		 
		
<?php 
		} 
	}
else{
	echo "<h2>No posts are avaiable for this category</h2>";
}
	 ?>
	</div>
	 <?php include "inc/sidebar.php"; ?>
	 </div>
		
		<?php include "inc/footer.php"; ?>
	    <?php include "inc/social.php"; ?>

	</body>
</html>
<?php ob_end_flush(); ?>