<?php ob_start(); ?>
<?php 
      include "../lib/session.php"; 
            session::cheaksession();
 ?>
<?php include "../lib/Database.php"; ?>
<?php include "../helpers/format.php"; ?>
<?php 
    $db = new Database();
    $fm = new format();
?>
<?php
	  if (!isset($_GET['delid']) || $_GET['delid'] == NULL ) {
	  	header("Location: postlist.php");
	  }
	  else{
	  	  $delid = $_GET['delid'];
	  		$qry = "SELECT * 
	  				FROM `dbl_post`
	  				WHERE `id` = '$delid'";
	  	$result  = $db->select($qry);
	  	if ($result) {
	  		while ($row = $result->fetch_assoc()) {
	  			$delimg = $row['image'];
	  			if ($delimg) {
	  				unlink($delimg);
	  			}
	  		}
	  	}

	  	$sql = "DELETE FROM `dbl_post`
	  			WHERE `id` = '$delid'";
	  	$result = $db->delete($sql);
	  	if ($result) {
	  		$qry = "DELETE FROM `dbl_comment`
	  				WHERE `postid` = $delid";
	  	$delcom  = $db->delete($qry);
	  	if ($delcom) {
	  		echo "<script>alert('post deleted with it's comments  successfully');</script>";
	  	}
	  		echo "<script>alert('post deleted  successfully');</script>";
	  	}
	  	else{
	  		echo "<script>alert('post is not deleted  successfully');</script>";
	  	}
	  	header("Location: postlist.php");
	  }

?>
<?php ob_end_flush(); ?>