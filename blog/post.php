<?php ob_start(); ?>
<!DOCTYPE html>
<html>
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
	 		<div class="about">
<?php
	$qry = "SELECT *
			FROM `dbl_post`
			WHERE `id`=$id";
	$post = $db->select($qry);
	if ($post) {
		while ($result = $post->fetch_assoc()) {

 ?>
			<h2><?php echo $result['title']; ?></h2>
			<h4><?php echo $fm->formatdate($result['date']); ?>  by  <a href="#"><?php echo $result['author']; ?></a></h4>
		<a href="image.php?imgid=<?php echo $result['id']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="post/image"></a>
			<p><?php echo $result['body']; ?></p>
<div class="comment clear">
	<h2>Comments</h2>
<?php
		$qry = "SELECT * 
				FROM `dbl_comment`
				WHERE `postid` = $id
				ORDER BY `id` DESC
				LIMIT 3";
	$resultcom  = $db->select($qry);
	if ($resultcom) {
		while ($row = $resultcom->fetch_assoc()) {
		?>
	<h4><?php echo $fm->formatdate($row['date']); ?> by <?php echo $row['name']; ?> # <?php echo $row['tag']; ?></h4>
	<p><?php echo $row['comment']; ?></p>
	<?php
		}
	}
?>
	<a href="comments.php?postid=<?php echo $id; ?>">Show all and leave a comment</a>
</div>
			<div class="relatedpost clear">
				<h2>Related Articles</h2>
<?php 
	$catid = $result['cat'];
	$catqry = "SELECT *
			   FROM `dbl_post`
			   WHERE `cat`= '$catid'
			   LIMIT 6";
	$relatedpost = $db->select($catqry);
	if ($relatedpost) {
		while ($catresult = $relatedpost->fetch_assoc()) {
			 

 ?>
				<a href="post.php?id=<?php echo $catresult['id']; ?>"><img src="admin/<?php echo $catresult['image']; ?>" alt="MyImage"></a>
<?php 
	}
 }
 else{
 	echo "<h3>Related Post Not Found</h3>";
 }

 ?>
			</div>
<?php
  }
}
	else{
		header("Location: 404.php");
	}

?>
		</div>
		</div>
		<?php include "inc/sidebar.php"; ?>
		<?php include "inc/footer.php"; ?>
		<?php include "inc/social.php"; ?>
</div>
	<script type="text/javascript" src="js/scrolltop.js"></script>
</body>
</html>
<?php ob_end_flush(); ?>