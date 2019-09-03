<?php ob_start();  ?>
<?php include "../lib/Database.php"; ?>
<?php include "../helpers/format.php"; ?>
<?php 
    $db = new Database();
    $fm = new format();
?>
<?php  
		if (!isset($_GET['aid']) || $_GET['aid'] == NULL) {
			header("Location: viewpost.php");
		}
		else{
   $acceptedpost = $_GET['aid'];
			$qry = "SELECT *
					FROM `post_queue`
					WHERE `id` = $acceptedpost";
		$result  = $db->select($qry);
		if ($result) {
			while ($row  = $result->fetch_assoc()) {
				$cat	 = $row['cat'];
				$title   = $row['title'];
				$body    = $row['body'];
				$image   = $row['image'];
				$author  = $row['author'];
				$tags    = $row['tags'];
				$date    = $row['date'];
				$email   = $row['email'];
				$qry     = "INSERT INTO `dbl_post`(`cat`,`title`,`body`,`image`,`author`,`email`,`tags`,`date`)
							VALUES('$cat','$title','$body','$image','$author','$email','$tags','$date')";
			   $result   = $db->insert($qry);
			   if ($result) {
			   	   
			   	   $qry  = "DELETE FROM `post_queue`
			   	   			WHERE `id` = $acceptedpost";
			   	$result  = $db->delete($qry);
			   	if ($result) {
			   	//	echo "<script>alert("post is accepted successfully");</script>";
			   		header("Location: postqueue.php");
			   	}
			   }
			}
		}

		}
?>
<?php ob_end_flush(); ?>