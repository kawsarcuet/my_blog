<?php ob_start(); ?>
<?php include "../lib/Database.php"; ?>
<?php include "../helpers/format.php"; ?>
<?php 
    $db = new Database();
    $fm = new format();
?>
 <?php
      if (!isset($_GET['rejectid']) || $_GET['rejectid'] ==NULL ) {
             header("Location: postlist.php");
      }
      else{
   $rejectid = $_GET['rejectid'];
    
        $sql = "DELETE FROM `dbl_comment`
                WHERE `id` = '$rejectid'";
        $result = $db->delete($sql);
        if ($result) {
            echo "<script>alert('Data rejected  successfully');</script>";
            header("Location: postqueue.php");
        }
        else{
            echo "<script>alert('Data is not rejected  successfully');</script>";
            header("Location: postlist.php");
        }
      }
     
?>
<?php ob_end_flush(); ?>