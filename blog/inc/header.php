<?php include "lib/Database.php"; ?>
<?php include "helpers/format.php"; ?>
<?php 
	$db = new Database();
	$fm = new format();
?>
<div class="headersection templete clear">
		<div class="logo"><a href="index.php">
			<img src="images/Knight_logo.png" alt="logo"></a>
			 <?php 
                        $qry = "SELECT * 
                                FROM `title_slogan`";
                        $result = $db->select($qry);
                        if($result){
                            while ($row = $result->fetch_assoc()) {

             ?>
			<h2><?php  echo $row['title']; ?></h2>
			<p><?php  echo $row['slogan']; ?></p>
			 <?php  } } ?>
		</div>

	<div class="navsection templete clear">
		<ul>
			<li><a href="index.php">Home</a></li>
			<li><a href="about.php">Credit</a></li>
			<li><a href="contact.php">Contact</a></li>
			<li><a href="publicpost.php">Leave a post</a></li>
		</ul>
	</div>
	</div>