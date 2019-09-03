<?php ob_start(); ?>

<!DOCTYPE html>
<html>
<head>
	<title>CoderKnight</title>
	<link rel="stylesheet" href="fa/css/font-awesome.css">
	<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="style.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:10,
		animSpeed:500,
		pauseTime:5000,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false,
		directionNavHide:false, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
</script>
	
</head>
<body>
<?php include "inc/header.php"; ?>
<?php include "inc/slider.php"; ?>



<div class="contentsection templete clear">
		<div class="maincontent clear">
<!...pagination...>
<?php
	$per_page = 3;
	if (isset($_GET["page"])) {
		$page = $_GET["page"];
	}
	else{
		$page = 1;
	}
	$start_from = ($page-1)* $per_page;
?>
<!...pagination...>
<?php
	$qry = "SELECT *
			FROM `dbl_post`
		    ORDER BY id DESC
			LIMIT $start_from,$per_page";
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
		
		
	<?php } ?>
<!...pagination...>
	<?php
	 $qury = "SELECT *
			  FROM `dbl_post` ";
	$result = $db->select($qury);
	$total_rows = mysqli_num_rows($result);
	$total_pages= ceil($total_rows/$per_page);
	 
	
	 echo "<span class='pagination'><a href='index.php?page=1'>".'First Page'."</a>";
	 	for ($i=1; $i<=$total_pages ; $i++) { 
	 			echo "<a href='index.php?page=$i'>".$i."</a>";
	 	 	}
	 echo "<a href='index.php?page=$total_pages'>".'Last Page'."</a></span>";
	  ?>
<!...pagination...>
	<?php 
	}
	else{
		header("Location: 404.php");
	}

	 ?>
	 </div>
	 <?php include "inc/sidebar.php"; ?>
	 </div>
		
		<?php include "inc/footer.php"; ?>
	    <?php include "inc/social.php"; ?>

<script type="text/javascript" src="js/scrolltop.js"></script>


</body>
</html>
<?php ob_end_flush(); ?>